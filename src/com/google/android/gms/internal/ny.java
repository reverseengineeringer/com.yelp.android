package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.concurrent.TimeUnit;

public final class ny
  implements SafeParcelable
{
  public static final nz CREATOR = new nz();
  public static final long ahz = TimeUnit.HOURS.toMillis(1L);
  final int CK;
  private final long agr;
  private final nu ahA;
  private final int mPriority;
  
  public ny(int paramInt1, nu paramnu, long paramLong, int paramInt2)
  {
    CK = paramInt1;
    ahA = paramnu;
    agr = paramLong;
    mPriority = paramInt2;
  }
  
  public int describeContents()
  {
    nz localnz = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ny)) {
        return false;
      }
      paramObject = (ny)paramObject;
    } while ((jv.equal(ahA, ahA)) && (agr == agr) && (mPriority == mPriority));
    return false;
  }
  
  public long getInterval()
  {
    return agr;
  }
  
  public int getPriority()
  {
    return mPriority;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { ahA, Long.valueOf(agr), Integer.valueOf(mPriority) });
  }
  
  public nu nt()
  {
    return ahA;
  }
  
  public String toString()
  {
    return jv.h(this).a("filter", ahA).a("interval", Long.valueOf(agr)).a("priority", Integer.valueOf(mPriority)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nz localnz = CREATOR;
    nz.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */