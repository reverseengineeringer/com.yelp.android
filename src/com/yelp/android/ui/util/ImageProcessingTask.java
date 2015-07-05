package com.yelp.android.ui.util;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.util.YelpLog;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;

abstract class ImageProcessingTask
  extends AsyncTask<Context, Void, Bitmap>
{
  protected final Intent a;
  protected final al b;
  protected final File c;
  private Exception d;
  
  public ImageProcessingTask(File paramFile, Intent paramIntent, al paramal)
  {
    a = paramIntent;
    b = paramal;
    c = paramFile;
  }
  
  private Bitmap a(String paramString, int paramInt)
  {
    Object localObject1 = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject1);
    Object localObject2 = new BitmapFactory.Options();
    inSampleSize = b(outWidth, outHeight, paramInt);
    localObject1 = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject2);
    if (localObject1 == null) {
      throw new ImageProcessingTask.ImageProcessingException(this, String.format("Could not resample image from path: %s", new Object[] { String.valueOf(paramString) }), a());
    }
    localObject2 = new Matrix();
    if ((((Bitmap)localObject1).getWidth() > paramInt) || (((Bitmap)localObject1).getHeight() > paramInt))
    {
      BitmapFactory.Options localOptions = a(((Bitmap)localObject1).getWidth(), ((Bitmap)localObject1).getHeight(), paramInt);
      ((Matrix)localObject2).postScale(outWidth / ((Bitmap)localObject1).getWidth(), outHeight / ((Bitmap)localObject1).getHeight());
    }
    paramInt = co.a(paramString);
    if (paramInt != 0) {
      ((Matrix)localObject2).postRotate(paramInt);
    }
    return Bitmap.createBitmap((Bitmap)localObject1, 0, 0, ((Bitmap)localObject1).getWidth(), ((Bitmap)localObject1).getHeight(), (Matrix)localObject2, true);
  }
  
  private static BitmapFactory.Options a(int paramInt1, int paramInt2, int paramInt3)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    if (paramInt2 > paramInt1) {}
    for (float f = paramInt3 / paramInt2;; f = paramInt3 / paramInt1)
    {
      outWidth = ((int)Math.ceil(paramInt1 * f));
      outHeight = ((int)Math.ceil(f * paramInt2));
      return localOptions;
    }
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    return Math.max(1, Math.max(paramInt1, paramInt2) / paramInt3);
  }
  
  public Bitmap a(Context paramContext)
  {
    paramContext = null;
    String str = c.getAbsolutePath();
    Object localObject = new ExifInterface(str).getThumbnail();
    if (localObject != null) {
      paramContext = BitmapFactory.decodeByteArray((byte[])localObject, 0, localObject.length);
    }
    localObject = paramContext;
    if (paramContext == null) {
      localObject = a(str, 100);
    }
    return (Bitmap)localObject;
  }
  
  protected Bitmap a(Context... paramVarArgs)
  {
    paramVarArgs = paramVarArgs[0];
    String str;
    try
    {
      str = b(paramVarArgs);
      if (TextUtils.isEmpty(str)) {
        throw new ImageProcessingTask.ImageProcessingException(this, "Could not retrieve ImageLocation", a());
      }
    }
    catch (IOException paramVarArgs)
    {
      YelpLog.e(this, "Error loading photo", paramVarArgs);
      d = paramVarArgs;
      return null;
    }
    a(str);
    paramVarArgs = a(paramVarArgs);
    return paramVarArgs;
  }
  
  public abstract ImageInputHelper.ImageSource a();
  
  protected void a(Bitmap paramBitmap)
  {
    if (d != null)
    {
      b.a(c);
      return;
    }
    b.a(paramBitmap, c, a());
  }
  
  protected void a(String paramString)
  {
    paramString = a(paramString, 1000);
    BaseYelpApplication.a("ImageInputHelper", "Final image has dims: " + paramString.getWidth() + ", " + paramString.getHeight(), new Object[0]);
    b(paramString);
  }
  
  public abstract String b(Context paramContext);
  
  protected void b(Bitmap paramBitmap)
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(c);
      if (paramBitmap.compress(Bitmap.CompressFormat.JPEG, 80, localFileOutputStream))
      {
        localFileOutputStream.flush();
        localFileOutputStream.getFD().sync();
        localFileOutputStream.close();
      }
      return;
    }
    catch (IOException paramBitmap)
    {
      c.delete();
      Log.e("ImageInputHelper", "Error saving gallery image to temp location: [" + c + "].", paramBitmap);
      throw paramBitmap;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ImageProcessingTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */