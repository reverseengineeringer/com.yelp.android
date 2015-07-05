package com.yelp.android.ui.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.ui.activities.FacebookConnectManager;
import com.yelp.android.ui.activities.FacebookConnectManager.FbPermissionSet;
import com.yelp.android.ui.activities.camera.TakePhoto;
import com.yelp.android.ui.activities.fg;
import com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.dialogs.SimpleListDialogFragment;
import com.yelp.android.util.f;
import com.yelp.android.util.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

@SuppressLint({"ParcelCreator"})
public class ImageInputHelper
{
  private Pair<File, Bitmap> a;
  private File b;
  private ImageInputHelper.ImageSource c;
  private final n d;
  private final int e;
  private final Random f;
  private List<Pair<Integer, PendingIntent>> g;
  
  public ImageInputHelper(n paramn, int paramInt)
  {
    e = paramInt;
    d = paramn;
    f = new Random();
    g = Collections.emptyList();
  }
  
  public static Bitmap a(Bitmap paramBitmap, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    float f1 = paramFloat2 / paramFloat1;
    if (paramBitmap.getHeight() < f1 * paramBitmap.getWidth()) {}
    for (Bitmap localBitmap = Bitmap.createScaledBitmap(paramBitmap, (int)((paramBitmap.getWidth() * paramFloat2 + 1.0F) / paramBitmap.getHeight()), (int)paramFloat2, paramBoolean);; localBitmap = Bitmap.createScaledBitmap(paramBitmap, (int)paramFloat1, (int)((paramBitmap.getHeight() * paramFloat1 + 1.0F) / paramBitmap.getWidth()), paramBoolean))
    {
      if (paramBitmap != localBitmap) {
        paramBitmap.recycle();
      }
      if ((localBitmap.getWidth() != paramFloat1) || (localBitmap.getHeight() != paramFloat2)) {
        break;
      }
      return localBitmap;
    }
    int i = (int)(localBitmap.getWidth() - paramFloat1);
    int j = (int)(localBitmap.getHeight() - paramFloat2);
    paramBitmap = Bitmap.createBitmap(localBitmap, i / 2, j / 2, (int)paramFloat1, (int)paramFloat2);
    if (paramBitmap != localBitmap) {
      localBitmap.recycle();
    }
    return paramBitmap;
  }
  
  public static Bitmap a(File paramFile)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    inPreferQualityOverSpeed = false;
    BitmapFactory.decodeFile(paramFile.getAbsolutePath(), localOptions);
    int i = Math.max(outHeight, outWidth);
    for (inSampleSize = 1; i / inSampleSize > 400; inSampleSize *= 2) {}
    inJustDecodeBounds = false;
    while (outWidth / inSampleSize * (outHeight / inSampleSize) * 4 > 409600) {
      inSampleSize *= 2;
    }
    Object localObject = null;
    Bitmap localBitmap;
    do
    {
      if (localObject != null) {
        ((Bitmap)localObject).recycle();
      }
      localBitmap = BitmapFactory.decodeFile(paramFile.getAbsolutePath(), localOptions);
      inSampleSize *= 2;
      localObject = localBitmap;
    } while (localBitmap.getRowBytes() * localBitmap.getHeight() > 409600);
    try
    {
      localObject = a(paramFile, localBitmap);
      return (Bitmap)localObject;
    }
    catch (IOException localIOException)
    {
      AppData.a("ImageInputHelper", "Exifdata not present on image, not going to rotate, file: %s", new Object[] { paramFile });
    }
    return null;
  }
  
  public static Bitmap a(File paramFile, Bitmap paramBitmap)
  {
    int i;
    switch (new ExifInterface(paramFile.getAbsolutePath()).getAttributeInt("Orientation", 1))
    {
    case 4: 
    case 5: 
    case 7: 
    default: 
      return paramBitmap;
    case 8: 
      i = 90;
      i += 90;
    }
    for (;;)
    {
      i += 90;
      if (paramBitmap.isMutable())
      {
        new Canvas(paramBitmap).rotate(i);
        return paramBitmap;
      }
      paramFile = new Matrix();
      paramFile.postRotate(i);
      paramFile = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), paramFile, true);
      paramBitmap.recycle();
      return paramFile;
      i = 0;
      break;
      i = 0;
    }
  }
  
  private static Bitmap a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject = new BitmapFactory.Options();
    inScaled = true;
    inDensity = paramInt1;
    inTargetDensity = paramInt2;
    localObject = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
    l.c(paramString);
    if (localObject == null) {
      throw new IOException("Unable to create resized bitmap.");
    }
    return (Bitmap)localObject;
  }
  
  private static String a(Bitmap paramBitmap)
  {
    File localFile = l.c();
    if (localFile == null)
    {
      paramBitmap.recycle();
      throw new IOException("Unable to file container for resized bitmap.");
    }
    a(paramBitmap, localFile);
    return localFile.getAbsolutePath();
  }
  
  public static String a(String paramString, int paramInt)
  {
    int i = 1;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    String str;
    if (outHeight > outWidth)
    {
      if ((i == 0) || (outHeight <= paramInt)) {
        break label71;
      }
      str = a(a(paramString, outHeight, paramInt));
    }
    label71:
    do
    {
      do
      {
        return str;
        i = 0;
        break;
        str = paramString;
      } while (i != 0);
      str = paramString;
    } while (outWidth <= paramInt);
    return a(a(paramString, outWidth, paramInt));
  }
  
  private static void a(Bitmap paramBitmap, File paramFile)
  {
    try
    {
      paramFile = new FileOutputStream(paramFile);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramFile);
      paramFile.flush();
      paramFile.close();
      return;
    }
    finally
    {
      paramBitmap.recycle();
    }
  }
  
  public AsyncTask<Context, Void, Bitmap> a(Intent paramIntent, al paramal)
  {
    paramal = new aj(this, paramal);
    switch (ai.a[c.ordinal()])
    {
    default: 
      return null;
    case 2: 
      File localFile = TakePhoto.a(paramIntent);
      if (localFile != null) {
        return new ap(localFile, paramIntent, paramal);
      }
    case 3: 
      return new ap(b, paramIntent, paramal);
    }
    return new aq(b, paramIntent, paramal);
  }
  
  public ListDialogFragment a(int paramInt, EnumSet<ImageInputHelper.ImageSource> paramEnumSet, Activity paramActivity)
  {
    HashMap localHashMap = new HashMap();
    paramEnumSet = paramEnumSet.iterator();
    while (paramEnumSet.hasNext()) {
      localHashMap.put((ImageInputHelper.ImageSource)paramEnumSet.next(), null);
    }
    return a(paramInt, localHashMap, paramActivity);
  }
  
  public ListDialogFragment a(int paramInt, HashMap<ImageInputHelper.ImageSource, EventIri> paramHashMap, Activity paramActivity)
  {
    if (!d.a()) {
      paramHashMap.remove(ImageInputHelper.ImageSource.CAMERA);
    }
    AppData localAppData = AppData.b();
    ArrayList localArrayList = new ArrayList(paramHashMap.size() + g.size());
    paramHashMap = paramHashMap.entrySet().iterator();
    Object localObject;
    while (paramHashMap.hasNext())
    {
      localObject = (Map.Entry)paramHashMap.next();
      ImageInputHelper.SourceIriPair localSourceIriPair = new ImageInputHelper.SourceIriPair((ImageInputHelper.ImageSource)((Map.Entry)localObject).getKey(), (EventIri)((Map.Entry)localObject).getValue());
      localArrayList.add(new Pair(localAppData.getText(getKeyres).toString(), localSourceIriPair));
    }
    paramHashMap = g.iterator();
    while (paramHashMap.hasNext())
    {
      localObject = (Pair)paramHashMap.next();
      localArrayList.add(new Pair(localAppData.getText(((Integer)first).intValue()).toString(), second));
    }
    new SimpleListDialogFragment();
    paramHashMap = SimpleListDialogFragment.b(paramInt, localArrayList);
    paramHashMap.a(new an(this, paramActivity));
    return paramHashMap;
  }
  
  public void a()
  {
    if (a != null)
    {
      if (a.first != null) {
        ((File)a.first).delete();
      }
      if (a.second != null) {
        ((Bitmap)a.second).recycle();
      }
      a = null;
    }
    g = Collections.emptyList();
    b = null;
    c = null;
  }
  
  public void a(int paramInt, PendingIntent paramPendingIntent)
  {
    if (g.isEmpty()) {
      g = new ArrayList();
    }
    g.add(Pair.create(Integer.valueOf(paramInt), paramPendingIntent));
  }
  
  @TargetApi(9)
  public void a(Activity paramActivity)
  {
    int i;
    int j;
    Object localObject;
    if (Build.VERSION.SDK_INT >= 9)
    {
      i = 0;
      j = -1;
      if (i < Camera.getNumberOfCameras())
      {
        localObject = new Camera.CameraInfo();
        Camera.getCameraInfo(i, (Camera.CameraInfo)localObject);
        if (facing != 1) {}
      }
    }
    for (;;)
    {
      if (i != -1) {
        localObject = TakePhoto.a(paramActivity, i);
      }
      for (;;)
      {
        if (localObject == null) {
          break label112;
        }
        paramActivity.startActivityForResult((Intent)localObject, e);
        return;
        if (facing == 0) {
          j = i;
        }
        i += 1;
        break;
        if (j != -1) {
          localObject = TakePhoto.a(paramActivity, j);
        } else {
          localObject = TakePhoto.a(paramActivity);
        }
      }
      label112:
      cr.a(2131165776, 0);
      return;
      i = -1;
      continue;
      j = -1;
      i = -1;
    }
  }
  
  public void a(Activity paramActivity, ImageInputHelper.ImageSource paramImageSource)
  {
    if (b == null) {
      b = new File(f.a(paramActivity), String.format("%s-%s.jpg", new Object[] { Long.toHexString(SystemClock.elapsedRealtime()), Long.toHexString(f.nextLong()) }));
    }
    try
    {
      b.createNewFile();
      Object localObject;
      switch (ai.a[paramImageSource.ordinal()])
      {
      default: 
        throw new IllegalArgumentException(String.format("%s is not a valid ImageSource", new Object[] { paramImageSource }));
      case 1: 
        localObject = new FacebookConnectManager(paramActivity, 2131166497, (fg)paramActivity, FacebookConnectManager.FbPermissionSet.DEFAULT_READ, 11);
        ((ak)paramActivity).d((FacebookConnectManager)localObject);
        ((FacebookConnectManager)localObject).e();
      }
      for (;;)
      {
        c = paramImageSource;
        return;
        if (n.a(9))
        {
          a(paramActivity);
        }
        else
        {
          localObject = Uri.fromFile(b);
          Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
          localIntent.putExtra("output", (Parcelable)localObject);
          paramActivity.startActivityForResult(localIntent, e);
          continue;
          paramActivity.startActivityForResult(ActivityChooseFromGallery.a(paramActivity, MediaStoreUtil.MediaType.PHOTO, false, false, null), e);
        }
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putSerializable("key.source", c);
    if (b != null) {
      paramBundle.putString("key.path", b.getAbsolutePath());
    }
    if (a != null)
    {
      paramBundle.putString("key.good.file", ((File)a.first).getAbsolutePath());
      paramBundle.putParcelable("key.good.bitmap", (Parcelable)a.second);
    }
  }
  
  public an b(Activity paramActivity)
  {
    return new an(this, paramActivity);
  }
  
  public void b(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      c = ((ImageInputHelper.ImageSource)paramBundle.getSerializable("key.source"));
      String str = paramBundle.getString("key.path");
      if (!TextUtils.isEmpty(str)) {
        b = new File(str);
      }
      str = paramBundle.getString("key.good.file");
      paramBundle = (Bitmap)paramBundle.getParcelable("key.good.bitmap");
      if (!TextUtils.isEmpty(str)) {
        a = Pair.create(new File(str), paramBundle);
      }
    }
  }
  
  public boolean b()
  {
    return a != null;
  }
  
  public Bitmap c()
  {
    return (Bitmap)a.second;
  }
  
  public ImageInputHelper.ImageSource d()
  {
    return c;
  }
  
  public File e()
  {
    if (a != null) {
      return (File)a.first;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ImageInputHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */