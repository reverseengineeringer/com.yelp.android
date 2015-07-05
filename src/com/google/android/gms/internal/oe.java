package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class oe
  implements SafeParcelable
{
  public static final of CREATOR = new of();
  public static final oe akb = A("test_type", 1);
  public static final oe akc = A("labeled_place", 6);
  public static final Set<oe> akd = Collections.unmodifiableSet(new HashSet(Arrays.asList(new oe[] { akb, akc })));
  final int CK;
  final int ake;
  final String vc;
  
  oe(int paramInt1, String paramString, int paramInt2)
  {
    jx.bb(paramString);
    CK = paramInt1;
    vc = paramString;
    ake = paramInt2;
  }
  
  private static oe A(String paramString, int paramInt)
  {
    return new oe(0, paramString, paramInt);
  }
  
  public int describeContents()
  {
    of localof = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof oe)) {
        return false;
      }
      paramObject = (oe)paramObject;
    } while ((vc.equals(vc)) && (ake == ake));
    return false;
  }
  
  public int hashCode()
  {
    return vc.hashCode();
  }
  
  public String toString()
  {
    return vc;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    of localof = CREATOR;
    of.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */