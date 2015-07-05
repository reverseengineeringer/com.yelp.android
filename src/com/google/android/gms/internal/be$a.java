package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;

public abstract class be$a
  extends Binder
  implements be
{
  public static be g(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
    if ((localIInterface != null) && ((localIInterface instanceof be))) {
      return (be)localIInterface;
    }
    return new be.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.ads.internal.client.IAdManagerCreator");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
    d locald = d.a.ap(paramParcel1.readStrongBinder());
    if (paramParcel1.readInt() != 0) {}
    for (ay localay = ay.CREATOR.c(paramParcel1);; localay = null)
    {
      paramParcel1 = a(locald, localay, paramParcel1.readString(), cy.a.n(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.be.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */