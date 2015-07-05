package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _PhotoFeedback
  implements Parcelable
{
  protected YelpBusiness mCondensedBusiness;
  protected String mId;
  protected Photo mPhoto;
  protected Date mTimeUpdated;
  protected Passport mUserPassport;
  
  protected _PhotoFeedback() {}
  
  protected _PhotoFeedback(Date paramDate, Passport paramPassport, Photo paramPhoto, String paramString, YelpBusiness paramYelpBusiness)
  {
    this();
    mTimeUpdated = paramDate;
    mUserPassport = paramPassport;
    mPhoto = paramPhoto;
    mId = paramString;
    mCondensedBusiness = paramYelpBusiness;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpBusiness getCondensedBusiness()
  {
    return mCondensedBusiness;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public Photo getPhoto()
  {
    return mPhoto;
  }
  
  public Date getTimeUpdated()
  {
    return mTimeUpdated;
  }
  
  public Passport getUserPassport()
  {
    return mUserPassport;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_updated")) {
      mTimeUpdated = JsonUtil.parseTimestamp(paramJSONObject, "time_updated");
    }
    if (!paramJSONObject.isNull("user_passport")) {
      mUserPassport = ((Passport)Passport.CREATOR.parse(paramJSONObject.getJSONObject("user_passport")));
    }
    if (!paramJSONObject.isNull("photo")) {
      mPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("business")) {
      mCondensedBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeUpdated = new Date(l);
    }
    mUserPassport = ((Passport)paramParcel.readParcelable(Passport.class.getClassLoader()));
    mPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mId = paramParcel.readString();
    mCondensedBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mTimeUpdated == null) {}
    for (long l = -2147483648L;; l = mTimeUpdated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeParcelable(mUserPassport, 0);
      paramParcel.writeParcelable(mPhoto, 0);
      paramParcel.writeString(mId);
      paramParcel.writeParcelable(mCondensedBusiness, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PhotoFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */