package com.yelp.android.ui.map;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.MapsInitializer;

public class g
{
  private MapView a;
  private boolean b;
  private final Context c;
  private final Handler d;
  private final i e;
  private final Runnable f = new h(this);
  
  public g(Context paramContext, i parami)
  {
    e = parami;
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
    MapsInitializer.initialize(c);
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
      a.onResume();
    }
  }
  
  public void a(Bundle paramBundle)
  {
    if (a != null)
    {
      Bundle localBundle = new Bundle();
      a.onSaveInstanceState(localBundle);
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
      a.onPause();
    }
  }
  
  public void c()
  {
    if (a != null) {
      a.onDestroy();
    }
  }
  
  public void d()
  {
    if (a != null) {
      a.onLowMemory();
    }
  }
  
  public final boolean e()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */