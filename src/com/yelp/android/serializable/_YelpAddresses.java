package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _YelpAddresses
  implements Parcelable
{
  protected YelpAddress mPrimaryLanguage;
  protected YelpAddress mSecondaryLanguage;
  
  protected _YelpAddresses() {}
  
  protected _YelpAddresses(YelpAddress paramYelpAddress1, YelpAddress paramYelpAddress2)
  {
    this();
    mPrimaryLanguage = paramYelpAddress1;
    mSecondaryLanguage = paramYelpAddress2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpAddress getPrimaryLanguage()
  {
    return mPrimaryLanguage;
  }
  
  public YelpAddress getSecondaryLanguage()
  {
    return mSecondaryLanguage;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("primary_language")) {
      mPrimaryLanguage = ((YelpAddress)YelpAddress.CREATOR.parse(paramJSONObject.getJSONObject("primary_language")));
    }
    if (!paramJSONObject.isNull("secondary_language")) {
      mSecondaryLanguage = ((YelpAddress)YelpAddress.CREATOR.parse(paramJSONObject.getJSONObject("secondary_language")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mPrimaryLanguage = ((YelpAddress)paramParcel.readParcelable(YelpAddress.class.getClassLoader()));
    mSecondaryLanguage = ((YelpAddress)paramParcel.readParcelable(YelpAddress.class.getClassLoader()));
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mPrimaryLanguage != null) {
      localJSONObject.put("primary_language", mPrimaryLanguage.writeJSON());
    }
    if (mSecondaryLanguage != null) {
      localJSONObject.put("secondary_language", mSecondaryLanguage.writeJSON());
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mPrimaryLanguage, 0);
    paramParcel.writeParcelable(mSecondaryLanguage, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpAddresses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */