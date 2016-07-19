package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.List;

@Deprecated
public final class PlaceLocalization
  implements SafeParcelable
{
  public static final b CREATOR = new b();
  public final int a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final List<String> f;
  
  public PlaceLocalization(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramList;
  }
  
  public int describeContents()
  {
    b localb = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof PlaceLocalization)) {
        return false;
      }
      paramObject = (PlaceLocalization)paramObject;
    } while ((zzw.equal(b, b)) && (zzw.equal(c, c)) && (zzw.equal(d, d)) && (zzw.equal(e, e)) && (zzw.equal(f, f)));
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { b, c, d, e });
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("name", b).zzg("address", c).zzg("internationalPhoneNumber", d).zzg("regularOpenHours", e).zzg("attributions", f).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b localb = CREATOR;
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.PlaceLocalization
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */