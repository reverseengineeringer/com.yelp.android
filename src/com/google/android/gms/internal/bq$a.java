package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d.a;

public abstract class bq$a
  extends Binder
  implements bq
{
  public bq$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
  }
  
  public static bq i(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    if ((localIInterface != null) && ((localIInterface instanceof bq))) {
      return (bq)localIInterface;
    }
    return new bq.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
      paramParcel1 = bz();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
      paramParcel1 = bA();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
      a(d.a.ap(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
      av();
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    aw();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */