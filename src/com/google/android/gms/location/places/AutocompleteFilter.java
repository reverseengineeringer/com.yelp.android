package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class AutocompleteFilter
  implements SafeParcelable
{
  public static final b CREATOR = new b();
  final int a;
  final boolean b;
  final List<Integer> c;
  final int d;
  
  AutocompleteFilter(int paramInt, boolean paramBoolean, List<Integer> paramList)
  {
    a = paramInt;
    c = paramList;
    d = a(paramList);
    if (a < 1)
    {
      if (!paramBoolean) {}
      for (paramBoolean = bool;; paramBoolean = false)
      {
        b = paramBoolean;
        return;
      }
    }
    b = paramBoolean;
  }
  
  private static int a(Collection<Integer> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return 0;
    }
    return ((Integer)paramCollection.iterator().next()).intValue();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof AutocompleteFilter)) {
        return false;
      }
      paramObject = (AutocompleteFilter)paramObject;
    } while ((d == d) && (b == b));
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Boolean.valueOf(b), Integer.valueOf(d) });
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("includeQueryPredictions", Boolean.valueOf(b)).zzg("typeFilter", Integer.valueOf(d)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.AutocompleteFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */