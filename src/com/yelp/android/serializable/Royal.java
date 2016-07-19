package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Royal
  implements Parcelable
{
  public static final Parcelable.Creator<Royal> CREATOR = new Royal.1();
  private final User a;
  private final String b;
  private final int c;
  private final String d;
  private final String e;
  
  private Royal(Parcel paramParcel)
  {
    a = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    b = paramParcel.readString();
    c = paramParcel.readInt();
    d = paramParcel.readString();
    e = paramParcel.readString();
  }
  
  public Royal(User paramUser, String paramString1, int paramInt, String paramString2, String paramString3)
  {
    a = paramUser;
    b = paramString1;
    c = paramInt;
    d = paramString2;
    e = paramString3;
  }
  
  public User a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return a.ae();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, paramInt);
    paramParcel.writeString(b);
    paramParcel.writeInt(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Royal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */