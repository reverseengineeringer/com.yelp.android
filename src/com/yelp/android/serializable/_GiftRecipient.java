package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;

abstract class _GiftRecipient
  implements Parcelable
{
  protected String mEmail;
  protected String mFrom;
  protected String mMessage;
  protected String mName;
  
  protected _GiftRecipient() {}
  
  protected _GiftRecipient(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this();
    mName = paramString1;
    mFrom = paramString2;
    mEmail = paramString3;
    mMessage = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEmail()
  {
    return mEmail;
  }
  
  public String getFrom()
  {
    return mFrom;
  }
  
  public String getMessage()
  {
    return mMessage;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mName = paramParcel.readString();
    mFrom = paramParcel.readString();
    mEmail = paramParcel.readString();
    mMessage = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mName);
    paramParcel.writeString(mFrom);
    paramParcel.writeString(mEmail);
    paramParcel.writeString(mMessage);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._GiftRecipient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */