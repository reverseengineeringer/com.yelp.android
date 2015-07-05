package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class bm
  extends ah<Offer>
{
  public Offer a(Parcel paramParcel)
  {
    Offer localOffer = new Offer();
    localOffer.readFromParcel(paramParcel);
    return localOffer;
  }
  
  public Offer a(JSONObject paramJSONObject)
  {
    Offer localOffer = new Offer();
    localOffer.readFromJson(paramJSONObject);
    return localOffer;
  }
  
  public Offer[] a(int paramInt)
  {
    return new Offer[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */