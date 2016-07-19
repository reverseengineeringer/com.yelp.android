package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class bo$a
  extends Binder
  implements bo
{
  public static bo a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    if ((localIInterface != null) && ((localIInterface instanceof bo))) {
      return (bo)localIInterface;
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    a(bl.a.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
  
  private static class a
    implements bo
  {
    private IBinder a;
    
    a(IBinder paramIBinder)
    {
      a = paramIBinder;
    }
    
    /* Error */
    public void a(bl parambl, String paramString)
      throws RemoteException
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_3
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore 4
      //   9: aload_3
      //   10: ldc 29
      //   12: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   15: aload_1
      //   16: ifnull +50 -> 66
      //   19: aload_1
      //   20: invokeinterface 39 1 0
      //   25: astore_1
      //   26: aload_3
      //   27: aload_1
      //   28: invokevirtual 42	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   31: aload_3
      //   32: aload_2
      //   33: invokevirtual 45	android/os/Parcel:writeString	(Ljava/lang/String;)V
      //   36: aload_0
      //   37: getfield 17	com/google/android/gms/internal/bo$a$a:a	Landroid/os/IBinder;
      //   40: iconst_1
      //   41: aload_3
      //   42: aload 4
      //   44: iconst_0
      //   45: invokeinterface 51 5 0
      //   50: pop
      //   51: aload 4
      //   53: invokevirtual 54	android/os/Parcel:readException	()V
      //   56: aload 4
      //   58: invokevirtual 57	android/os/Parcel:recycle	()V
      //   61: aload_3
      //   62: invokevirtual 57	android/os/Parcel:recycle	()V
      //   65: return
      //   66: aconst_null
      //   67: astore_1
      //   68: goto -42 -> 26
      //   71: astore_1
      //   72: aload 4
      //   74: invokevirtual 57	android/os/Parcel:recycle	()V
      //   77: aload_3
      //   78: invokevirtual 57	android/os/Parcel:recycle	()V
      //   81: aload_1
      //   82: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	83	0	this	a
      //   0	83	1	parambl	bl
      //   0	83	2	paramString	String
      //   3	75	3	localParcel1	Parcel
      //   7	66	4	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   9	15	71	finally
      //   19	26	71	finally
      //   26	56	71	finally
    }
    
    public IBinder asBinder()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */