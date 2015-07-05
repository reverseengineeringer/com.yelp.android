package com.yelp.android.ui.activities;

import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.AsyncTask;
import android.util.Log;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

class cc
  extends AsyncTask<Void, Void, Address>
{
  private final Location b;
  
  public cc(ActivityCreateAccount paramActivityCreateAccount, Location paramLocation)
  {
    b = paramLocation;
  }
  
  protected Address a(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = new Geocoder(a).getFromLocation(b.getLatitude(), b.getLongitude(), 1);
      if ((paramVarArgs != null) && (paramVarArgs.size() > 0))
      {
        paramVarArgs = (Address)paramVarArgs.get(0);
        return paramVarArgs;
      }
    }
    catch (Exception paramVarArgs)
    {
      Log.i("ActivityCreateAccount", "Error geo-coding current location.", paramVarArgs);
    }
    return null;
  }
  
  protected void a(Address paramAddress)
  {
    if ((paramAddress != null) && (ActivityCreateAccount.h(a).get())) {
      ActivityCreateAccount.a(a, paramAddress);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */