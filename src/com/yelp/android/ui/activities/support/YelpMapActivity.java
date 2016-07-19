package com.yelp.android.ui.activities.support;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import com.google.android.gms.maps.MapView;
import com.yelp.android.ui.map.f;
import com.yelp.android.ui.map.f.a;
import com.yelp.android.ui.util.as;

@SuppressLint({"NewApi"})
public abstract class YelpMapActivity
  extends YelpActivity
  implements b.d, f.a
{
  private f a;
  
  public void a(MapView paramMapView)
  {
    a.a(paramMapView);
  }
  
  protected final boolean m()
  {
    return a.e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = new f(this, this);
  }
  
  @Deprecated
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 1026) {
      return as.a(this, paramBundle.getInt("extra.services_not_available"));
    }
    return super.onCreateDialog(paramInt, paramBundle);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    a.c();
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    a.d();
  }
  
  protected void onPause()
  {
    super.onPause();
    a.b();
  }
  
  protected void onResume()
  {
    super.onResume();
    a.a();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpMapActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */