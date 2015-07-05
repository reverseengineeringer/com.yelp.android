package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ns
  implements SafeParcelable
{
  public static final nt CREATOR = new nt();
  private final int CK;
  private final int agd;
  private final int ahp;
  private final nu ahq;
  
  ns(int paramInt1, int paramInt2, int paramInt3, nu paramnu)
  {
    CK = paramInt1;
    agd = paramInt2;
    ahp = paramInt3;
    ahq = paramnu;
  }
  
  public int describeContents()
  {
    nt localnt = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ns)) {
        return false;
      }
      paramObject = (ns)paramObject;
    } while ((agd == agd) && (ahp == ahp) && (ahq.equals(ahq)));
    return false;
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { Integer.valueOf(agd), Integer.valueOf(ahp) });
  }
  
  public int np()
  {
    return agd;
  }
  
  public int ns()
  {
    return ahp;
  }
  
  public nu nt()
  {
    return ahq;
  }
  
  public String toString()
  {
    return jv.h(this).a("transitionTypes", Integer.valueOf(agd)).a("loiteringTimeMillis", Integer.valueOf(ahp)).a("placeFilter", ahq).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nt localnt = CREATOR;
    nt.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */