package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _Movie
  implements Parcelable
{
  protected String mImageUrl;
  protected String mRating;
  protected int mRuntime;
  protected int[] mShowtimes;
  protected String mTicketingUrl;
  protected String mTitle;
  
  protected _Movie() {}
  
  protected _Movie(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, int[] paramArrayOfInt)
  {
    this();
    mTitle = paramString1;
    mRating = paramString2;
    mImageUrl = paramString3;
    mTicketingUrl = paramString4;
    mRuntime = paramInt;
    mShowtimes = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public String getRating()
  {
    return mRating;
  }
  
  public int getRuntime()
  {
    return mRuntime;
  }
  
  public int[] getShowtimes()
  {
    return mShowtimes;
  }
  
  public String getTicketingUrl()
  {
    return mTicketingUrl;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("rating")) {
      mRating = paramJSONObject.optString("rating");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("ticketing_url")) {
      mTicketingUrl = paramJSONObject.optString("ticketing_url");
    }
    mRuntime = paramJSONObject.optInt("runtime");
    if (!paramJSONObject.isNull("showtime"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("showtime");
      int j = paramJSONObject.length();
      mShowtimes = new int[j];
      int i = 0;
      while (i < j)
      {
        mShowtimes[i] = paramJSONObject.getInt(i);
        i += 1;
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mTitle = paramParcel.readString();
    mRating = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mTicketingUrl = paramParcel.readString();
    mRuntime = paramParcel.readInt();
    mShowtimes = paramParcel.createIntArray();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mRating != null) {
      localJSONObject.put("rating", mRating);
    }
    if (mImageUrl != null) {
      localJSONObject.put("image_url", mImageUrl);
    }
    if (mTicketingUrl != null) {
      localJSONObject.put("ticketing_url", mTicketingUrl);
    }
    localJSONObject.put("runtime", mRuntime);
    if (mShowtimes != null)
    {
      JSONArray localJSONArray = new JSONArray();
      int[] arrayOfInt = mShowtimes;
      int j = arrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(arrayOfInt[i]);
        i += 1;
      }
      localJSONObject.put("showtime", localJSONArray);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mRating);
    paramParcel.writeString(mImageUrl);
    paramParcel.writeString(mTicketingUrl);
    paramParcel.writeInt(mRuntime);
    paramParcel.writeIntArray(mShowtimes);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Movie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */