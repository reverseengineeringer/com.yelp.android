package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cm$a
  extends Binder
  implements cm
{
  public static cm m(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.gservice.IGservicesValueService");
    if ((localIInterface != null) && ((localIInterface instanceof cm))) {
      return (cm)localIInterface;
    }
    return new cm.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.gservice.IGservicesValueService");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.gservice.IGservicesValueService");
    paramParcel1 = bN();
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
 * Qualified Name:     com.google.android.gms.internal.cm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */