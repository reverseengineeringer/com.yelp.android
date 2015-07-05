package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _YelpDetailedAddress
  implements Parcelable
{
  protected String mAddress1;
  protected String mAddress2;
  protected String mAddress3;
  
  protected _YelpDetailedAddress() {}
  
  protected _YelpDetailedAddress(String paramString1, String paramString2, String paramString3)
  {
    this();
    mAddress1 = paramString1;
    mAddress2 = paramString2;
    mAddress3 = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAddress1()
  {
    return mAddress1;
  }
  
  public String getAddress2()
  {
    return mAddress2;
  }
  
  public String getAddress3()
  {
    return mAddress3;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("address1")) {
      mAddress1 = paramJSONObject.optString("address1");
    }
    if (!paramJSONObject.isNull("address2")) {
      mAddress2 = paramJSONObject.optString("address2");
    }
    if (!paramJSONObject.isNull("address3")) {
      mAddress3 = paramJSONObject.optString("address3");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAddress1 = paramParcel.readString();
    mAddress2 = paramParcel.readString();
    mAddress3 = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mAddress1);
    paramParcel.writeString(mAddress2);
    paramParcel.writeString(mAddress3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpDetailedAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */