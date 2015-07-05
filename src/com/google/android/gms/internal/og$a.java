package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

public abstract class og$a
  extends Binder
  implements og
{
  public static og aP(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof og))) {
      return (og)localIInterface;
    }
    return new og.a.a(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject1 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.location.places.internal.IPlacesCallbacks");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
      paramParcel2 = (Parcel)localObject1;
      if (paramParcel1.readInt() != 0) {
        paramParcel2 = DataHolder.CREATOR.B(paramParcel1);
      }
      X(paramParcel2);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
      paramParcel2 = (Parcel)localObject2;
      if (paramParcel1.readInt() != 0) {
        paramParcel2 = DataHolder.CREATOR.B(paramParcel1);
      }
      Y(paramParcel2);
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
    paramParcel2 = (Parcel)localObject3;
    if (paramParcel1.readInt() != 0) {
      paramParcel2 = DataHolder.CREATOR.B(paramParcel1);
    }
    Z(paramParcel2);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.og.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */