package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ha
  implements Parcelable
{
  @Deprecated
  public static final Parcelable.Creator<ha> CREATOR = new ha.1();
  private String CE;
  private String CF;
  private String mValue;
  
  @Deprecated
  public ha() {}
  
  @Deprecated
  ha(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public ha(String paramString1, String paramString2, String paramString3)
  {
    CE = paramString1;
    CF = paramString2;
    mValue = paramString3;
  }
  
  @Deprecated
  private void readFromParcel(Parcel paramParcel)
  {
    CE = paramParcel.readString();
    CF = paramParcel.readString();
    mValue = paramParcel.readString();
  }
  
  @Deprecated
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return CE;
  }
  
  public String getValue()
  {
    return mValue;
  }
  
  @Deprecated
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(CE);
    paramParcel.writeString(CF);
    paramParcel.writeString(mValue);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */