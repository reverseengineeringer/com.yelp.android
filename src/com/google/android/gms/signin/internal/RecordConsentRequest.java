package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class RecordConsentRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<RecordConsentRequest> CREATOR = new f();
  final int a;
  private final Account b;
  private final Scope[] c;
  private final String d;
  
  RecordConsentRequest(int paramInt, Account paramAccount, Scope[] paramArrayOfScope, String paramString)
  {
    a = paramInt;
    b = paramAccount;
    c = paramArrayOfScope;
    d = paramString;
  }
  
  public Account a()
  {
    return b;
  }
  
  public Scope[] b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.RecordConsentRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */