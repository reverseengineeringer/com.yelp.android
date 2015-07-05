package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;

public abstract class bx$a
  extends Binder
  implements bx
{
  public bx$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    d locald2 = null;
    d locald1 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      j(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      aw();
      paramParcel2.writeNoException();
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      paramParcel1 = bB();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      locald2 = bC();
      paramParcel2.writeNoException();
      paramParcel1 = locald1;
      if (locald2 != null) {
        paramParcel1 = locald2.asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      paramParcel1 = getBody();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      locald1 = bI();
      paramParcel2.writeNoException();
      paramParcel1 = locald2;
      if (locald1 != null) {
        paramParcel1 = locald1.asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      paramParcel1 = bE();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    paramParcel1 = bJ();
    paramParcel2.writeNoException();
    paramParcel2.writeString(paramParcel1);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */