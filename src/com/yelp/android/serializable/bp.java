package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class bp
  extends ah<OfferRedemption>
{
  public OfferRedemption a(Parcel paramParcel)
  {
    OfferRedemption localOfferRedemption = new OfferRedemption();
    localOfferRedemption.readFromParcel(paramParcel);
    return localOfferRedemption;
  }
  
  public OfferRedemption a(JSONObject paramJSONObject)
  {
    OfferRedemption localOfferRedemption = new OfferRedemption();
    localOfferRedemption.readFromJson(paramJSONObject);
    return localOfferRedemption;
  }
  
  public OfferRedemption[] a(int paramInt)
  {
    return new OfferRedemption[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */