package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d.a;

public abstract class ep$a
  extends Binder
  implements ep
{
  public static ep x(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManagerCreator");
    if ((localIInterface != null) && ((localIInterface instanceof ep))) {
      return (ep)localIInterface;
    }
    return new ep.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManagerCreator");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManagerCreator");
    paramParcel1 = c(d.a.ap(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    paramParcel2.writeStrongBinder(paramParcel1);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ep.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */