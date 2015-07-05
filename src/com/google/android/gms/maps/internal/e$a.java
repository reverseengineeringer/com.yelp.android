package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.internal.l.a;

public abstract class e$a
  extends Binder
  implements e
{
  public static e aV(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IInfoWindowRenderer");
    if ((localIInterface != null) && ((localIInterface instanceof e))) {
      return (e)localIInterface;
    }
    return new e.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.IInfoWindowRenderer");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowRenderer");
    paramParcel1 = a(l.a.bA(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    if (paramParcel1 != null)
    {
      paramParcel2.writeInt(1);
      paramParcel1.writeToParcel(paramParcel2, 1);
      return true;
    }
    paramParcel2.writeInt(0);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */