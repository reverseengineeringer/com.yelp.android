package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class AccountChangeEventCreator
  implements Parcelable.Creator<AccountChangeEvent>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void a(AccountChangeEvent paramAccountChangeEvent, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, Ef);
    b.a(paramParcel, 2, Eg);
    b.a(paramParcel, 3, DZ, false);
    b.c(paramParcel, 4, Eh);
    b.c(paramParcel, 5, Ei);
    b.a(paramParcel, 6, Ej, false);
    b.H(paramParcel, paramInt);
  }
  
  public AccountChangeEvent createFromParcel(Parcel paramParcel)
  {
    String str1 = null;
    int i = 0;
    int m = a.G(paramParcel);
    long l = 0L;
    int j = 0;
    String str2 = null;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.F(paramParcel);
      switch (a.aH(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        k = a.g(paramParcel, n);
        break;
      case 2: 
        l = a.i(paramParcel, n);
        break;
      case 3: 
        str2 = a.o(paramParcel, n);
        break;
      case 4: 
        j = a.g(paramParcel, n);
        break;
      case 5: 
        i = a.g(paramParcel, n);
        break;
      case 6: 
        str1 = a.o(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new AccountChangeEvent(k, l, str2, j, i, str1);
  }
  
  public AccountChangeEvent[] newArray(int paramInt)
  {
    return new AccountChangeEvent[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */