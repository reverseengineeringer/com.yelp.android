package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class kh$a$a
  implements kh
{
  private IBinder le;
  
  kh$a$a(IBinder paramIBinder)
  {
    le = paramIBinder;
  }
  
  public void aI(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonCallbacks");
      localParcel1.writeInt(paramInt);
      le.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return le;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kh.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */