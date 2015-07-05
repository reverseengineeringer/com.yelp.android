package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class ih$a
  extends Binder
  implements ih
{
  public ih$a()
  {
    attachInterface(this, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
  }
  
  public static ih K(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof ih))) {
      return (ih)localIInterface;
    }
    return new ih.a.a(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Object localObject = null;
    String str = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
      localObject = str;
      if (paramParcel1.readInt() != 0) {
        localObject = if.CREATOR.t(paramParcel1);
      }
      a((if)localObject);
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
    paramInt1 = paramParcel1.readInt();
    str = paramParcel1.readString();
    if (paramParcel1.readInt() != 0) {
      localObject = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
    }
    a(paramInt1, str, (PendingIntent)localObject);
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ih.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */