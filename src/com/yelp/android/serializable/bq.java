package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class bq
  extends ah<OfferSummary>
{
  public OfferSummary a(Parcel paramParcel)
  {
    OfferSummary localOfferSummary = new OfferSummary();
    localOfferSummary.readFromParcel(paramParcel);
    return localOfferSummary;
  }
  
  public OfferSummary a(JSONObject paramJSONObject)
  {
    OfferSummary localOfferSummary = new OfferSummary();
    localOfferSummary.readFromJson(paramJSONObject);
    return localOfferSummary;
  }
  
  public OfferSummary[] a(int paramInt)
  {
    return new OfferSummary[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */