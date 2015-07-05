package com.yelp.android.appdata;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

public class as
  extends LocationService
{
  protected final WeakHashMap<aa, Integer> a;
  private final av b;
  private final ArrayList<ax> c;
  private final LocationManager e;
  private final WeakHashMap<Context, Void> f;
  private long g;
  private final StateBroadcastReceiver h;
  
  protected as(Context paramContext)
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
    b = new av(new aw(paramContext));
    c = new ArrayList();
    paramContext = e.getAllProviders().iterator();
    while (paramContext.hasNext())
    {
      localObject1 = (String)paramContext.next();
      localObject2 = new ax(e, (String)localObject1, b);
      if (((ax)localObject2).b())
      {
        ((ax)localObject2).c();
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
  {
    BaseYelpApplication.a("LOCDEBUG", ": Blocking request acc:" + paramAccuracies.getMeters() + " rec:" + paramRecentness.getMillis() / 1000L, new Object[0]);
    long l = SystemClock.elapsedRealtime() - d;
    if (l > paramLong) {}
    for (l = 0L; !a(); l = paramLong - l) {
      throw new LocationService.NoProvidersException();
    }
    Location localLocation = c();
    BaseYelpApplication.a("LOCDEBUG", "Start Sync Loop", new Object[0]);
    while ((l > 0L) && (f()) && (!a(paramAccuracies, paramRecentness, localLocation).booleanValue()))
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
        e();
      }
      g = 0L;
    }
    f.put(paramContext, null);
    g();
  }
  
  private boolean f()
  {
    boolean bool2 = b.c();
    boolean bool1;
    if (!c.isEmpty())
    {
      bool1 = true;
      Iterator localIterator = c.iterator();
      label28:
      if (!localIterator.hasNext()) {
        break label77;
      }
      ax localax = (ax)localIterator.next();
      if ("passive".equals(ax.a(localax))) {
        break label89;
      }
      bool1 = localax.a() | bool1;
    }
    label77:
    label89:
    for (;;)
    {
      break label28;
      bool1 = false;
      break;
      return (!bool2) && (bool1);
    }
  }
  
  private void g()
  {
    if (f.isEmpty()) {
      new Handler().postDelayed(new au(this), 1000L);
    }
    for (;;)
    {
      return;
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((ax)localIterator.next()).b();
      }
    }
  }
  
  public Pair<Location, Boolean> a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness)
  {
    return a(paramAccuracies, paramRecentness, 8000L);
  }
  
  public void a(Context paramContext)
  {
    d(paramContext);
  }
  
  public void a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa)
  {
    a(paramAccuracies, paramRecentness, paramaa, 8000L);
  }
  
  public void a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa, long paramLong)
  {
    BaseYelpApplication.a("LOCDEBUG", "Async location request: accuracy: " + paramAccuracies.getMeters() + " recentness: " + paramRecentness.getMillis(), new Object[0]);
    a.put(paramaa, Integer.valueOf(0));
    new az(this, paramaa, paramLong).execute(new Pair[] { Pair.create(paramAccuracies, paramRecentness) });
    new Handler().postDelayed(new at(this, paramAccuracies, paramRecentness, paramaa), paramLong);
  }
  
  public void a(aa paramaa)
  {
    BaseYelpApplication.a("LOCDEBUG", "Cancelling Async Callback.", new Object[0]);
    a.remove(paramaa);
  }
  
  public boolean a()
  {
    Iterator localIterator = c.iterator();
    boolean bool = false;
    if (localIterator.hasNext())
    {
      ax localax = (ax)localIterator.next();
      if ("passive".equals(ax.a(localax))) {
        break label60;
      }
      bool = e.isProviderEnabled(ax.a(localax)) | bool;
    }
    label60:
    for (;;)
    {
      break;
      return bool;
    }
  }
  
  public void b(Context paramContext)
  {
    f.clear();
    g();
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
        break label73;
      }
      ax localax = (ax)localIterator.next();
      if ("passive".equals(ax.a(localax))) {
        break label75;
      }
      bool = e.isProviderEnabled(ax.a(localax)) & bool;
    }
    label73:
    label75:
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
  
  public void d()
  {
    b.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */