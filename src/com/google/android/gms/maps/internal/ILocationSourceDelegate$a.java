package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ILocationSourceDelegate$a
  extends Binder
  implements ILocationSourceDelegate
{
  public ILocationSourceDelegate$a()
  {
    attachInterface(this, "com.google.android.gms.maps.internal.ILocationSourceDelegate");
  }
  
  public static ILocationSourceDelegate aW(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof ILocationSourceDelegate))) {
      return (ILocationSourceDelegate)localIInterface;
    }
    return new ILocationSourceDelegate.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.maps.internal.ILocationSourceDelegate");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
      activate(i.a.bc(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
    deactivate();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.ILocationSourceDelegate.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */