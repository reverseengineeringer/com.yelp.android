package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AccountChangeEventsRequest
  implements SafeParcelable
{
  public static final AccountChangeEventsRequestCreator CREATOR = new AccountChangeEventsRequestCreator();
  String DZ;
  final int Ef;
  int Ei;
  
  public AccountChangeEventsRequest()
  {
    Ef = 1;
  }
  
  AccountChangeEventsRequest(int paramInt1, int paramInt2, String paramString)
  {
    Ef = paramInt1;
    Ei = paramInt2;
    DZ = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAccountName()
  {
    return DZ;
  }
  
  public int getEventIndex()
  {
    return Ei;
  }
  
  public AccountChangeEventsRequest setAccountName(String paramString)
  {
    DZ = paramString;
    return this;
  }
  
  public AccountChangeEventsRequest setEventIndex(int paramInt)
  {
    Ei = paramInt;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    AccountChangeEventsRequestCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */