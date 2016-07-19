package com.yelp.android.appdata;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class e
  implements SensorEventListener, StateBroadcastReceiver.a
{
  private final int a = 10000;
  private final float[] b = new float[3];
  private ArrayList<WeakReference<a>> c;
  private SensorManager d;
  private Sensor e;
  private double f;
  private boolean g;
  private long h;
  private final StateBroadcastReceiver i;
  private final AsyncTask<Context, Void, Sensor> j = new AsyncTask()
  {
    protected Sensor a(Context... paramAnonymousVarArgs)
    {
      e.a(e.this, (SensorManager)paramAnonymousVarArgs[0].getSystemService("sensor"));
      return e.a(e.this).getDefaultSensor(3);
    }
    
    protected void a(Sensor paramAnonymousSensor)
    {
      e.a(e.this, paramAnonymousSensor);
      e.a(e.this, new ArrayList());
      e.a(e.this, false);
      e.a(e.this, -1L);
    }
  };
  
  public e(Context paramContext)
  {
    j.execute(new Context[] { paramContext });
    i = StateBroadcastReceiver.a(paramContext, this);
  }
  
  private void c()
  {
    if (c.isEmpty())
    {
      b();
      return;
    }
    a();
  }
  
  public void a()
  {
    if ((!g) && (e != null) && (!c.isEmpty())) {
      g = d.registerListener(this, e, 2);
    }
  }
  
  public void a(Context paramContext)
  {
    a();
  }
  
  public boolean a(a parama)
  {
    if (e == null)
    {
      if (j.getStatus().equals(AsyncTask.Status.RUNNING)) {
        j.cancel(true);
      }
      return false;
    }
    c.add(new WeakReference(parama));
    c();
    return true;
  }
  
  public void b()
  {
    if ((g) && (e != null))
    {
      d.unregisterListener(this);
      g = false;
    }
  }
  
  public void b(Context paramContext)
  {
    b();
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (sensor.getType() != 3) {}
    label148:
    do
    {
      return;
      Iterator localIterator;
      if ((accuracy == 0) && (System.currentTimeMillis() - 10000L > h))
      {
        f = NaN.0D;
        paramSensorEvent = new ArrayList();
        localIterator = c.iterator();
      }
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label148;
        }
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        a locala = (a)localWeakReference.get();
        if (locala != null)
        {
          locala.a(f);
          continue;
          System.arraycopy(values, 0, b, 0, 3);
          f = b[0];
          h = System.currentTimeMillis();
          break;
        }
        paramSensorEvent.add(localWeakReference);
      }
    } while (paramSensorEvent.isEmpty());
    c.removeAll(paramSensorEvent);
    c();
  }
  
  public static abstract interface a
  {
    public abstract void a(double paramDouble);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */