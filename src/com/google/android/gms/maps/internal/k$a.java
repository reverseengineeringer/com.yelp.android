package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class k$a
  extends Binder
  implements k
{
  public k$a()
  {
    attachInterface(this, "com.google.android.gms.maps.internal.IOnMapLoadedCallback");
  }
  
  public static k be(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    if ((localIInterface != null) && ((localIInterface instanceof k))) {
      return (k)localIInterface;
    }
    return new k.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    onMapLoaded();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */