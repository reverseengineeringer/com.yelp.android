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
import com.yelp.android.util.l;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;

public class a
  extends AsyncTask<Uri, Void, c>
{
  private WeakReference<Context> a;
  private WeakReference<b> b;
  
  public a(Context paramContext, b paramb)
  {
    a = new WeakReference(paramContext);
    b = new WeakReference(paramb);
  }
  
  protected c a(Uri... paramVarArgs)
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
      paramVarArgs = l.c();
      if (paramVarArgs == null) {
        return null;
      }
      if (!l.a((InputStream)localObject2, new FileOutputStream(paramVarArgs))) {
        return null;
      }
      localObject2 = ImageInputHelper.a(paramVarArgs);
      localObject1 = MediaStoreUtil.a(localUri, (ContentResolver)localObject1);
      if (localObject1 == null) {
        return null;
      }
      paramVarArgs = c.a(paramVarArgs, (Bitmap)localObject2, (MediaStoreUtil.MediaType)localObject1);
      return paramVarArgs;
    }
    catch (FileNotFoundException paramVarArgs)
    {
      YelpLog.e(this, "Could not find input file", paramVarArgs);
    }
    return null;
  }
  
  protected void a(c paramc)
  {
    b localb = (b)b.get();
    if (localb == null) {
      return;
    }
    localb.c();
    if ((paramc != null) && (a != null) && (a.exists()))
    {
      localb.a(paramc);
      return;
    }
    localb.b();
  }
  
  protected void onPreExecute()
  {
    b localb = (b)b.get();
    if (localb != null) {
      localb.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.media.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */