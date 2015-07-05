package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class o
  extends JsonParser.DualCreator<BusinessOwnerReply>
{
  public BusinessOwnerReply a(Parcel paramParcel)
  {
    BusinessOwnerReply localBusinessOwnerReply = new BusinessOwnerReply();
    localBusinessOwnerReply.readFromParcel(paramParcel);
    return localBusinessOwnerReply;
  }
  
  public BusinessOwnerReply a(JSONObject paramJSONObject)
  {
    BusinessOwnerReply localBusinessOwnerReply = new BusinessOwnerReply();
    localBusinessOwnerReply.readFromJson(paramJSONObject);
    return localBusinessOwnerReply;
  }
  
  public BusinessOwnerReply[] a(int paramInt)
  {
    return new BusinessOwnerReply[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */