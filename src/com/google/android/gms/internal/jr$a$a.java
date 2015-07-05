package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class jr$a$a
  implements jr
{
  private IBinder le;
  
  jr$a$a(IBinder paramIBinder)
  {
    le = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return le;
  }
  
  public void cancel()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.ICancelToken");
      le.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jr.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */