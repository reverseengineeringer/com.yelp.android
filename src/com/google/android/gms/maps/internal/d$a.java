package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.internal.l.a;

public abstract class d$a
  extends Binder
  implements d
{
  public d$a()
  {
    attachInterface(this, "com.google.android.gms.maps.internal.IInfoWindowAdapter");
  }
  
  public static d aU(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    if ((localIInterface != null) && ((localIInterface instanceof d))) {
      return (d)localIInterface;
    }
    return new d.a.a(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    com.google.android.gms.dynamic.d locald2 = null;
    com.google.android.gms.dynamic.d locald1 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      locald2 = f(l.a.bA(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel1 = locald1;
      if (locald2 != null) {
        paramParcel1 = locald2.asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    locald1 = g(l.a.bA(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    paramParcel1 = locald2;
    if (locald1 != null) {
      paramParcel1 = locald1.asBinder();
    }
    paramParcel2.writeStrongBinder(paramParcel1);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */