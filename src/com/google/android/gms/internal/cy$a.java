package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cy$a
  extends Binder
  implements cy
{
  public cy$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
  }
  
  public static cy n(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    if ((localIInterface != null) && ((localIInterface instanceof cy))) {
      return (cy)localIInterface;
    }
    return new cy.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
      paramParcel1 = x(paramParcel1.readString());
      paramParcel2.writeNoException();
      if (paramParcel1 != null) {}
      for (paramParcel1 = paramParcel1.asBinder();; paramParcel1 = null)
      {
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    boolean bool = y(paramParcel1.readString());
    paramParcel2.writeNoException();
    if (bool) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      paramParcel2.writeInt(paramInt1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cy.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */