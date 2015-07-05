package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ae
  extends JsonParser.DualCreator<DealPurchase>
{
  public DealPurchase a(Parcel paramParcel)
  {
    DealPurchase localDealPurchase = new DealPurchase();
    localDealPurchase.readFromParcel(paramParcel);
    return localDealPurchase;
  }
  
  public DealPurchase a(JSONObject paramJSONObject)
  {
    DealPurchase localDealPurchase = new DealPurchase();
    localDealPurchase.readFromJson(paramJSONObject);
    return localDealPurchase;
  }
  
  public DealPurchase[] a(int paramInt)
  {
    return new DealPurchase[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */