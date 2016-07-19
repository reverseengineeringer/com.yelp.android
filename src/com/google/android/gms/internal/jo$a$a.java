package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class jo$a$a
  implements jo
{
  private IBinder a;
  
  jo$a$a(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public void a(jn paramjn)
    throws RemoteException
  {
    IBinder localIBinder = null;
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
      if (paramjn != null) {
        localIBinder = paramjn.asBinder();
      }
      localParcel.writeStrongBinder(localIBinder);
      a.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jo.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */