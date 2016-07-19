package com.yelp.android.ui;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.util.Log;
import android.widget.ImageView;

class l
  implements SensorEventListener
{
  protected final ActivityMonocle a;
  private final SensorManager b;
  private final MonocleEngine c;
  private final float[] d;
  private final float[] e;
  private float f;
  private float g;
  
  public l(ActivityMonocle paramActivityMonocle, SensorManager paramSensorManager)
  {
    b = paramSensorManager;
    a = paramActivityMonocle;
    c = new MonocleEngine();
    d = new float[16];
    e = new float[16];
  }
  
  private void a(SensorEvent paramSensorEvent)
  {
    if ((sensor.getType() == 1) && ("sprint/SPH-D700/SPH-D700/SPH-D700:2.2.1/FROYO/EC05:user/release-keys".equals(Build.FINGERPRINT))) {
      values[2] += 18.0F;
    }
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void b()
  {
    if (Build.MANUFACTURER.equalsIgnoreCase("motorola")) {}
    for (int i = 1;; i = 0)
    {
      b.registerListener(this, b.getDefaultSensor(1), i);
      b.registerListener(this, b.getDefaultSensor(2), i);
      return;
    }
  }
  
  public void c()
  {
    b.unregisterListener(this);
  }
  
  public void d()
  {
    float[] arrayOfFloat1 = new float[16];
    if (!SensorManager.getRotationMatrix(arrayOfFloat1, new float[16], d, e)) {
      Log.i("gr", "fail");
    }
    int i = 129;
    if (a()) {
      i = 2;
    }
    for (int j = 1;; j = 2)
    {
      SensorManager.remapCoordinateSystem(arrayOfFloat1, j, i, arrayOfFloat1);
      float[] arrayOfFloat2 = new float[3];
      SensorManager.getOrientation(arrayOfFloat1, arrayOfFloat2);
      g = ((int)Math.rint(Math.toDegrees(arrayOfFloat2[2])));
      f = ((int)Math.rint(Math.toDegrees(arrayOfFloat2[0])));
      c.SetRotation(arrayOfFloat1);
      c.SetAzimuth(f);
      SensorManager.remapCoordinateSystem(arrayOfFloat1, 1, 3, arrayOfFloat1);
      SensorManager.getOrientation(arrayOfFloat1, arrayOfFloat2);
      if ((int)Math.rint(Math.toDegrees(arrayOfFloat2[2])) < 45)
      {
        a.b.setVisibility(4);
        a.c.setVisibility(0);
      }
      for (;;)
      {
        c.SetRoll(g);
        return;
        a.b.setVisibility(0);
        a.c.setVisibility(4);
      }
    }
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    int j = 0;
    int i = 0;
    a(paramSensorEvent);
    if (sensor.getType() == 1) {
      while (i < 3)
      {
        d[i] = (values[i] * 0.2F + d[i] * 0.8F);
        i += 1;
      }
    }
    if (sensor.getType() == 2)
    {
      i = j;
      while (i < 3)
      {
        e[i] = (values[i] * 0.2F + e[i] * 0.8F);
        i += 1;
      }
    }
    d();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */