package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.i;

public abstract class l$a
  extends Binder
  implements l
{
  public l$a()
  {
    attachInterface(this, "com.google.android.gms.maps.internal.IOnMapLongClickListener");
  }
  
  public static l bf(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLongClickListener");
    if ((localIInterface != null) && ((localIInterface instanceof l))) {
      return (l)localIInterface;
    }
    return new l.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMapLongClickListener");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMapLongClickListener");
    if (paramParcel1.readInt() != 0) {}
    for (paramParcel1 = LatLng.CREATOR.de(paramParcel1);; paramParcel1 = null)
    {
      onMapLongClick(paramParcel1);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */