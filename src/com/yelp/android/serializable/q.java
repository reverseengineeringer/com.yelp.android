package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class q
  extends JsonParser.DualCreator<BusinessSearchResult>
{
  public BusinessSearchResult a(Parcel paramParcel)
  {
    BusinessSearchResult localBusinessSearchResult = new BusinessSearchResult();
    localBusinessSearchResult.readFromParcel(paramParcel);
    return localBusinessSearchResult;
  }
  
  public BusinessSearchResult a(JSONObject paramJSONObject)
  {
    BusinessSearchResult localBusinessSearchResult = new BusinessSearchResult();
    localBusinessSearchResult.readFromJson(paramJSONObject);
    return localBusinessSearchResult;
  }
  
  public BusinessSearchResult[] a(int paramInt)
  {
    return new BusinessSearchResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */