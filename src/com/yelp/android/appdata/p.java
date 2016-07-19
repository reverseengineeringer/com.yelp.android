package com.yelp.android.appdata;

import android.content.Context;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.WeakHashMap;

public class p
  extends LocationService
{
  protected final WeakHashMap<LocationService.a, Integer> a;
  private final a b;
  private final ArrayList<c> c;
  private final LocationManager e;
  private final WeakHashMap<Context, Void> f;
  private long g;
  private final StateBroadcastReceiver h;
  
  protected p(Context paramContext)
  {
    e = ((LocationManager)paramContext.getSystemService("location"));
    h = StateBroadcastReceiver.a(paramContext, this);
    paramContext = new HashMap();
    Object localObject1 = e.getAllProviders().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      paramContext.put(localObject2, Integer.valueOf(e.getProvider((String)localObject2).getAccuracy()));
    }
    b = new a(new b(paramContext));
    c = new ArrayList();
    paramContext = e.getAllProviders().iterator();
    while (paramContext.hasNext())
    {
      localObject1 = (String)paramContext.next();
      localObject2 = new c(e, (String)localObject1, b);
      if (((c)localObject2).b())
      {
        ((c)localObject2).c();
        c.add(localObject2);
        localObject1 = e.getLastKnownLocation((String)localObject1);
        if (localObject1 != null) {
          b.a((Location)localObject1);
        }
      }
    }
    a = new WeakHashMap();
    f = new WeakHashMap();
  }
  
  private Pair<Location, Boolean> a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, long paramLong)
    throws LocationService.NoProvidersException
  {
    BaseYelpApplication.a("LOCDEBUG", ": Blocking request acc:" + paramAccuracies.getMeters() + " rec:" + paramRecentness.getMillis() / 1000L, new Object[0]);
    long l = SystemClock.elapsedRealtime() - d;
    if (l > paramLong) {}
    for (l = 0L; !a(); l = paramLong - l) {
      throw new LocationService.NoProvidersException();
    }
    Location localLocation = c();
    BaseYelpApplication.a("LOCDEBUG", "Start Sync Loop", new Object[0]);
    while ((l > 0L) && (e()) && (!a(paramAccuracies, paramRecentness, localLocation).booleanValue()))
    {
      SystemClock.sleep(333L);
      l = paramLong - (SystemClock.elapsedRealtime() - d);
      localLocation = c();
    }
    BaseYelpApplication.a("LOCDEBUG", "End Sync Loop", new Object[0]);
    return new Pair(localLocation, a(paramAccuracies, paramRecentness, localLocation));
  }
  
  private void d(Context paramContext)
  {
    if (f.isEmpty())
    {
      YelpLog.i(this, "Registering Backgrounder");
      if ((g > 0L) && (SystemClock.elapsedRealtime() - g > 60000L)) {
        d();
      }
      g = 0L;
    }
    f.put(paramContext, null);
    f();
  }
  
  private boolean e()
  {
    boolean bool2 = b.b();
    boolean bool1;
    if (!c.isEmpty())
    {
      bool1 = true;
      Iterator localIterator = c.iterator();
      label28:
      if (!localIterator.hasNext()) {
        break label78;
      }
      c localc = (c)localIterator.next();
      if ("passive".equals(c.a(localc))) {
        break label90;
      }
      bool1 = localc.a() | bool1;
    }
    label78:
    label90:
    for (;;)
    {
      break label28;
      bool1 = false;
      break;
      return (!bool2) && (bool1);
    }
  }
  
  private void f()
  {
    if (f.isEmpty()) {
      new Handler().postDelayed(new Runnable()
      {
        public void run()
        {
          if (p.a(p.this).isEmpty())
          {
            p.a(p.this, SystemClock.elapsedRealtime());
            Iterator localIterator = p.b(p.this).iterator();
            while (localIterator.hasNext()) {
              ((p.c)localIterator.next()).c();
            }
          }
        }
      }, 1000L);
    }
    for (;;)
    {
      return;
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((c)localIterator.next()).b();
      }
    }
  }
  
  public Pair<Location, Boolean> a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness)
    throws LocationService.NoProvidersException
  {
    return a(paramAccuracies, paramRecentness, 8000L);
  }
  
  public void a(Context paramContext)
  {
    d(paramContext);
  }
  
  public void a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, LocationService.a parama)
  {
    a(paramAccuracies, paramRecentness, parama, 8000L);
  }
  
  public void a(final LocationService.Accuracies paramAccuracies, final LocationService.Recentness paramRecentness, final LocationService.a parama, long paramLong)
  {
    BaseYelpApplication.a("LOCDEBUG", "Async location request: accuracy: " + paramAccuracies.getMeters() + " recentness: " + paramRecentness.getMillis(), new Object[0]);
    a.put(parama, Integer.valueOf(0));
    new d(parama, paramLong).execute(new Pair[] { Pair.create(paramAccuracies, paramRecentness) });
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        Location localLocation = c();
        if (!a(paramAccuracies, paramRecentness, localLocation).booleanValue())
        {
          if (localLocation == null) {
            break label85;
          }
          BaseYelpApplication.a("LOCDEBUG", "Did not get location update, using old location: %s oldness: %s", new Object[] { localLocation, Long.valueOf(LocationService.Recentness.getOldness(localLocation.getTime())) });
        }
        for (;;)
        {
          a(parama);
          parama.a(localLocation, false);
          return;
          label85:
          BaseYelpApplication.a("LOCDEBUG", "No location at all", new Object[0]);
        }
      }
    }, paramLong);
  }
  
  public void a(LocationService.a parama)
  {
    BaseYelpApplication.a("LOCDEBUG", "Cancelling Async Callback.", new Object[0]);
    a.remove(parama);
  }
  
  public boolean a()
  {
    Iterator localIterator = c.iterator();
    boolean bool = false;
    if (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ("passive".equals(c.a(localc))) {
        break label61;
      }
      bool = e.isProviderEnabled(c.a(localc)) | bool;
    }
    label61:
    for (;;)
    {
      break;
      return bool;
    }
  }
  
  public void b(Context paramContext)
  {
    f.clear();
    f();
  }
  
  public boolean b()
  {
    boolean bool;
    if (!c.isEmpty())
    {
      bool = true;
      Iterator localIterator = c.iterator();
      label20:
      if (!localIterator.hasNext()) {
        break label74;
      }
      c localc = (c)localIterator.next();
      if ("passive".equals(c.a(localc))) {
        break label76;
      }
      bool = e.isProviderEnabled(c.a(localc)) & bool;
    }
    label74:
    label76:
    for (;;)
    {
      break label20;
      bool = false;
      break;
      return bool;
    }
  }
  
  public Location c()
  {
    return b.a();
  }
  
  static final class a
  {
    private final Map<String, PriorityQueue<Location>> a;
    private final Comparator<Location> b;
    
    public a(Comparator<Location> paramComparator)
    {
      b = Collections.reverseOrder(paramComparator);
      a = new HashMap(10);
    }
    
    public Location a()
    {
      PriorityQueue localPriorityQueue = new PriorityQueue(1, b);
      Iterator localIterator = a.values().iterator();
      while (localIterator.hasNext())
      {
        Location localLocation = (Location)((PriorityQueue)localIterator.next()).peek();
        if (localLocation != null) {
          localPriorityQueue.add(localLocation);
        }
      }
      return (Location)localPriorityQueue.peek();
    }
    
    public void a(Location paramLocation)
    {
      if (paramLocation == null) {}
      PriorityQueue localPriorityQueue1;
      do
      {
        return;
        PriorityQueue localPriorityQueue2 = (PriorityQueue)a.get(paramLocation.getProvider());
        localPriorityQueue1 = localPriorityQueue2;
        if (localPriorityQueue2 == null)
        {
          localPriorityQueue1 = new PriorityQueue(10, b);
          a.put(paramLocation.getProvider(), localPriorityQueue1);
        }
        localPriorityQueue1.add(paramLocation);
      } while (localPriorityQueue1.size() <= 10);
      localPriorityQueue1.retainAll(Collections.singleton(localPriorityQueue1.peek()));
    }
    
    public void a(String paramString)
    {
      paramString = (PriorityQueue)a.get(paramString);
      if (paramString != null) {
        paramString.clear();
      }
    }
    
    public boolean b()
    {
      if (!a.isEmpty()) {}
      boolean bool1;
      Location localLocation;
      for (boolean bool2 = true;; bool2 = false)
      {
        bool1 = bool2;
        if (bool2)
        {
          localLocation = a();
          if (localLocation != null) {
            break;
          }
          bool1 = false;
        }
        return bool1;
      }
      long l1 = System.currentTimeMillis();
      long l2 = l1 - localLocation.getTime();
      if (l2 < 60000L) {}
      for (bool2 = true;; bool2 = false)
      {
        bool1 = bool2;
        if (l2 >= 0L) {
          break;
        }
        Log.w("LOCDEBUG", "Woah we went back in time, location is reporting " + new Date(localLocation.getTime()) + " And now is :" + new Date(l1));
        return bool2;
      }
    }
  }
  
  static final class b
    implements Comparator<Location>
  {
    private final HashMap<String, Integer> a;
    
    public b(HashMap<String, Integer> paramHashMap)
    {
      a = new HashMap(paramHashMap);
    }
    
    private static final float a(HashMap<String, Integer> paramHashMap, String paramString)
    {
      paramHashMap = (Integer)paramHashMap.get(paramString);
      if (paramHashMap != null)
      {
        int i = paramHashMap.intValue();
        if (i == 2) {
          return 1.2F;
        }
        if (i == 1) {
          return 1.5F;
        }
      }
      return 1.0F;
    }
    
    protected static Location a(Location paramLocation1, Location paramLocation2, long paramLong, HashMap<String, Integer> paramHashMap)
    {
      if ((paramLocation1 == null) || (paramLocation2 == null)) {
        if ((paramLocation1 == null) && (paramLocation2 == null)) {
          paramHashMap = null;
        }
      }
      float f1;
      float f2;
      long l;
      label168:
      do
      {
        Location localLocation;
        do
        {
          do
          {
            return paramHashMap;
            paramHashMap = paramLocation1;
          } while (paramLocation1 != null);
          return paramLocation2;
          f1 = 1.0F / a(paramHashMap, paramLocation1.getProvider());
          f2 = 1.0F / a(paramHashMap, paramLocation2.getProvider());
          if (paramLocation1.getTime() > paramLocation2.getTime()) {}
          for (localLocation = paramLocation1;; localLocation = paramLocation2)
          {
            l = paramLong - paramLocation1.getTime();
            paramLong -= paramLocation2.getTime();
            if ((paramLocation1.hasAccuracy()) && (paramLocation2.hasAccuracy())) {
              break label168;
            }
            if ((paramLocation1.hasAccuracy()) || (paramLocation2.hasAccuracy())) {
              break;
            }
            return localLocation;
          }
          if (!paramLocation1.hasAccuracy()) {
            break;
          }
          paramHashMap = paramLocation1;
        } while (l < 2L * paramLong);
        if ((paramLocation2.hasAccuracy()) && (paramLong < 2L * l)) {
          return paramLocation2;
        }
        return localLocation;
        paramHashMap = paramLocation1;
      } while ((float)l * f1 * paramLocation1.getAccuracy() < (float)paramLong * f2 * paramLocation2.getAccuracy());
      return paramLocation2;
    }
    
    public int a(Location paramLocation1, Location paramLocation2)
    {
      if ((paramLocation1 == null) && (paramLocation2 != null)) {}
      Location localLocation;
      do
      {
        return -1;
        if ((paramLocation2 == null) && (paramLocation1 != null)) {
          return 1;
        }
        if ((paramLocation1 == paramLocation2) || (paramLocation1.equals(paramLocation2))) {
          return 0;
        }
        localLocation = a(paramLocation1, paramLocation2, System.currentTimeMillis(), a);
        if (localLocation == paramLocation1) {
          return 1;
        }
      } while (localLocation == paramLocation2);
      return 1;
    }
  }
  
  static final class c
    implements LocationListener
  {
    private final String a;
    private final LocationManager b;
    private final p.a c;
    private boolean d;
    private long e;
    private GpsStatus f;
    private Handler g;
    private final LinkedList<Location> h;
    private final Runnable i = new Runnable()
    {
      public void run()
      {
        if (p.c.b(p.c.this))
        {
          boolean bool2 = p.c.c(p.c.this).isEmpty();
          bool1 = bool2;
          if (!bool2)
          {
            long l = ((Location)p.c.c(p.c.this).getFirst()).getTime();
            if (SystemClock.elapsedRealtime() - l < p.c.d(p.c.this).getTimeToFirstFix()) {
              break label155;
            }
          }
        }
        label155:
        for (boolean bool1 = true;; bool1 = false)
        {
          if (bool1)
          {
            p.c.a(p.c.this, 15000L);
            YelpLog.i(p.c.a(p.c.this), String.format("Spinning down GPS to %d seconds, probably indoors", new Object[] { Long.valueOf(15L) }));
            p.c.e(p.c.this).removeUpdates(p.c.this);
            p.c.e(p.c.this).requestLocationUpdates(p.c.a(p.c.this), p.c.f(p.c.this), 5.0F, p.c.this);
          }
          return;
        }
      }
    };
    
    public c(LocationManager paramLocationManager, String paramString, p.a parama)
    {
      if (TextUtils.isEmpty(paramString)) {
        throw new IllegalArgumentException("Provider cannot be null");
      }
      a = paramString;
      b = paramLocationManager;
      c = parama;
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
  
  private class d
    extends AsyncTask<Pair<LocationService.Accuracies, LocationService.Recentness>, Void, Pair<Location, Boolean>>
  {
    private final LocationService.a b;
    private long c;
    
    public d(LocationService.a parama, long paramLong)
    {
      b = parama;
      c = paramLong;
    }
    
    protected Pair<Location, Boolean> a(Pair<LocationService.Accuracies, LocationService.Recentness>... paramVarArgs)
    {
      try
      {
        paramVarArgs = p.a(p.this, (LocationService.Accuracies)0first, (LocationService.Recentness)0second, c);
        return paramVarArgs;
      }
      catch (LocationService.NoProvidersException paramVarArgs) {}
      return null;
    }
    
    protected void a(Pair<Location, Boolean> paramPair)
    {
      super.onPostExecute(paramPair);
      if (!a.containsKey(b))
      {
        BaseYelpApplication.a("LOCDEBUG", "Callback was cancelled", new Object[0]);
        return;
      }
      if (paramPair == null)
      {
        b.a(null, false);
        return;
      }
      b.a((Location)first, ((Boolean)second).booleanValue());
    }
    
    protected void onPreExecute()
    {
      super.onPreExecute();
      if (!a())
      {
        if (!a.containsKey(b)) {
          break label50;
        }
        if (!b.a()) {
          cancel(true);
        }
      }
      return;
      label50:
      BaseYelpApplication.a("LOCDEBUG", "Callback was cancelled", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */