package com.yelp.android.serializable;

import android.os.SystemClock;
import org.json.JSONObject;

public class OfferRedemption
  extends _OfferRedemption
{
  public static final ah<OfferRedemption> CREATOR = new bp();
  
  public long getSystemClockExpiration()
  {
    return mSystemClockExpiration;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mSystemClockExpiration = (SystemClock.elapsedRealtime() + mSecondsToRedeem * 1000);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.OfferRedemption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */