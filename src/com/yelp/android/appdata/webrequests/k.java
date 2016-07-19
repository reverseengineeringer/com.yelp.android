package com.yelp.android.appdata.webrequests;

import android.location.Location;
import android.os.AsyncTask.Status;
import android.util.Log;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.appdata.LocationService.a;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.util.YelpLog;

public abstract class k<Params, Progress, Result>
  extends b<Params, Progress, Result>
{
  protected Location a;
  private final LocationService g = AppData.b().r();
  private String h = "latitude";
  private String i = "longitude";
  private String j = "accuracy";
  private final LocationService.Accuracies k;
  private final LocationService.Recentness l;
  private long m = 8000L;
  private boolean n;
  private final a<Params, Progress, Result> o;
  private final LocationService.AccuracyUnit p;
  
  k(ApiRequest.RequestType paramRequestType, String paramString, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, b<Result> paramb, LocationService.AccuracyUnit paramAccuracyUnit)
  {
    super(paramRequestType, paramString, paramb);
    Log.d("LOCDEBUG", "init accuracy:" + paramAccuracies.name() + " recentness:" + paramRecentness.name());
    k = paramAccuracies;
    l = paramRecentness;
    p = paramAccuracyUnit;
    o = new a(this);
  }
  
  public void a(long paramLong)
  {
    m = paramLong;
  }
  
  protected void a(Location paramLocation)
  {
    c(h, paramLocation.getLatitude());
    c(i, paramLocation.getLongitude());
    if (p == LocationService.AccuracyUnit.METERS) {
      if (h() == ApiRequest.RequestType.GET) {
        a(j, paramLocation.getAccuracy());
      }
    }
    while (p != LocationService.AccuracyUnit.MILES)
    {
      return;
      b(j, paramLocation.getAccuracy());
      return;
    }
    if (h() == ApiRequest.RequestType.GET)
    {
      a(j, paramLocation.getAccuracy() / 1609.344F);
      return;
    }
    b(j, paramLocation.getAccuracy() / 1609.344F);
  }
  
  protected void a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("latitude key cannot be null");
    }
    h = paramString;
  }
  
  public void a(Params... paramVarArgs)
  {
    if ((a != null) && (l.satisfies(a)))
    {
      b(paramVarArgs);
      return;
    }
    n = true;
    o.a(paramVarArgs);
    g.a(k, l, o, m);
  }
  
  public k<Params, Progress, Result> b(Location paramLocation)
  {
    a = paramLocation;
    return this;
  }
  
  protected void b(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("longitude key cannot be null");
    }
    i = paramString;
  }
  
  public void b(Params... paramVarArgs)
  {
    if (m() != AsyncTask.Status.PENDING)
    {
      YelpLog.w(this, "Tried to start request twice");
      return;
    }
    n = false;
    b localb = (b)n();
    if (localb != null) {
      localb.a(a);
    }
    f(paramVarArgs);
  }
  
  public boolean b()
  {
    return true;
  }
  
  protected void c()
  {
    super.c();
    g.a(o);
  }
  
  public boolean d()
  {
    return n;
  }
  
  protected void e()
  {
    super.e();
    if (a != null) {
      a(a);
    }
  }
  
  public Location f()
  {
    return a;
  }
  
  private static final class a<Params, Progress, Result>
    implements LocationService.a
  {
    Params[] a;
    private final k<Params, Progress, Result> b;
    
    public a(k<Params, Progress, Result> paramk)
    {
      b = paramk;
    }
    
    public void a(Location paramLocation, boolean paramBoolean)
    {
      b.a = paramLocation;
      if ((b.b()) && (paramLocation == null))
      {
        paramLocation = new YelpException(2131165389);
        k.b localb = (k.b)b.n();
        b.a(true);
        if (localb != null) {
          localb.onError(b, paramLocation);
        }
        return;
      }
      b.b(a);
    }
    
    public void a(Params... paramVarArgs)
    {
      a = paramVarArgs;
    }
    
    public boolean a()
    {
      k.b localb = (k.b)b.n();
      if ((localb != null) && (localb.a()))
      {
        b.a = new Location("dummy_location");
        b.b(a);
        return true;
      }
      return false;
    }
  }
  
  public static abstract class b<Result>
    implements ApiRequest.b<Result>
  {
    public void a(Location paramLocation) {}
    
    public abstract boolean a();
    
    public abstract void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */