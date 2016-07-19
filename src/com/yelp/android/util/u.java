package com.yelp.android.util;

import android.app.Activity;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.yelp.android.bh.b;
import com.yelp.android.bh.c;
import com.yelp.android.serializable.AndroidAppAnnotation;

public class u
{
  private GoogleApiClient a;
  
  public u(Activity paramActivity)
  {
    a = new GoogleApiClient.Builder(paramActivity).addApi(b.b).build();
  }
  
  public void a()
  {
    a.connect();
  }
  
  public void a(Activity paramActivity, AndroidAppAnnotation paramAndroidAppAnnotation)
  {
    if ((paramAndroidAppAnnotation != null) && (paramAndroidAppAnnotation.a()))
    {
      b.c.a(a, paramActivity, paramAndroidAppAnnotation.b(), paramAndroidAppAnnotation.g(), paramAndroidAppAnnotation.c(), null);
      b.c.a(a, paramActivity, paramAndroidAppAnnotation.b());
    }
  }
  
  public void b()
  {
    a.disconnect();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */