package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Royal
  implements Parcelable
{
  public static final Parcelable.Creator<Royal> CREATOR = new cw();
  private final String mDescription;
  private final int mDukedoms;
  private final String mLocationName;
  private final String mTitle;
  private final User mUser;
  
  private Royal(Parcel paramParcel)
  {
    mUser = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    mLocationName = paramParcel.readString();
    mDukedoms = paramParcel.readInt();
    mTitle = paramParcel.readString();
    mDescription = paramParcel.readString();
  }
  
  public Royal(User paramUser, String paramString1, int paramInt, String paramString2, String paramString3)
  {
    mUser = paramUser;
    mLocationName = paramString1;
    mDukedoms = paramInt;
    mTitle = paramString2;
    mDescription = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public int getDukedomCount()
  {
    return mDukedoms;
  }
  
  public String getLocationName()
  {
    return mLocationName;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public User getUser()
  {
    return mUser;
  }
  
  public String getUserId()
  {
    return mUser.getId();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mUser, paramInt);
    paramParcel.writeString(mLocationName);
    paramParcel.writeInt(mDukedoms);
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mDescription);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Royal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */