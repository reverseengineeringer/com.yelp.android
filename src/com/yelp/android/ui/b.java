package com.yelp.android.ui;

import android.hardware.SensorManager;
import android.view.Display;
import android.view.WindowManager;

class b
  extends l
{
  public b(ActivityMonocle paramActivityMonocle, SensorManager paramSensorManager)
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
 * Qualified Name:     com.yelp.android.ui.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */