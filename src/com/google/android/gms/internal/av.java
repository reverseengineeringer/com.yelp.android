package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@ey
public final class av
  implements SafeParcelable
{
  public static final aw CREATOR = new aw();
  public final Bundle extras;
  public final long od;
  public final int oe;
  public final List<String> of;
  public final boolean og;
  public final int oh;
  public final boolean oi;
  public final String oj;
  public final bj ok;
  public final Location ol;
  public final String om;
  public final Bundle on;
  public final int versionCode;
  
  public av(int paramInt1, long paramLong, Bundle paramBundle1, int paramInt2, List<String> paramList, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, bj parambj, Location paramLocation, String paramString2, Bundle paramBundle2)
  {
    versionCode = paramInt1;
    od = paramLong;
    extras = paramBundle1;
    oe = paramInt2;
    of = paramList;
    og = paramBoolean1;
    oh = paramInt3;
    oi = paramBoolean2;
    oj = paramString1;
    ok = parambj;
    ol = paramLocation;
    om = paramString2;
    on = paramBundle2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aw.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */