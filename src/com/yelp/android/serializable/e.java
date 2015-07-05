package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class e
  extends JsonParser.DualCreator<AttributeFilter>
{
  public AttributeFilter a(Parcel paramParcel)
  {
    AttributeFilter localAttributeFilter = new AttributeFilter();
    localAttributeFilter.readFromParcel(paramParcel);
    return localAttributeFilter;
  }
  
  public AttributeFilter a(JSONObject paramJSONObject)
  {
    AttributeFilter localAttributeFilter = new AttributeFilter();
    localAttributeFilter.readFromJson(paramJSONObject);
    return localAttributeFilter;
  }
  
  public AttributeFilter[] a(int paramInt)
  {
    return new AttributeFilter[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */