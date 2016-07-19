package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class EventParcel
  implements SafeParcelable
{
  public static final u CREATOR = new u();
  public final int a;
  public final String b;
  public final EventParams c;
  public final String d;
  public final long e;
  
  EventParcel(int paramInt, String paramString1, EventParams paramEventParams, String paramString2, long paramLong)
  {
    a = paramInt;
    b = paramString1;
    c = paramEventParams;
    d = paramString2;
    e = paramLong;
  }
  
  public EventParcel(String paramString1, EventParams paramEventParams, String paramString2, long paramLong)
  {
    a = 1;
    b = paramString1;
    c = paramEventParams;
    d = paramString2;
    e = paramLong;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "origin=" + d + ",name=" + b + ",params=" + c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    u.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.EventParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */