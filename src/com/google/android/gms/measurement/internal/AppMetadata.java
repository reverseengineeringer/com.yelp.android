package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public class AppMetadata
  implements SafeParcelable
{
  public static final l CREATOR = new l();
  public final int a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final long f;
  public final long g;
  public final String h;
  public final boolean i;
  public final boolean j;
  
  AppMetadata(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, long paramLong1, long paramLong2, String paramString5, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramLong1;
    g = paramLong2;
    h = paramString5;
    if (paramInt >= 3) {}
    for (i = paramBoolean1;; i = true)
    {
      j = paramBoolean2;
      return;
    }
  }
  
  AppMetadata(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong1, long paramLong2, String paramString5, boolean paramBoolean1, boolean paramBoolean2)
  {
    zzx.zzcM(paramString1);
    a = 4;
    b = paramString1;
    paramString1 = paramString2;
    if (TextUtils.isEmpty(paramString2)) {
      paramString1 = null;
    }
    c = paramString1;
    d = paramString3;
    e = paramString4;
    f = paramLong1;
    g = paramLong2;
    h = paramString5;
    i = paramBoolean1;
    j = paramBoolean2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.AppMetadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */