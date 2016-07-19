package com.google.android.gms.ads.internal.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class i$a$a
  implements i
{
  private IBinder a;
  
  i$a$a(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (paramAdRequestInfoParcel != null)
        {
          localParcel1.writeInt(1);
          paramAdRequestInfoParcel.writeToParcel(localParcel1, 0);
          a.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramAdRequestInfoParcel = AdResponseParcel.CREATOR.a(localParcel2);
            return paramAdRequestInfoParcel;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramAdRequestInfoParcel = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  public void a(AdRequestInfoParcel paramAdRequestInfoParcel, j paramj)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (paramAdRequestInfoParcel != null)
        {
          localParcel1.writeInt(1);
          paramAdRequestInfoParcel.writeToParcel(localParcel1, 0);
          if (paramj != null)
          {
            paramAdRequestInfoParcel = paramj.asBinder();
            localParcel1.writeStrongBinder(paramAdRequestInfoParcel);
            a.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramAdRequestInfoParcel = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.i.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */