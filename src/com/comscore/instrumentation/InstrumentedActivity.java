package com.comscore.instrumentation;

import android.app.Activity;
import android.os.Bundle;
import com.comscore.analytics.a;
import com.comscore.analytics.h;

public class InstrumentedActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    h.a(getApplicationContext());
  }
  
  protected void onPause()
  {
    super.onPause();
    h.b();
  }
  
  protected void onResume()
  {
    super.onResume();
    h.e().a(getClass().getSimpleName());
    h.a();
  }
}

/* Location:
 * Qualified Name:     com.comscore.instrumentation.InstrumentedActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */