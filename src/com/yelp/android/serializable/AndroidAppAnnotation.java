package com.yelp.android.serializable;

import android.net.Uri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.au.a;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class AndroidAppAnnotation
  extends _AndroidAppAnnotation
{
  public static final JsonParser.DualCreator<AndroidAppAnnotation> CREATOR = new AndroidAppAnnotation.1();
  
  public boolean a()
  {
    if ((g() == null) || (f() == null)) {
      return false;
    }
    Uri localUri = b();
    if (!"android-app".equals(localUri.getScheme()))
    {
      a.a(new IllegalArgumentException(String.format("Expecting scheme 'android-app': %s", new Object[] { f() })));
      return false;
    }
    if (!AppData.b().getPackageName().equals(localUri.getAuthority()))
    {
      a.a(new IllegalArgumentException(String.format("Authority is not %s: %s", new Object[] { AppData.b().getPackageName(), f() })));
      return false;
    }
    return true;
  }
  
  public Uri b()
  {
    if (f() != null) {
      return Uri.parse(f());
    }
    return null;
  }
  
  public Uri c()
  {
    if (e() != null) {
      return Uri.parse(e());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.AndroidAppAnnotation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */