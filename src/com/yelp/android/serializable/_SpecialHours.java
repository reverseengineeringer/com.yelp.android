package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _SpecialHours
  implements Parcelable
{
  protected int[] mDays;
  protected String mType;
  
  protected _SpecialHours() {}
  
  protected _SpecialHours(String paramString, int[] paramArrayOfInt)
  {
    this();
    mType = paramString;
    mDays = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int[] getDays()
  {
    return mDays;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("type")) {
      mType = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("days"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("days");
      int j = paramJSONObject.length();
      mDays = new int[j];
      int i = 0;
      while (i < j)
      {
        mDays[i] = paramJSONObject.getInt(i);
        i += 1;
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mType = paramParcel.readString();
    mDays = paramParcel.createIntArray();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mType != null) {
      localJSONObject.put("type", mType);
    }
    if (mDays != null)
    {
      JSONArray localJSONArray = new JSONArray();
      int[] arrayOfInt = mDays;
      int j = arrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(arrayOfInt[i]);
        i += 1;
      }
      localJSONObject.put("days", localJSONArray);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mType);
    paramParcel.writeIntArray(mDays);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._SpecialHours
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */