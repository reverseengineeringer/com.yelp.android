package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jv;
import com.google.android.gms.internal.jx;

public class AccountChangeEvent
  implements SafeParcelable
{
  public static final AccountChangeEventCreator CREATOR = new AccountChangeEventCreator();
  final String DZ;
  final int Ef;
  final long Eg;
  final int Eh;
  final int Ei;
  final String Ej;
  
  AccountChangeEvent(int paramInt1, long paramLong, String paramString1, int paramInt2, int paramInt3, String paramString2)
  {
    Ef = paramInt1;
    Eg = paramLong;
    DZ = ((String)jx.i(paramString1));
    Eh = paramInt2;
    Ei = paramInt3;
    Ej = paramString2;
  }
  
  public AccountChangeEvent(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    Ef = 1;
    Eg = paramLong;
    DZ = ((String)jx.i(paramString1));
    Eh = paramInt1;
    Ei = paramInt2;
    Ej = paramString2;
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
      if (!(paramObject instanceof AccountChangeEvent)) {
        break;
      }
      paramObject = (AccountChangeEvent)paramObject;
    } while ((Ef == Ef) && (Eg == Eg) && (jv.equal(DZ, DZ)) && (Eh == Eh) && (Ei == Ei) && (jv.equal(Ej, Ej)));
    return false;
    return false;
  }
  
  public String getAccountName()
  {
    return DZ;
  }
  
  public String getChangeData()
  {
    return Ej;
  }
  
  public int getChangeType()
  {
    return Eh;
  }
  
  public int getEventIndex()
  {
    return Ei;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { Integer.valueOf(Ef), Long.valueOf(Eg), DZ, Integer.valueOf(Eh), Integer.valueOf(Ei), Ej });
  }
  
  public String toString()
  {
    String str = "UNKNOWN";
    switch (Eh)
    {
    }
    for (;;)
    {
      return "AccountChangeEvent {accountName = " + DZ + ", changeType = " + str + ", changeData = " + Ej + ", eventIndex = " + Ei + "}";
      str = "ADDED";
      continue;
      str = "REMOVED";
      continue;
      str = "RENAMED_TO";
      continue;
      str = "RENAMED_FROM";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    AccountChangeEventCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */