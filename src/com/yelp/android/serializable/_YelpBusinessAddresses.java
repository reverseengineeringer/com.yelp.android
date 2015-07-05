package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _YelpBusinessAddresses
  implements Parcelable
{
  protected YelpDetailedAddress mAddress;
  protected String mLanguage;
  protected String mLocality;
  
  protected _YelpBusinessAddresses() {}
  
  protected _YelpBusinessAddresses(String paramString1, String paramString2, YelpDetailedAddress paramYelpDetailedAddress)
  {
    this();
    mLanguage = paramString1;
    mLocality = paramString2;
    mAddress = paramYelpDetailedAddress;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpDetailedAddress getAddress()
  {
    return mAddress;
  }
  
  public String getLanguage()
  {
    return mLanguage;
  }
  
  public String getLocality()
  {
    return mLocality;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("language")) {
      mLanguage = paramJSONObject.optString("language");
    }
    if (!paramJSONObject.isNull("locality")) {
      mLocality = paramJSONObject.optString("locality");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mLanguage = paramParcel.readString();
    mLocality = paramParcel.readString();
    mAddress = ((YelpDetailedAddress)paramParcel.readParcelable(YelpDetailedAddress.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mLanguage);
    paramParcel.writeString(mLocality);
    paramParcel.writeParcelable(mAddress, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpBusinessAddresses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */