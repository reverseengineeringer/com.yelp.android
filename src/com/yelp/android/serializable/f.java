package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class f
  extends JsonParser.DualCreator<AttributeFilters>
{
  public AttributeFilters a(Parcel paramParcel)
  {
    AttributeFilters localAttributeFilters = new AttributeFilters();
    localAttributeFilters.readFromParcel(paramParcel);
    return localAttributeFilters;
  }
  
  public AttributeFilters a(JSONObject paramJSONObject)
  {
    AttributeFilters localAttributeFilters = new AttributeFilters();
    localAttributeFilters.readFromJson(paramJSONObject);
    return localAttributeFilters;
  }
  
  public AttributeFilters[] a(int paramInt)
  {
    return new AttributeFilters[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */