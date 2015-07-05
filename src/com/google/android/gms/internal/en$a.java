package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class en$a
  extends Binder
  implements en
{
  public en$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
  }
  
  public static en v(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
    if ((localIInterface != null) && ((localIInterface instanceof en))) {
      return (en)localIInterface;
    }
    return new en.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
    a(em.a.u(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.en.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */