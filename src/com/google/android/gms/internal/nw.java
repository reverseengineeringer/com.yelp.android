package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class nw
  implements SafeParcelable
{
  public static final nx CREATOR = new nx();
  final int CK;
  private final String ahx;
  private final String ahy;
  private final String mTag;
  
  nw(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    CK = paramInt;
    ahx = paramString1;
    mTag = paramString2;
    ahy = paramString3;
  }
  
  public int describeContents()
  {
    nx localnx = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof nw)) {}
    do
    {
      return false;
      paramObject = (nw)paramObject;
    } while ((!jv.equal(ahx, ahx)) || (!jv.equal(mTag, mTag)) || (!jv.equal(ahy, ahy)));
    return true;
  }
  
  public String getSource()
  {
    return ahy;
  }
  
  public String getTag()
  {
    return mTag;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { ahx, mTag, ahy });
  }
  
  public String nw()
  {
    return ahx;
  }
  
  public String toString()
  {
    return jv.h(this).a("mPlaceId", ahx).a("mTag", mTag).a("mSource", ahy).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nx localnx = CREATOR;
    nx.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */