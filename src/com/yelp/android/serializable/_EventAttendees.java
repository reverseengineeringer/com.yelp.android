package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _EventAttendees
  implements Parcelable
{
  protected List<String> mAttendeeIds;
  protected List<User> mAttendees;
  protected String mAttendeesText;
  protected int[] mSectionCounts;
  protected List<String> mSectionNames;
  
  protected _EventAttendees() {}
  
  protected _EventAttendees(List<String> paramList1, List<String> paramList2, List<User> paramList, String paramString, int[] paramArrayOfInt)
  {
    this();
    mAttendeeIds = paramList1;
    mSectionNames = paramList2;
    mAttendees = paramList;
    mAttendeesText = paramString;
    mSectionCounts = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<String> getAttendeeIds()
  {
    return mAttendeeIds;
  }
  
  public List<User> getAttendees()
  {
    return mAttendees;
  }
  
  public String getAttendeesText()
  {
    return mAttendeesText;
  }
  
  public int[] getSectionCounts()
  {
    return mSectionCounts;
  }
  
  public List<String> getSectionNames()
  {
    return mSectionNames;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("attendee_ids"))
    {
      mAttendeeIds = JsonUtil.getStringList(paramJSONObject.optJSONArray("attendee_ids"));
      if (paramJSONObject.isNull("section_names")) {
        break label151;
      }
      mSectionNames = JsonUtil.getStringList(paramJSONObject.optJSONArray("section_names"));
      label44:
      if (paramJSONObject.isNull("attendees")) {
        break label161;
      }
    }
    label151:
    label161:
    for (mAttendees = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("attendees"), User.CREATOR);; mAttendees = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("attendees_text")) {
        mAttendeesText = paramJSONObject.optString("attendees_text");
      }
      if (paramJSONObject.isNull("section_counts")) {
        return;
      }
      paramJSONObject = paramJSONObject.getJSONArray("section_counts");
      int j = paramJSONObject.length();
      mSectionCounts = new int[j];
      int i = 0;
      while (i < j)
      {
        mSectionCounts[i] = paramJSONObject.getInt(i);
        i += 1;
      }
      mAttendeeIds = Collections.emptyList();
      break;
      mSectionNames = Collections.emptyList();
      break label44;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAttendeeIds = paramParcel.createStringArrayList();
    mSectionNames = paramParcel.createStringArrayList();
    mAttendees = paramParcel.createTypedArrayList(User.CREATOR);
    mAttendeesText = paramParcel.readString();
    mSectionCounts = paramParcel.createIntArray();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(mAttendeeIds);
    paramParcel.writeStringList(mSectionNames);
    paramParcel.writeTypedList(mAttendees);
    paramParcel.writeString(mAttendeesText);
    paramParcel.writeIntArray(mSectionCounts);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._EventAttendees
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */