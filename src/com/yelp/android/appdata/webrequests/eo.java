package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;

public abstract class eo<Progress, Result>
  extends h<Void, Progress, Result>
{
  protected eo(ApiRequest.RequestType paramRequestType, String paramString, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, LocationService.AccuracyUnit paramAccuracyUnit, ep<Progress, Result> paramep)
  {
    super(paramRequestType, paramString, paramAccuracies, paramRecentness, paramep, paramAccuracyUnit);
  }
  
  protected void onProgressUpdate(Progress... paramVarArgs)
  {
    ep localep = (ep)getCallback();
    if ((localep != null) && (paramVarArgs != null) && (paramVarArgs.length > 0)) {
      localep.a(paramVarArgs[0]);
    }
  }
  
  protected void onSuccess(Result paramResult)
  {
    if (getCallback() != null) {
      getCallback().onSuccess(this, paramResult);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */