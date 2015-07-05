package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

abstract class _EventRsvp
  implements Parcelable
{
  protected String mEventRsvpStatus;
  protected String mEventRsvpStatusText;
  protected String mFreeformQuestion;
  protected String mFreeformResponse;
  protected int mGuestsAllowed;
  protected String mPartyPassImageUrl;
  protected List<String> mUserGuests;
  protected boolean mUserHasReplied;
  
  protected _EventRsvp() {}
  
  protected _EventRsvp(List<String> paramList, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, int paramInt)
  {
    this();
    mUserGuests = paramList;
    mEventRsvpStatus = paramString1;
    mEventRsvpStatusText = paramString2;
    mFreeformQuestion = paramString3;
    mFreeformResponse = paramString4;
    mPartyPassImageUrl = paramString5;
    mUserHasReplied = paramBoolean;
    mGuestsAllowed = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEventRsvpStatus()
  {
    return mEventRsvpStatus;
  }
  
  public String getEventRsvpStatusText()
  {
    return mEventRsvpStatusText;
  }
  
  public String getFreeformQuestion()
  {
    return mFreeformQuestion;
  }
  
  public String getFreeformResponse()
  {
    return mFreeformResponse;
  }
  
  public int getGuestsAllowed()
  {
    return mGuestsAllowed;
  }
  
  public String getPartyPassImageUrl()
  {
    return mPartyPassImageUrl;
  }
  
  public List<String> getUserGuests()
  {
    return mUserGuests;
  }
  
  public boolean getUserHasReplied()
  {
    return mUserHasReplied;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("user_guests")) {}
    for (mUserGuests = JsonUtil.getStringList(paramJSONObject.optJSONArray("user_guests"));; mUserGuests = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("event_rsvp_status")) {
        mEventRsvpStatus = paramJSONObject.optString("event_rsvp_status");
      }
      if (!paramJSONObject.isNull("event_rsvp_status_text")) {
        mEventRsvpStatusText = paramJSONObject.optString("event_rsvp_status_text");
      }
      if (!paramJSONObject.isNull("freeform_question")) {
        mFreeformQuestion = paramJSONObject.optString("freeform_question");
      }
      if (!paramJSONObject.isNull("freeform_response")) {
        mFreeformResponse = paramJSONObject.optString("freeform_response");
      }
      if (!paramJSONObject.isNull("party_pass_image_url")) {
        mPartyPassImageUrl = paramJSONObject.optString("party_pass_image_url");
      }
      mUserHasReplied = paramJSONObject.optBoolean("user_has_replied");
      mGuestsAllowed = paramJSONObject.optInt("guests_allowed");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mUserGuests = paramParcel.createStringArrayList();
    mEventRsvpStatus = paramParcel.readString();
    mEventRsvpStatusText = paramParcel.readString();
    mFreeformQuestion = paramParcel.readString();
    mFreeformResponse = paramParcel.readString();
    mPartyPassImageUrl = paramParcel.readString();
    mUserHasReplied = paramParcel.createBooleanArray()[0];
    mGuestsAllowed = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(mUserGuests);
    paramParcel.writeString(mEventRsvpStatus);
    paramParcel.writeString(mEventRsvpStatusText);
    paramParcel.writeString(mFreeformQuestion);
    paramParcel.writeString(mFreeformResponse);
    paramParcel.writeString(mPartyPassImageUrl);
    paramParcel.writeBooleanArray(new boolean[] { mUserHasReplied });
    paramParcel.writeInt(mGuestsAllowed);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._EventRsvp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */