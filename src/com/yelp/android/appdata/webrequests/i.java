package com.yelp.android.appdata.webrequests;

import android.location.Location;
import com.yelp.android.appdata.aa;

final class i<Params, Progress, Result>
  implements aa
{
  Params[] a;
  private final h<Params, Progress, Result> b;
  
  public i(h<Params, Progress, Result> paramh)
  {
    b = paramh;
  }
  
  public void a(Location paramLocation, boolean paramBoolean)
  {
    b.mLocation = paramLocation;
    if ((paramLocation == null) && (b.isLocationAbsolutelyRequired()))
    {
      paramLocation = new YelpException(2131165253);
      j localj = (j)b.getCallback();
      b.cancel(true);
      if (localj != null) {
        localj.onError(b, paramLocation);
      }
      return;
    }
    b.startRequest(a);
  }
  
  public void a(Params... paramVarArgs)
  {
    a = paramVarArgs;
  }
  
  public boolean a()
  {
    j localj = (j)b.getCallback();
    if ((localj != null) && (localj.a()))
    {
      b.mLocation = new Location("dummy_location");
      b.startRequest(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */