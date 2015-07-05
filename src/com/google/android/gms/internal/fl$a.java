package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class fl$a
  extends Binder
  implements fl
{
  public fl$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.request.IAdRequestService");
  }
  
  public static fl C(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
    if ((localIInterface != null) && ((localIInterface instanceof fl))) {
      return (fl)localIInterface;
    }
    return new fl.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.request.IAdRequestService");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
    if (paramParcel1.readInt() != 0)
    {
      paramParcel1 = fh.CREATOR.h(paramParcel1);
      paramParcel1 = b(paramParcel1);
      paramParcel2.writeNoException();
      if (paramParcel1 == null) {
        break label99;
      }
      paramParcel2.writeInt(1);
      paramParcel1.writeToParcel(paramParcel2, 1);
    }
    for (;;)
    {
      return true;
      paramParcel1 = null;
      break;
      label99:
      paramParcel2.writeInt(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */