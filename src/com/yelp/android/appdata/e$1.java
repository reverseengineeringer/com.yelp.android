package com.yelp.android.appdata;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.AsyncTask;
import java.util.ArrayList;

class e$1
  extends AsyncTask<Context, Void, Sensor>
{
  e$1(e parame) {}
  
  protected Sensor a(Context... paramVarArgs)
  {
    e.a(a, (SensorManager)paramVarArgs[0].getSystemService("sensor"));
    return e.a(a).getDefaultSensor(3);
  }
  
  protected void a(Sensor paramSensor)
  {
    e.a(a, paramSensor);
    e.a(a, new ArrayList());
    e.a(a, false);
    e.a(a, -1L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.e.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */