package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class nd
  implements SafeParcelable
{
  public static final ne CREATOR = new ne();
  private final int CK;
  public final String packageName;
  public final int uid;
  
  nd(int paramInt1, int paramInt2, String paramString)
  {
    CK = paramInt1;
    uid = paramInt2;
    packageName = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof nd)) {}
    do
    {
      return false;
      paramObject = (nd)paramObject;
    } while ((uid != uid) || (!jv.equal(packageName, packageName)));
    return true;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public int hashCode()
  {
    return uid;
  }
  
  public String toString()
  {
    return String.format("%d:%s", new Object[] { Integer.valueOf(uid), packageName });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ne.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */