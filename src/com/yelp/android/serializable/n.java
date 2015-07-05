package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class n
  extends ah<BusinessLocalAd>
{
  public BusinessLocalAd a(Parcel paramParcel)
  {
    BusinessLocalAd localBusinessLocalAd = new BusinessLocalAd();
    localBusinessLocalAd.readFromParcel(paramParcel);
    return localBusinessLocalAd;
  }
  
  public BusinessLocalAd a(JSONObject paramJSONObject)
  {
    BusinessLocalAd localBusinessLocalAd = new BusinessLocalAd();
    localBusinessLocalAd.readFromJson(paramJSONObject);
    return localBusinessLocalAd;
  }
  
  public BusinessLocalAd[] a(int paramInt)
  {
    return new BusinessLocalAd[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */