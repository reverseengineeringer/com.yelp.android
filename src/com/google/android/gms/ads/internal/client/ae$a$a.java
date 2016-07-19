package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class ae$a$a
  implements ae
{
  private IBinder a;
  
  ae$a$a(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public void a(String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAppEventListener");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
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
 * Qualified Name:     com.google.android.gms.ads.internal.client.ae.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */