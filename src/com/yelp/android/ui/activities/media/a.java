package com.yelp.android.ui.activities.media;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.MediaStoreUtil;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.e;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;

public class a
  extends AsyncTask<Uri, Void, b>
{
  private WeakReference<Context> a;
  private WeakReference<a> b;
  
  public a(Context paramContext, a parama)
  {
    a = new WeakReference(paramContext);
    b = new WeakReference(parama);
  }
  
  protected b a(Uri... paramVarArgs)
  {
    Object localObject1 = (Context)a.get();
    if (localObject1 == null) {
      return null;
    }
    localObject1 = ((Context)localObject1).getContentResolver();
    Uri localUri = paramVarArgs[0];
    try
    {
      Object localObject2 = ((ContentResolver)localObject1).openInputStream(localUri);
      paramVarArgs = e.c();
      if (paramVarArgs == null) {
        return null;
      }
      if (!e.a((InputStream)localObject2, new FileOutputStream(paramVarArgs))) {
        return null;
      }
      localObject2 = ImageInputHelper.a(paramVarArgs);
      localObject1 = MediaStoreUtil.a(localUri, (ContentResolver)localObject1);
      if (localObject1 == null) {
        return null;
      }
      paramVarArgs = b.a(paramVarArgs, (Bitmap)localObject2, (MediaStoreUtil.MediaType)localObject1);
      return paramVarArgs;
    }
    catch (FileNotFoundException paramVarArgs)
    {
      YelpLog.e(this, "Could not find input file", paramVarArgs);
    }
    return null;
  }
  
  protected void a(b paramb)
  {
    a locala = (a)b.get();
    if (locala == null) {
      return;
    }
    locala.c();
    if ((paramb != null) && (a != null) && (a.exists()))
    {
      locala.a(paramb);
      return;
    }
    locala.b();
  }
  
  protected void onPreExecute()
  {
    a locala = (a)b.get();
    if (locala != null) {
      locala.a();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(a.b paramb);
    
    public abstract void b();
    
    public abstract void c();
  }
  
  public static class b
  {
    public File a;
    public Bitmap b;
    public MediaStoreUtil.MediaType c;
    
    public static b a(File paramFile, Bitmap paramBitmap, MediaStoreUtil.MediaType paramMediaType)
    {
      b localb = new b();
      a = paramFile;
      b = paramBitmap;
      c = paramMediaType;
      return localb;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.media.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */