package com.yelp.android.ui;

import android.annotation.TargetApi;
import android.hardware.SensorManager;
import android.view.Display;
import android.view.WindowManager;

@TargetApi(8)
class f
  extends q
{
  public f(ActivityMonocle paramActivityMonocle, SensorManager paramSensorManager)
  {
    super(paramActivityMonocle, paramSensorManager);
  }
  
  public boolean a()
  {
    switch (a.getWindowManager().getDefaultDisplay().getRotation())
    {
    case 1: 
    default: 
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */