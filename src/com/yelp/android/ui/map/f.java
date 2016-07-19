package com.yelp.android.ui.map;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.d;

public class f
{
  private MapView a;
  private boolean b;
  private final Context c;
  private final Handler d;
  private final a e;
  private final Runnable f = new Runnable()
  {
    public void run()
    {
      if (f.a(f.this) != null)
      {
        f.b(f.this);
        f.c(f.this).a();
        return;
      }
      f.d(f.this).post(this);
    }
  };
  
  public f(Context paramContext, a parama)
  {
    e = parama;
    c = paramContext.getApplicationContext();
    d = new Handler();
    f();
  }
  
  public static boolean a(Activity paramActivity, int paramInt)
  {
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramActivity);
    if (i != 0)
    {
      GooglePlayServicesUtil.getErrorDialog(i, paramActivity, paramInt).show();
      return false;
    }
    return true;
  }
  
  private void f()
  {
    d.a(c);
    b = true;
    d.post(f);
  }
  
  private void g()
  {
    if (a != null) {
      a.setVisibility(0);
    }
  }
  
  public void a()
  {
    if (!b) {
      f();
    }
    if (a != null) {
      a.a();
    }
  }
  
  public void a(Bundle paramBundle)
  {
    if (a != null)
    {
      Bundle localBundle = new Bundle();
      a.b(localBundle);
      paramBundle.putParcelable("extra.map_view", localBundle);
    }
  }
  
  public void a(MapView paramMapView)
  {
    a = paramMapView;
  }
  
  public void b()
  {
    if (a != null) {
      a.b();
    }
  }
  
  public void c()
  {
    if (a != null) {
      a.c();
    }
  }
  
  public void d()
  {
    if (a != null) {
      a.d();
    }
  }
  
  public final boolean e()
  {
    return b;
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(MapView paramMapView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */