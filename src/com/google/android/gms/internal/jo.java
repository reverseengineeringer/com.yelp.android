package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface jo
  extends IInterface
{
  public abstract void a(jn paramjn)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements jo
  {
    public static jo a(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
      if ((localIInterface != null) && ((localIInterface instanceof jo))) {
        return (jo)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.common.internal.service.ICommonService");
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.service.ICommonService");
      a(jn.a.a(paramParcel1.readStrongBinder()));
      return true;
    }
    
    private static class a
      implements jo
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        a = paramIBinder;
      }
      
      public void a(jn paramjn)
        throws RemoteException
      {
        IBinder localIBinder = null;
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
          if (paramjn != null) {
            localIBinder = paramjn.asBinder();
          }
          localParcel.writeStrongBinder(localIBinder);
          a.transact(1, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public IBinder asBinder()
      {
        return a;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */