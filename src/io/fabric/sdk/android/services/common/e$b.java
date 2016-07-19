package io.fabric.sdk.android.services.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;

final class e$b
  implements IInterface
{
  private final IBinder a;
  
  public e$b(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public String a()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    catch (Exception localException)
    {
      c.h().a("Fabric", "Could not get parcel from Google Play Service to capture AdvertisingId");
      return null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return a;
  }
  
  /* Error */
  public boolean b()
    throws RemoteException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   5: astore_3
    //   6: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   9: astore 4
    //   11: aload_3
    //   12: ldc 32
    //   14: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_3
    //   18: iconst_1
    //   19: invokevirtual 74	android/os/Parcel:writeInt	(I)V
    //   22: aload_0
    //   23: getfield 18	io/fabric/sdk/android/services/common/e$b:a	Landroid/os/IBinder;
    //   26: iconst_2
    //   27: aload_3
    //   28: aload 4
    //   30: iconst_0
    //   31: invokeinterface 42 5 0
    //   36: pop
    //   37: aload 4
    //   39: invokevirtual 45	android/os/Parcel:readException	()V
    //   42: aload 4
    //   44: invokevirtual 78	android/os/Parcel:readInt	()I
    //   47: istore_1
    //   48: iload_1
    //   49: ifeq +14 -> 63
    //   52: aload 4
    //   54: invokevirtual 51	android/os/Parcel:recycle	()V
    //   57: aload_3
    //   58: invokevirtual 51	android/os/Parcel:recycle	()V
    //   61: iload_2
    //   62: ireturn
    //   63: iconst_0
    //   64: istore_2
    //   65: goto -13 -> 52
    //   68: astore 5
    //   70: invokestatic 57	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   73: ldc 59
    //   75: ldc 80
    //   77: invokeinterface 66 3 0
    //   82: aload 4
    //   84: invokevirtual 51	android/os/Parcel:recycle	()V
    //   87: aload_3
    //   88: invokevirtual 51	android/os/Parcel:recycle	()V
    //   91: iconst_0
    //   92: ireturn
    //   93: astore 5
    //   95: aload 4
    //   97: invokevirtual 51	android/os/Parcel:recycle	()V
    //   100: aload_3
    //   101: invokevirtual 51	android/os/Parcel:recycle	()V
    //   104: aload 5
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	b
    //   47	2	1	i	int
    //   1	64	2	bool	boolean
    //   5	96	3	localParcel1	Parcel
    //   9	87	4	localParcel2	Parcel
    //   68	1	5	localException	Exception
    //   93	12	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   11	48	68	java/lang/Exception
    //   11	48	93	finally
    //   70	82	93	finally
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */