package com.yelp.android.appdata;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.AsyncTask;
import java.util.ArrayList;

class l
  extends AsyncTask<Context, Void, Sensor>
{
  l(k paramk) {}
  
  protected Sensor a(Context... paramVarArgs)
  {
    k.a(a, (SensorManager)paramVarArgs[0].getSystemService("sensor"));
    return k.a(a).getDefaultSensor(3);
  }
  
  protected void a(Sensor paramSensor)
  {
    k.a(a, paramSensor);
    k.a(a, new ArrayList());
    k.a(a, false);
    k.a(a, -1L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */