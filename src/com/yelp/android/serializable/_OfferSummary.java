package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

abstract class _OfferSummary
  implements Parcelable
{
  protected String mBusinessId;
  protected int mCount;
  protected List<String> mNames;
  
  protected _OfferSummary() {}
  
  protected _OfferSummary(List<String> paramList, String paramString, int paramInt)
  {
    this();
    mNames = paramList;
    mBusinessId = paramString;
    mCount = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public int getCount()
  {
    return mCount;
  }
  
  public List<String> getNames()
  {
    return mNames;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("names")) {}
    for (mNames = JsonUtil.getStringList(paramJSONObject.optJSONArray("names"));; mNames = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("business_id")) {
        mBusinessId = paramJSONObject.optString("business_id");
      }
      mCount = paramJSONObject.optInt("count");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mNames = paramParcel.createStringArrayList();
    mBusinessId = paramParcel.readString();
    mCount = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(mNames);
    paramParcel.writeString(mBusinessId);
    paramParcel.writeInt(mCount);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._OfferSummary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */