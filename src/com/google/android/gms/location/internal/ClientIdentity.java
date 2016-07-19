package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public class ClientIdentity
  implements SafeParcelable
{
  public static final c CREATOR = new c();
  public final int a;
  public final String b;
  private final int c;
  
  ClientIdentity(int paramInt1, int paramInt2, String paramString)
  {
    c = paramInt1;
    a = paramInt2;
    b = paramString;
  }
  
  int a()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if ((paramObject == null) || (!(paramObject instanceof ClientIdentity))) {
        return false;
      }
      paramObject = (ClientIdentity)paramObject;
    } while ((a == a) && (zzw.equal(b, b)));
    return false;
  }
  
  public int hashCode()
  {
    return a;
  }
  
  public String toString()
  {
    return String.format("%d:%s", new Object[] { Integer.valueOf(a), b });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.ClientIdentity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */