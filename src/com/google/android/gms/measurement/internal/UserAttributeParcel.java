package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public class UserAttributeParcel
  implements SafeParcelable
{
  public static final i CREATOR = new i();
  public final int a;
  public final String b;
  public final long c;
  public final Long d;
  public final Float e;
  public final String f;
  public final String g;
  
  UserAttributeParcel(int paramInt, String paramString1, long paramLong, Long paramLong1, Float paramFloat, String paramString2, String paramString3)
  {
    a = paramInt;
    b = paramString1;
    c = paramLong;
    d = paramLong1;
    e = paramFloat;
    f = paramString2;
    g = paramString3;
  }
  
  UserAttributeParcel(j paramj)
  {
    this(b, c, d, a);
  }
  
  UserAttributeParcel(String paramString1, long paramLong, Object paramObject, String paramString2)
  {
    zzx.zzcM(paramString1);
    a = 1;
    b = paramString1;
    c = paramLong;
    g = paramString2;
    if (paramObject == null)
    {
      d = null;
      e = null;
      f = null;
      return;
    }
    if ((paramObject instanceof Long))
    {
      d = ((Long)paramObject);
      e = null;
      f = null;
      return;
    }
    if ((paramObject instanceof Float))
    {
      d = null;
      e = ((Float)paramObject);
      f = null;
      return;
    }
    if ((paramObject instanceof String))
    {
      d = null;
      e = null;
      f = ((String)paramObject);
      return;
    }
    throw new IllegalArgumentException("User attribute given of un-supported type");
  }
  
  public Object a()
  {
    if (d != null) {
      return d;
    }
    if (e != null) {
      return e;
    }
    if (f != null) {
      return f;
    }
    return null;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.UserAttributeParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */