package com.yelp.android.appdata.webrequests;

import android.location.Criteria;
import android.location.Location;
import android.os.AsyncTask.Status;
import android.util.Log;
import android.util.Pair;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.NoProvidersException;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.appdata.bc;
import com.yelp.android.av.g;
import com.yelp.android.debug.Debug;
import com.yelp.android.util.YelpLog;

public abstract class h<Params, Progress, Result>
  extends g<Params, Progress, Result>
{
  public static final long DEFAULT_LOCATION_TIMEOUT = 8000L;
  static final float METERS_IN_A_MILE = 1609.344F;
  private final LocationService.Accuracies mAccuracy;
  private String mAccuracyKey = "accuracy";
  private String mLatitudeKey = "latitude";
  protected Location mLocation;
  private final i<Params, Progress, Result> mLocationCallback;
  private final LocationService mLocationService = AppData.b().n();
  private long mLocationTimeout = 8000L;
  private String mLongitudeKey = "longitude";
  private final LocationService.Recentness mRecentness;
  private final LocationService.AccuracyUnit mUnit;
  private boolean mWaitingForLocation;
  
  h(ApiRequest.RequestType paramRequestType, String paramString, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, j<Result> paramj, LocationService.AccuracyUnit paramAccuracyUnit)
  {
    super(paramRequestType, paramString, paramj);
    Log.d("LOCDEBUG", "init accuracy:" + paramAccuracies.name() + " recentness:" + paramRecentness.name());
    mAccuracy = paramAccuracies;
    mRecentness = paramRecentness;
    mUnit = paramAccuracyUnit;
    mLocationCallback = new i(this);
  }
  
  protected void addLocationToUrl(Location paramLocation)
  {
    addObfuscatedUrlParam(mLatitudeKey, paramLocation.getLatitude());
    addObfuscatedUrlParam(mLongitudeKey, paramLocation.getLongitude());
    if (mUnit == LocationService.AccuracyUnit.METERS) {
      addUrlParam(mAccuracyKey, paramLocation.getAccuracy());
    }
    while (mUnit != LocationService.AccuracyUnit.MILES) {
      return;
    }
    addUrlParam(mAccuracyKey, paramLocation.getAccuracy() / 1609.344F);
  }
  
  public Result executeSynchronouslyWithLocation(bc parambc, Debug paramDebug, boolean paramBoolean)
  {
    if (mLocation == null) {}
    try
    {
      Pair localPair = mLocationService.a(mAccuracy, mRecentness);
      if (first != null) {
        mLocation = ((Location)first);
      }
      onPreExecute();
      return (Result)executeSynchronously(parambc, paramDebug, paramBoolean);
    }
    catch (LocationService.NoProvidersException localNoProvidersException)
    {
      j localj;
      do
      {
        localj = (j)getCallback();
      } while ((localj == null) || (localj.a()));
    }
    return null;
  }
  
  public void executeWithLocation(Params... paramVarArgs)
  {
    if ((mLocation != null) && (mRecentness.satisfies(mLocation)))
    {
      startRequest(paramVarArgs);
      return;
    }
    mWaitingForLocation = true;
    mLocationCallback.a(paramVarArgs);
    mLocationService.a(mAccuracy, mRecentness, mLocationCallback, mLocationTimeout);
  }
  
  Criteria getCriteria()
  {
    Criteria localCriteria = new Criteria();
    localCriteria.setAccuracy(1);
    return localCriteria;
  }
  
  public Location getLocation()
  {
    return mLocation;
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return true;
  }
  
  public boolean isWaitingForLocation()
  {
    return mWaitingForLocation;
  }
  
  protected void onCancelled()
  {
    super.onCancelled();
    mLocationService.a(mLocationCallback);
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    if (mLocation != null) {
      addLocationToUrl(mLocation);
    }
  }
  
  protected void setAccuracyKey(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("accuracy key cannot be null");
    }
    mAccuracyKey = paramString;
  }
  
  protected void setLatitudeKey(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("latitude key cannot be null");
    }
    mLatitudeKey = paramString;
  }
  
  public h<Params, Progress, Result> setLocation(Location paramLocation)
  {
    mLocation = paramLocation;
    return this;
  }
  
  public void setLocationTimeout(long paramLong)
  {
    mLocationTimeout = paramLong;
  }
  
  protected void setLongitudeKey(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("longitude key cannot be null");
    }
    mLongitudeKey = paramString;
  }
  
  public void startRequest(Params... paramVarArgs)
  {
    if (getStatus() != AsyncTask.Status.PENDING)
    {
      YelpLog.w(this, "Tried to start request twice");
      return;
    }
    mWaitingForLocation = false;
    j localj = (j)getCallback();
    if (localj != null) {
      localj.a(mLocation);
    }
    execute(paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */