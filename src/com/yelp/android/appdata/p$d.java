package com.yelp.android.appdata;

import android.location.Location;
import android.os.AsyncTask;
import android.util.Pair;
import java.util.WeakHashMap;

class p$d
  extends AsyncTask<Pair<LocationService.Accuracies, LocationService.Recentness>, Void, Pair<Location, Boolean>>
{
  private final LocationService.a b;
  private long c;
  
  public p$d(p paramp, LocationService.a parama, long paramLong)
  {
    b = parama;
    c = paramLong;
  }
  
  protected Pair<Location, Boolean> a(Pair<LocationService.Accuracies, LocationService.Recentness>... paramVarArgs)
  {
    try
    {
      paramVarArgs = p.a(a, (LocationService.Accuracies)0first, (LocationService.Recentness)0second, c);
      return paramVarArgs;
    }
    catch (LocationService.NoProvidersException paramVarArgs) {}
    return null;
  }
  
  protected void a(Pair<Location, Boolean> paramPair)
  {
    super.onPostExecute(paramPair);
    if (!a.a.containsKey(b))
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
    if (!a.a())
    {
      if (!a.a.containsKey(b)) {
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

/* Location:
 * Qualified Name:     com.yelp.android.appdata.p.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */