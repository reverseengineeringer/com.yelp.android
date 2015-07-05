package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _FromThisBusiness
  implements Parcelable
{
  protected String mHistory;
  protected BusinessRepresentative mRepresentative;
  protected boolean mShowTeaser;
  protected String mSpecialties;
  protected int mYearEstablished;
  
  protected _FromThisBusiness() {}
  
  protected _FromThisBusiness(BusinessRepresentative paramBusinessRepresentative, String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    this();
    mRepresentative = paramBusinessRepresentative;
    mSpecialties = paramString1;
    mHistory = paramString2;
    mShowTeaser = paramBoolean;
    mYearEstablished = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getHistory()
  {
    return mHistory;
  }
  
  public BusinessRepresentative getRepresentative()
  {
    return mRepresentative;
  }
  
  public boolean getShowTeaser()
  {
    return mShowTeaser;
  }
  
  public String getSpecialties()
  {
    return mSpecialties;
  }
  
  public int getYearEstablished()
  {
    return mYearEstablished;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("representative")) {
      mRepresentative = ((BusinessRepresentative)BusinessRepresentative.CREATOR.parse(paramJSONObject.getJSONObject("representative")));
    }
    if (!paramJSONObject.isNull("specialties")) {
      mSpecialties = paramJSONObject.optString("specialties");
    }
    if (!paramJSONObject.isNull("history")) {
      mHistory = paramJSONObject.optString("history");
    }
    mShowTeaser = paramJSONObject.optBoolean("show_teaser");
    mYearEstablished = paramJSONObject.optInt("year_established");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mRepresentative = ((BusinessRepresentative)paramParcel.readParcelable(BusinessRepresentative.class.getClassLoader()));
    mSpecialties = paramParcel.readString();
    mHistory = paramParcel.readString();
    mShowTeaser = paramParcel.createBooleanArray()[0];
    mYearEstablished = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mRepresentative != null) {
      localJSONObject.put("representative", mRepresentative.writeJSON());
    }
    if (mSpecialties != null) {
      localJSONObject.put("specialties", mSpecialties);
    }
    if (mHistory != null) {
      localJSONObject.put("history", mHistory);
    }
    localJSONObject.put("show_teaser", mShowTeaser);
    localJSONObject.put("year_established", mYearEstablished);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mRepresentative, 0);
    paramParcel.writeString(mSpecialties);
    paramParcel.writeString(mHistory);
    paramParcel.writeBooleanArray(new boolean[] { mShowTeaser });
    paramParcel.writeInt(mYearEstablished);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._FromThisBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */