package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public class nl
  implements SafeParcelable
{
  public static final nm CREATOR = new nm();
  static final List<nd> ahg = ;
  private final int CK;
  LocationRequest We;
  boolean ahh;
  boolean ahi;
  boolean ahj;
  List<nd> ahk;
  final String mTag;
  
  nl(int paramInt, LocationRequest paramLocationRequest, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, List<nd> paramList, String paramString)
  {
    CK = paramInt;
    We = paramLocationRequest;
    ahh = paramBoolean1;
    ahi = paramBoolean2;
    ahj = paramBoolean3;
    ahk = paramList;
    mTag = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof nl)) {}
    do
    {
      return false;
      paramObject = (nl)paramObject;
    } while ((!jv.equal(We, We)) || (ahh != ahh) || (ahi != ahi) || (ahj != ahj) || (!jv.equal(ahk, ahk)));
    return true;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public int hashCode()
  {
    return We.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(We.toString());
    localStringBuilder.append(" requestNlpDebugInfo=");
    localStringBuilder.append(ahh);
    localStringBuilder.append(" restorePendingIntentListeners=");
    localStringBuilder.append(ahi);
    localStringBuilder.append(" triggerUpdate=");
    localStringBuilder.append(ahj);
    localStringBuilder.append(" clients=");
    localStringBuilder.append(ahk);
    if (mTag != null)
    {
      localStringBuilder.append(" tag=");
      localStringBuilder.append(mTag);
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nm.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */