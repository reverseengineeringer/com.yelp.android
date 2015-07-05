package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class nu
  implements SafeParcelable
{
  public static final nv CREATOR = new nv();
  final int CK;
  final List<oa> ahn;
  private final Set<oa> aho;
  private final String ahr;
  private final boolean ahs;
  final List<oe> aht;
  final List<String> ahu;
  private final Set<oe> ahv;
  private final Set<String> ahw;
  
  nu(int paramInt, List<oa> paramList, String paramString, boolean paramBoolean, List<oe> paramList1, List<String> paramList2)
  {
    CK = paramInt;
    if (paramList == null)
    {
      paramList = Collections.emptyList();
      ahn = paramList;
      paramList = paramString;
      if (paramString == null) {
        paramList = "";
      }
      ahr = paramList;
      ahs = paramBoolean;
      if (paramList1 != null) {
        break label112;
      }
      paramList = Collections.emptyList();
      label51:
      aht = paramList;
      if (paramList2 != null) {
        break label121;
      }
    }
    label112:
    label121:
    for (paramList = Collections.emptyList();; paramList = Collections.unmodifiableList(paramList2))
    {
      ahu = paramList;
      aho = g(ahn);
      ahv = g(aht);
      ahw = g(ahu);
      return;
      paramList = Collections.unmodifiableList(paramList);
      break;
      paramList = Collections.unmodifiableList(paramList1);
      break label51;
    }
  }
  
  private static <E> Set<E> g(List<E> paramList)
  {
    if (paramList.isEmpty()) {
      return Collections.emptySet();
    }
    return Collections.unmodifiableSet(new HashSet(paramList));
  }
  
  public int describeContents()
  {
    nv localnv = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof nu)) {
        return false;
      }
      paramObject = (nu)paramObject;
    } while ((aho.equals(aho)) && (ahs == ahs) && (ahv.equals(ahv)) && (ahw.equals(ahw)));
    return false;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { aho, Boolean.valueOf(ahs), ahv, ahw });
  }
  
  @Deprecated
  public String nu()
  {
    return ahr;
  }
  
  public boolean nv()
  {
    return ahs;
  }
  
  public String toString()
  {
    return jv.h(this).a("types", aho).a("placeIds", ahw).a("requireOpenNow", Boolean.valueOf(ahs)).a("requestedUserDataTypes", ahv).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    nv localnv = CREATOR;
    nv.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */