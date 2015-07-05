package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _PrivacyPolicy
  implements Parcelable
{
  protected String mShareBasicInfoSource;
  protected String mShareBasicInfoStory;
  protected String mShareBasicInfoTime;
  protected String mShareDemographicsSource;
  protected String mShareDemographicsStory;
  protected String mShareDemographicsTime;
  protected String mShareProfileSource;
  protected String mShareProfileStory;
  protected String mShareProfileTime;
  
  protected _PrivacyPolicy() {}
  
  protected _PrivacyPolicy(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    this();
    mShareProfileStory = paramString1;
    mShareProfileSource = paramString2;
    mShareProfileTime = paramString3;
    mShareDemographicsStory = paramString4;
    mShareDemographicsSource = paramString5;
    mShareDemographicsTime = paramString6;
    mShareBasicInfoStory = paramString7;
    mShareBasicInfoSource = paramString8;
    mShareBasicInfoTime = paramString9;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getShareBasicInfoSource()
  {
    return mShareBasicInfoSource;
  }
  
  public String getShareBasicInfoStory()
  {
    return mShareBasicInfoStory;
  }
  
  public String getShareBasicInfoTime()
  {
    return mShareBasicInfoTime;
  }
  
  public String getShareDemographicsSource()
  {
    return mShareDemographicsSource;
  }
  
  public String getShareDemographicsStory()
  {
    return mShareDemographicsStory;
  }
  
  public String getShareDemographicsTime()
  {
    return mShareDemographicsTime;
  }
  
  public String getShareProfileSource()
  {
    return mShareProfileSource;
  }
  
  public String getShareProfileStory()
  {
    return mShareProfileStory;
  }
  
  public String getShareProfileTime()
  {
    return mShareProfileTime;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("share_user_story_title")) {
      mShareProfileStory = paramJSONObject.optString("share_user_story_title");
    }
    if (!paramJSONObject.isNull("share_user_source_title")) {
      mShareProfileSource = paramJSONObject.optString("share_user_source_title");
    }
    if (!paramJSONObject.isNull("share_user_time_title")) {
      mShareProfileTime = paramJSONObject.optString("share_user_time_title");
    }
    if (!paramJSONObject.isNull("share_demo_story_title")) {
      mShareDemographicsStory = paramJSONObject.optString("share_demo_story_title");
    }
    if (!paramJSONObject.isNull("share_demo_source_title")) {
      mShareDemographicsSource = paramJSONObject.optString("share_demo_source_title");
    }
    if (!paramJSONObject.isNull("share_demo_time_title")) {
      mShareDemographicsTime = paramJSONObject.optString("share_demo_time_title");
    }
    if (!paramJSONObject.isNull("share_nothing_story_title")) {
      mShareBasicInfoStory = paramJSONObject.optString("share_nothing_story_title");
    }
    if (!paramJSONObject.isNull("share_nothing_source_title")) {
      mShareBasicInfoSource = paramJSONObject.optString("share_nothing_source_title");
    }
    if (!paramJSONObject.isNull("share_nothing_time_title")) {
      mShareBasicInfoTime = paramJSONObject.optString("share_nothing_time_title");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mShareProfileStory = paramParcel.readString();
    mShareProfileSource = paramParcel.readString();
    mShareProfileTime = paramParcel.readString();
    mShareDemographicsStory = paramParcel.readString();
    mShareDemographicsSource = paramParcel.readString();
    mShareDemographicsTime = paramParcel.readString();
    mShareBasicInfoStory = paramParcel.readString();
    mShareBasicInfoSource = paramParcel.readString();
    mShareBasicInfoTime = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mShareProfileStory);
    paramParcel.writeString(mShareProfileSource);
    paramParcel.writeString(mShareProfileTime);
    paramParcel.writeString(mShareDemographicsStory);
    paramParcel.writeString(mShareDemographicsSource);
    paramParcel.writeString(mShareDemographicsTime);
    paramParcel.writeString(mShareBasicInfoStory);
    paramParcel.writeString(mShareBasicInfoSource);
    paramParcel.writeString(mShareBasicInfoTime);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PrivacyPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */