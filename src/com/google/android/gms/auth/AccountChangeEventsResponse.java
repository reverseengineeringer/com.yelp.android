package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jx;
import java.util.List;

public class AccountChangeEventsResponse
  implements SafeParcelable
{
  public static final AccountChangeEventsResponseCreator CREATOR = new AccountChangeEventsResponseCreator();
  final int Ef;
  final List<AccountChangeEvent> mp;
  
  AccountChangeEventsResponse(int paramInt, List<AccountChangeEvent> paramList)
  {
    Ef = paramInt;
    mp = ((List)jx.i(paramList));
  }
  
  public AccountChangeEventsResponse(List<AccountChangeEvent> paramList)
  {
    Ef = 1;
    mp = ((List)jx.i(paramList));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<AccountChangeEvent> getEvents()
  {
    return mp;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    AccountChangeEventsResponseCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */