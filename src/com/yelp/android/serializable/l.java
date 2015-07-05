package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class l
  extends JsonParser.DualCreator<BusinessCategorySuggest>
{
  public BusinessCategorySuggest a(Parcel paramParcel)
  {
    BusinessCategorySuggest localBusinessCategorySuggest = new BusinessCategorySuggest();
    localBusinessCategorySuggest.readFromParcel(paramParcel);
    return localBusinessCategorySuggest;
  }
  
  public BusinessCategorySuggest a(JSONObject paramJSONObject)
  {
    BusinessCategorySuggest localBusinessCategorySuggest = new BusinessCategorySuggest();
    localBusinessCategorySuggest.readFromJson(paramJSONObject);
    return localBusinessCategorySuggest;
  }
  
  public BusinessCategorySuggest[] a(int paramInt)
  {
    return new BusinessCategorySuggest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */