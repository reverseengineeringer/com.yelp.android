package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class kh$a
  extends Binder
  implements kh
{
  public kh$a()
  {
    attachInterface(this, "com.google.android.gms.common.internal.service.ICommonCallbacks");
  }
  
  public static kh U(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof kh))) {
      return (kh)localIInterface;
    }
    return new kh.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.common.internal.service.ICommonCallbacks");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.service.ICommonCallbacks");
    aI(paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */