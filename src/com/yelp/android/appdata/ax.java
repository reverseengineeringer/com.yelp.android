package com.yelp.android.appdata;

import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.yelp.android.util.YelpLog;
import java.util.LinkedList;

final class ax
  implements LocationListener
{
  private final String a;
  private final LocationManager b;
  private final av c;
  private boolean d;
  private long e;
  private GpsStatus f;
  private Handler g;
  private final LinkedList<Location> h;
  private final Runnable i = new ay(this);
  
  public ax(LocationManager paramLocationManager, String paramString, av paramav)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Provider cannot be null");
    }
    a = paramString;
    b = paramLocationManager;
    c = paramav;
    h = new LinkedList();
    e = 0L;
  }
  
  public long a(Location paramLocation)
  {
    if ((h.isEmpty()) || (a.equals("passive"))) {
      return e;
    }
    float[] arrayOfFloat1 = new float[h.size()];
    float[] arrayOfFloat2 = new float[h.size()];
    int k = arrayOfFloat1.length;
    int j = 0;
    float f1 = 0.0F;
    float f2 = 0.0F;
    while (j < k)
    {
      Location localLocation = (Location)h.get(j);
      arrayOfFloat1[j] = paramLocation.distanceTo(localLocation);
      f2 += arrayOfFloat1[j];
      arrayOfFloat2[j] = localLocation.getAccuracy();
      f1 += arrayOfFloat2[j];
      j += 1;
    }
    f2 /= arrayOfFloat1.length;
    f1 /= arrayOfFloat2.length;
    k = arrayOfFloat2.length;
    double d1 = 0.0D;
    j = 0;
    while (j < k)
    {
      f3 = arrayOfFloat2[j] - f1;
      d1 += f3 * f3;
      j += 1;
    }
    d1 = Math.sqrt(d1 / arrayOfFloat2.length);
    float f3 = paramLocation.getAccuracy();
    float f4 = paramLocation.getAccuracy();
    long l = e;
    j = (5 - h.size() + 1) * 2;
    if ((int)Math.abs((f1 - f3 * f4) / d1) > 0)
    {
      l /= j;
      if (f2 <= 5.0F) {
        break label386;
      }
    }
    label386:
    for (l /= j;; l = Math.min(Math.max(l * j, j), 15000L))
    {
      BaseYelpApplication.a(a, "CalculatedUpdateTime[%d]\nAvg Accuracy:%f\t(%f)\nStdDev Accuracy: %f\t(%f)\nAvg Distance: %f\nLocation %s\nOtherLocations [%s]", new Object[] { Long.valueOf(l), Float.valueOf(f1), Float.valueOf(paramLocation.getAccuracy()), Double.valueOf(d1), Float.valueOf(paramLocation.getAccuracy()), Float.valueOf(f2), paramLocation, h });
      return l;
      l = Math.min(Math.max(j * l, j), 15000L);
      break;
    }
  }
  
  public boolean a()
  {
    return d;
  }
  
  public boolean b()
  {
    int j;
    Handler localHandler;
    if (!d) {
      if (a.equals("gps"))
      {
        f = b.getGpsStatus(f);
        long l = Math.max(f.getTimeToFirstFix(), 1000L);
        BaseYelpApplication.a(a, "Time to first fix is: %s", new Object[] { Long.valueOf(l) });
        j = (int)Math.min(90000L, (int)Math.max(60000.0F, (float)l * 1.5F));
        if (g != null) {
          break label195;
        }
        localHandler = new Handler();
      }
    }
    for (;;)
    {
      g = localHandler;
      g.removeCallbacks(i);
      g.postDelayed(i, j);
      BaseYelpApplication.a(a, "Starting at %d millisecond updates and %f meters", new Object[] { Long.valueOf(e), Float.valueOf(5.0F) });
      try
      {
        b.requestLocationUpdates(a, e, 5.0F, this);
        d = true;
        return d;
        label195:
        localHandler = g;
      }
      catch (SecurityException localSecurityException)
      {
        for (;;)
        {
          YelpLog.e(a, "We are not allowed to listen to this provider", localSecurityException);
        }
      }
    }
  }
  
  public void c()
  {
    if (d)
    {
      BaseYelpApplication.a(a, "SHUTTING DOWN", new Object[0]);
      b.removeUpdates(this);
      d = false;
    }
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    BaseYelpApplication.a(a, "Got a new Location [%s]", new Object[] { paramLocation });
    c.a(paramLocation);
    long l = a(paramLocation);
    if (l != e)
    {
      YelpLog.w(a, String.format("Updating update frequency from %d to %d", new Object[] { Long.valueOf(e), Long.valueOf(l) }));
      e = l;
      b.removeUpdates(this);
      b.requestLocationUpdates(a, e, 5.0F, this);
    }
    h.addFirst(paramLocation);
    while (h.size() > 5) {
      h.removeLast();
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString)
  {
    c.a(paramString);
  }
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */