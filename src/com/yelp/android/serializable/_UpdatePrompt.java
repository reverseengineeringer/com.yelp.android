package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _UpdatePrompt
  implements Parcelable
{
  protected int mAppLaunchesBetweenUpdatePrompts;
  protected String mMessage;
  
  protected _UpdatePrompt() {}
  
  protected _UpdatePrompt(String paramString, int paramInt)
  {
    this();
    mMessage = paramString;
    mAppLaunchesBetweenUpdatePrompts = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getAppLaunchesBetweenUpdatePrompts()
  {
    return mAppLaunchesBetweenUpdatePrompts;
  }
  
  public String getMessage()
  {
    return mMessage;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("message")) {
      mMessage = paramJSONObject.optString("message");
    }
    mAppLaunchesBetweenUpdatePrompts = paramJSONObject.optInt("app_launches_between_update_prompts");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mMessage = paramParcel.readString();
    mAppLaunchesBetweenUpdatePrompts = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mMessage);
    paramParcel.writeInt(mAppLaunchesBetweenUpdatePrompts);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._UpdatePrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */