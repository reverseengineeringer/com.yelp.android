package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class fd$a
  extends Binder
  implements fd
{
  public fd$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
  }
  
  public static fd a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
    if ((localIInterface != null) && ((localIInterface instanceof fd))) {
      return (fd)localIInterface;
    }
    return new a(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
      boolean bool = a(paramParcel1.readString());
      paramParcel2.writeNoException();
      if (bool) {}
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
    a(fc.a.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
  
  private static class a
    implements fd
  {
    private IBinder a;
    
    a(IBinder paramIBinder)
    {
      a = paramIBinder;
    }
    
    /* Error */
    public void a(fc paramfc)
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
      //   15: ifnull +42 -> 57
      //   18: aload_1
      //   19: invokeinterface 39 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 42	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 17	com/google/android/gms/internal/fd$a$a:a	Landroid/os/IBinder;
      //   34: iconst_2
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 48 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 51	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 54	android/os/Parcel:recycle	()V
      //   52: aload_2
      //   53: invokevirtual 54	android/os/Parcel:recycle	()V
      //   56: return
      //   57: aconst_null
      //   58: astore_1
      //   59: goto -34 -> 25
      //   62: astore_1
      //   63: aload_3
      //   64: invokevirtual 54	android/os/Parcel:recycle	()V
      //   67: aload_2
      //   68: invokevirtual 54	android/os/Parcel:recycle	()V
      //   71: aload_1
      //   72: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	73	0	this	a
      //   0	73	1	paramfc	fc
      //   3	65	2	localParcel1	Parcel
      //   7	57	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	62	finally
      //   18	25	62	finally
      //   25	48	62	finally
    }
    
    /* Error */
    public boolean a(String paramString)
      throws RemoteException
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_3
      //   2: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   5: astore 4
      //   7: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   10: astore 5
      //   12: aload 4
      //   14: ldc 29
      //   16: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   19: aload 4
      //   21: aload_1
      //   22: invokevirtual 59	android/os/Parcel:writeString	(Ljava/lang/String;)V
      //   25: aload_0
      //   26: getfield 17	com/google/android/gms/internal/fd$a$a:a	Landroid/os/IBinder;
      //   29: iconst_1
      //   30: aload 4
      //   32: aload 5
      //   34: iconst_0
      //   35: invokeinterface 48 5 0
      //   40: pop
      //   41: aload 5
      //   43: invokevirtual 51	android/os/Parcel:readException	()V
      //   46: aload 5
      //   48: invokevirtual 63	android/os/Parcel:readInt	()I
      //   51: istore_2
      //   52: iload_2
      //   53: ifeq +15 -> 68
      //   56: aload 5
      //   58: invokevirtual 54	android/os/Parcel:recycle	()V
      //   61: aload 4
      //   63: invokevirtual 54	android/os/Parcel:recycle	()V
      //   66: iload_3
      //   67: ireturn
      //   68: iconst_0
      //   69: istore_3
      //   70: goto -14 -> 56
      //   73: astore_1
      //   74: aload 5
      //   76: invokevirtual 54	android/os/Parcel:recycle	()V
      //   79: aload 4
      //   81: invokevirtual 54	android/os/Parcel:recycle	()V
      //   84: aload_1
      //   85: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	86	0	this	a
      //   0	86	1	paramString	String
      //   51	2	2	i	int
      //   1	69	3	bool	boolean
      //   5	75	4	localParcel1	Parcel
      //   10	65	5	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   12	52	73	finally
    }
    
    public IBinder asBinder()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */