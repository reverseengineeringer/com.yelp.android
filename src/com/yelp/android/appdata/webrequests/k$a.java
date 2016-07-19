package com.yelp.android.appdata.webrequests;

import android.location.Location;
import com.yelp.android.appdata.LocationService.a;

final class k$a<Params, Progress, Result>
  implements LocationService.a
{
  Params[] a;
  private final k<Params, Progress, Result> b;
  
  public k$a(k<Params, Progress, Result> paramk)
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

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */