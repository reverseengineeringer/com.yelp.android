package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

abstract class _AttributeFilters
  implements Parcelable
{
  protected List<AttributeFilter> mSuggestedFilters;
  
  protected _AttributeFilters() {}
  
  protected _AttributeFilters(List<AttributeFilter> paramList)
  {
    this();
    mSuggestedFilters = paramList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<AttributeFilter> getSuggestedFilters()
  {
    return mSuggestedFilters;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("suggested_filters"))
    {
      mSuggestedFilters = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("suggested_filters"), AttributeFilter.CREATOR);
      return;
    }
    mSuggestedFilters = Collections.emptyList();
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mSuggestedFilters = paramParcel.createTypedArrayList(AttributeFilter.CREATOR);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mSuggestedFilters);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._AttributeFilters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */