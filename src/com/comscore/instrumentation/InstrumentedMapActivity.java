package com.comscore.instrumentation;

import android.os.Bundle;
import com.comscore.analytics.a;
import com.comscore.analytics.k;
import com.google.android.maps.MapActivity;

public class InstrumentedMapActivity
  extends MapActivity
{
  protected boolean isRouteDisplayed()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    k.a(getApplicationContext());
  }
  
  protected void onPause()
  {
    super.onPause();
    k.b();
  }
  
  protected void onResume()
  {
    super.onResume();
    k.d().a(getClass().getSimpleName());
    k.a();
  }
}

/* Location:
 * Qualified Name:     com.comscore.instrumentation.InstrumentedMapActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */