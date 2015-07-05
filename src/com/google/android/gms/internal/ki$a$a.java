package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class ki$a$a
  implements ki
{
  private IBinder le;
  
  ki$a$a(IBinder paramIBinder)
  {
    le = paramIBinder;
  }
  
  public void a(kh paramkh)
  {
    IBinder localIBinder = null;
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
      if (paramkh != null) {
        localIBinder = paramkh.asBinder();
      }
      localParcel.writeStrongBinder(localIBinder);
      le.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return le;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ki.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */