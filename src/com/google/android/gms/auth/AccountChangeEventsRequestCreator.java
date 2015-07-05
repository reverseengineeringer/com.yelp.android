package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class AccountChangeEventsRequestCreator
  implements Parcelable.Creator<AccountChangeEventsRequest>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void a(AccountChangeEventsRequest paramAccountChangeEventsRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, Ef);
    b.c(paramParcel, 2, Ei);
    b.a(paramParcel, 3, DZ, false);
    b.H(paramParcel, paramInt);
  }
  
  public AccountChangeEventsRequest createFromParcel(Parcel paramParcel)
  {
    int j = 0;
    int k = a.G(paramParcel);
    String str = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.F(paramParcel);
      switch (a.aH(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        j = a.g(paramParcel, m);
        break;
      case 3: 
        str = a.o(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new AccountChangeEventsRequest(i, j, str);
  }
  
  public AccountChangeEventsRequest[] newArray(int paramInt)
  {
    return new AccountChangeEventsRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventsRequestCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */