package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;

public abstract class dq<Progress, Result>
  extends k<Void, Progress, Result>
{
  protected dq(ApiRequest.RequestType paramRequestType, String paramString, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, LocationService.AccuracyUnit paramAccuracyUnit, a<Progress, Result> parama)
  {
    super(paramRequestType, paramString, paramAccuracies, paramRecentness, parama, paramAccuracyUnit);
  }
  
  protected void b(Result paramResult)
  {
    if (n() != null) {
      n().onSuccess(this, paramResult);
    }
  }
  
  protected void d(Progress... paramVarArgs)
  {
    a locala = (a)n();
    if ((locala != null) && (paramVarArgs != null) && (paramVarArgs.length > 0)) {
      locala.a(paramVarArgs[0]);
    }
  }
  
  public static abstract class a<Progress, Result>
    extends k.b<Result>
  {
    public abstract void a(Progress paramProgress);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */