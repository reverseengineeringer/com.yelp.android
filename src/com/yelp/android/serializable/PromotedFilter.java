package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class PromotedFilter
  extends _PromotedFilter
  implements Parcelable
{
  public static final JsonParser.DualCreator<PromotedFilter> CREATOR = new cb();
  protected boolean mIsOn;
  protected PromotedFilter.PromotedFilterType mPromotedFilterType;
  
  public PromotedFilter.PromotedFilterType getFilterType()
  {
    return mPromotedFilterType;
  }
  
  public boolean isOn()
  {
    return mIsOn;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    PromotedFilter.PromotedFilterType[] arrayOfPromotedFilterType = PromotedFilter.PromotedFilterType.values();
    int j = arrayOfPromotedFilterType.length;
    int i = 0;
    while (i < j)
    {
      PromotedFilter.PromotedFilterType localPromotedFilterType = arrayOfPromotedFilterType[i];
      if (localPromotedFilterType.name().equalsIgnoreCase(mType)) {
        mPromotedFilterType = localPromotedFilterType;
      }
      i += 1;
    }
    paramJSONObject = paramJSONObject.getJSONObject("params");
    if (mPromotedFilterType != null) {}
    switch (cc.a[mPromotedFilterType.ordinal()])
    {
    default: 
      return;
    }
    mIsOn = paramJSONObject.optBoolean("default_value");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mIsOn = paramParcel.createBooleanArray()[0];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBooleanArray(new boolean[] { mIsOn });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PromotedFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */