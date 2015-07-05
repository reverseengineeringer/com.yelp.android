package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

public class YelpBookmark
  implements Parcelable
{
  public static final Parcelable.Creator<YelpBookmark> CREATOR = new dw();
  public static ba<YelpBookmark> LAZY_CREATOR = new dv();
  private final String mBusinessId;
  private final Date mDateCreated;
  
  protected YelpBookmark(Parcel paramParcel)
  {
    mBusinessId = paramParcel.readString();
    long l = paramParcel.readLong();
    if (l != -1L) {}
    for (paramParcel = new Date(l);; paramParcel = null)
    {
      mDateCreated = paramParcel;
      return;
    }
  }
  
  public YelpBookmark(String paramString, Date paramDate)
  {
    mBusinessId = paramString;
    mDateCreated = paramDate;
  }
  
  public YelpBookmark(JSONObject paramJSONObject)
  {
    this(paramJSONObject.getString("business_id"), JsonUtil.parseTimestamp(paramJSONObject, "time_created"));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof YelpBookmark)) {
        return false;
      }
      paramObject = (YelpBookmark)paramObject;
      if (mBusinessId == null)
      {
        if (mBusinessId != null) {
          return false;
        }
      }
      else if (!mBusinessId.equals(mBusinessId)) {
        return false;
      }
    } while (mDateCreated.equals(mDateCreated));
    return false;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public Date getDateCreated()
  {
    return mDateCreated;
  }
  
  public int hashCode()
  {
    if (mBusinessId == null) {}
    for (int i = 0;; i = mBusinessId.hashCode())
    {
      long l = mDateCreated.getTime();
      return (i + 31) * 31 + (int)(l ^ l >>> 32);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mBusinessId);
    if (mDateCreated != null) {}
    for (long l = mDateCreated.getTime();; l = -1L)
    {
      paramParcel.writeLong(l);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBookmark
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */