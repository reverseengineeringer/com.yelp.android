package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class fl$a$a
  implements fl
{
  private IBinder le;
  
  fl$a$a(IBinder paramIBinder)
  {
    le = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return le;
  }
  
  public fj b(fh paramfh)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (paramfh != null)
        {
          localParcel1.writeInt(1);
          paramfh.writeToParcel(localParcel1, 0);
          le.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramfh = fj.CREATOR.i(localParcel2);
            return paramfh;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramfh = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fl.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */