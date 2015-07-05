package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;
import com.google.android.gms.maps.model.i;

public abstract class IProjectionDelegate$a
  extends Binder
  implements IProjectionDelegate
{
  public static IProjectionDelegate bp(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof IProjectionDelegate))) {
      return (IProjectionDelegate)localIInterface;
    }
    return new IProjectionDelegate.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    d locald = null;
    Object localObject2 = null;
    Object localObject1 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.IProjectionDelegate");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
      paramParcel1 = fromScreenLocation(d.a.ap(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
      }
      for (;;)
      {
        return true;
        paramParcel2.writeInt(0);
      }
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = LatLng.CREATOR.de(paramParcel1);; paramParcel1 = null)
      {
        locald = toScreenLocation(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (locald != null) {
          paramParcel1 = locald.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
      paramParcel1 = getVisibleRegion();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
      }
      for (;;)
      {
        return true;
        paramParcel2.writeInt(0);
      }
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
      localObject1 = locald;
      if (paramParcel1.readInt() != 0) {
        localObject1 = y.CREATOR.cZ(paramParcel1);
      }
      paramParcel1 = fromScreenLocation2((y)localObject1);
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
      }
      for (;;)
      {
        return true;
        paramParcel2.writeInt(0);
      }
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
    localObject1 = localObject2;
    if (paramParcel1.readInt() != 0) {
      localObject1 = LatLng.CREATOR.de(paramParcel1);
    }
    paramParcel1 = toScreenLocation2((LatLng)localObject1);
    paramParcel2.writeNoException();
    if (paramParcel1 != null)
    {
      paramParcel2.writeInt(1);
      paramParcel1.writeToParcel(paramParcel2, 1);
    }
    for (;;)
    {
      return true;
      paramParcel2.writeInt(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.IProjectionDelegate.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */