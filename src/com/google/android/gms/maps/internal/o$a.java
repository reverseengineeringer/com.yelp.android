package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.internal.l.a;

public abstract class o$a
  extends Binder
  implements o
{
  public o$a()
  {
    attachInterface(this, "com.google.android.gms.maps.internal.IOnMarkerDragListener");
  }
  
  public static o bi(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
    if ((localIInterface != null) && ((localIInterface instanceof o))) {
      return (o)localIInterface;
    }
    return new o.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMarkerDragListener");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
      b(l.a.bA(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
      d(l.a.bA(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
    c(l.a.bA(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.o.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */