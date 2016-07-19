package com.yelp.android.bj;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class ac$a$a
  implements ac
{
  private IBinder a;
  
  ac$a$a(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public void a()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
      a.transact(1, localParcel1, localParcel2, 0);
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
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bj.ac.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */