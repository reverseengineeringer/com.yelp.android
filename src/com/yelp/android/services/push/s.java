package com.yelp.android.services.push;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.yelp.android.util.YelpLog;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;

class s
  extends AsyncTask<String, Void, Bitmap>
{
  private final WeakReference<r> a;
  
  public s(r paramr)
  {
    a = new WeakReference(paramr);
  }
  
  protected Bitmap a(String... paramVarArgs)
  {
    paramVarArgs = (r)a.get();
    if (paramVarArgs == null) {
      return null;
    }
    String str = paramVarArgs.d();
    if ((TextUtils.isEmpty(paramVarArgs.b())) || (TextUtils.isEmpty(str))) {
      return null;
    }
    try
    {
      paramVarArgs = BitmapFactory.decodeStream(new URL(str).openConnection().getInputStream());
      return paramVarArgs;
    }
    catch (IOException paramVarArgs)
    {
      YelpLog.e(this, "PhotoLikePushNotificationHandler Bitmap error: " + paramVarArgs.toString(), paramVarArgs);
    }
    return null;
  }
  
  protected void a(Bitmap paramBitmap)
  {
    r localr = (r)a.get();
    if (localr != null)
    {
      if (paramBitmap == null) {
        r.a(localr);
      }
    }
    else {
      return;
    }
    r.a(localr, paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */