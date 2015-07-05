package com.yelp.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;

public abstract class ContactsFetcher$Contact
  implements Parcelable
{
  protected Bitmap mBitmap;
  protected String mEmail;
  protected String mName;
  
  public String getEmail(Context paramContext)
  {
    if (mEmail == null) {
      mEmail = loadEmail(paramContext);
    }
    return mEmail;
  }
  
  public String getName(Context paramContext)
  {
    if (mName == null) {
      mName = loadName(paramContext);
    }
    return mName;
  }
  
  public Bitmap getPhoto(Context paramContext)
  {
    if (mBitmap == null) {
      mBitmap = loadPhoto(paramContext);
    }
    return mBitmap;
  }
  
  protected abstract String loadEmail(Context paramContext);
  
  protected abstract String loadName(Context paramContext);
  
  protected abstract Bitmap loadPhoto(Context paramContext);
  
  protected void readFromParcel(Parcel paramParcel)
  {
    mEmail = paramParcel.readString();
    mName = paramParcel.readString();
    mBitmap = ((Bitmap)paramParcel.readParcelable(getClass().getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mEmail);
    paramParcel.writeString(mName);
    paramParcel.writeParcelable(mBitmap, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ContactsFetcher.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */