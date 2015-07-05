package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cb
  extends JsonParser.DualCreator<PromotedFilter>
{
  public PromotedFilter a(Parcel paramParcel)
  {
    PromotedFilter localPromotedFilter = new PromotedFilter();
    localPromotedFilter.readFromParcel(paramParcel);
    return localPromotedFilter;
  }
  
  public PromotedFilter a(JSONObject paramJSONObject)
  {
    PromotedFilter localPromotedFilter = new PromotedFilter();
    localPromotedFilter.readFromJson(paramJSONObject);
    return localPromotedFilter;
  }
  
  public PromotedFilter[] a(int paramInt)
  {
    return new PromotedFilter[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */