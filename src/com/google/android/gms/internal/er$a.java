package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.c.a;

public abstract class er$a
  extends Binder
  implements er
{
  public static er a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
    if ((localIInterface != null) && ((localIInterface instanceof er))) {
      return (er)localIInterface;
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
    paramParcel1 = a(c.a.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    paramParcel2.writeStrongBinder(paramParcel1);
    return true;
  }
  
  private static class a
    implements er
  {
    private IBinder a;
    
    a(IBinder paramIBinder)
    {
      a = paramIBinder;
    }
    
    /* Error */
    public IBinder a(com.google.android.gms.dynamic.c paramc)
      throws RemoteException
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +48 -> 63
      //   18: aload_1
      //   19: invokeinterface 39 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 42	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 17	com/google/android/gms/internal/er$a$a:a	Landroid/os/IBinder;
      //   34: iconst_1
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 48 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 51	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 54	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
      //   52: astore_1
      //   53: aload_3
      //   54: invokevirtual 57	android/os/Parcel:recycle	()V
      //   57: aload_2
      //   58: invokevirtual 57	android/os/Parcel:recycle	()V
      //   61: aload_1
      //   62: areturn
      //   63: aconst_null
      //   64: astore_1
      //   65: goto -40 -> 25
      //   68: astore_1
      //   69: aload_3
      //   70: invokevirtual 57	android/os/Parcel:recycle	()V
      //   73: aload_2
      //   74: invokevirtual 57	android/os/Parcel:recycle	()V
      //   77: aload_1
      //   78: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	79	0	this	a
      //   0	79	1	paramc	com.google.android.gms.dynamic.c
      //   3	71	2	localParcel1	Parcel
      //   7	63	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	68	finally
      //   18	25	68	finally
      //   25	53	68	finally
    }
    
    public IBinder asBinder()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.er.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */