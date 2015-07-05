package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class nq
  implements SafeParcelable
{
  public static final nr CREATOR = new nr();
  final int CK;
  final boolean ahm;
  final List<oa> ahn;
  private final Set<oa> aho;
  
  nq(int paramInt, boolean paramBoolean, List<oa> paramList)
  {
    CK = paramInt;
    ahm = paramBoolean;
    if (paramList == null) {}
    for (paramList = Collections.emptyList();; paramList = Collections.unmodifiableList(paramList))
    {
      ahn = paramList;
      if (!ahn.isEmpty()) {
        break;
      }
      aho = Collections.emptySet();
      return;
    }
    aho = Collections.unmodifiableSet(new HashSet(ahn));
  }
  
  public int describeContents()
  {
    nr localnr = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof nq)) {
        return false;
      }
      paramObject = (nq)paramObject;
    } while ((aho.equals(aho)) && (ahm == ahm));
    return false;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { aho, Boolean.valueOf(ahm) });
  }
  
  public boolean nr()
  {
    return ahm;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nr localnr = CREATOR;
    nr.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */