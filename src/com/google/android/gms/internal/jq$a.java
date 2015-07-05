package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class jq$a
  extends Binder
  implements jq
{
  public jq$a()
  {
    attachInterface(this, "com.google.android.gms.common.internal.IAccountAccessor");
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.common.internal.IAccountAccessor");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IAccountAccessor");
    paramParcel1 = hk();
    paramParcel2.writeNoException();
    if (paramParcel1 != null)
    {
      paramParcel2.writeInt(1);
      paramParcel1.writeToParcel(paramParcel2, 1);
      return true;
    }
    paramParcel2.writeInt(0);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */