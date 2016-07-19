package com.google.android.gms.ads.internal.client;

import android.os.IBinder;

class ab$a$a
  implements ab
{
  private IBinder a;
  
  ab$a$a(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  /* Error */
  public IBinder a(com.google.android.gms.dynamic.c paramc, String paramString, com.google.android.gms.internal.ds paramds, int paramInt)
    throws android.os.RemoteException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 29
    //   17: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +88 -> 109
    //   24: aload_1
    //   25: invokeinterface 39 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 42	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: aload_2
    //   40: invokevirtual 45	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 5
    //   45: astore_1
    //   46: aload_3
    //   47: ifnull +10 -> 57
    //   50: aload_3
    //   51: invokeinterface 48 1 0
    //   56: astore_1
    //   57: aload 6
    //   59: aload_1
    //   60: invokevirtual 42	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   63: aload 6
    //   65: iload 4
    //   67: invokevirtual 52	android/os/Parcel:writeInt	(I)V
    //   70: aload_0
    //   71: getfield 17	com/google/android/gms/ads/internal/client/ab$a$a:a	Landroid/os/IBinder;
    //   74: iconst_1
    //   75: aload 6
    //   77: aload 7
    //   79: iconst_0
    //   80: invokeinterface 58 5 0
    //   85: pop
    //   86: aload 7
    //   88: invokevirtual 61	android/os/Parcel:readException	()V
    //   91: aload 7
    //   93: invokevirtual 64	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   96: astore_1
    //   97: aload 7
    //   99: invokevirtual 67	android/os/Parcel:recycle	()V
    //   102: aload 6
    //   104: invokevirtual 67	android/os/Parcel:recycle	()V
    //   107: aload_1
    //   108: areturn
    //   109: aconst_null
    //   110: astore_1
    //   111: goto -80 -> 31
    //   114: astore_1
    //   115: aload 7
    //   117: invokevirtual 67	android/os/Parcel:recycle	()V
    //   120: aload 6
    //   122: invokevirtual 67	android/os/Parcel:recycle	()V
    //   125: aload_1
    //   126: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	this	a
    //   0	127	1	paramc	com.google.android.gms.dynamic.c
    //   0	127	2	paramString	String
    //   0	127	3	paramds	com.google.android.gms.internal.ds
    //   0	127	4	paramInt	int
    //   1	43	5	localObject	Object
    //   6	115	6	localParcel1	android.os.Parcel
    //   11	105	7	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   13	20	114	finally
    //   24	31	114	finally
    //   31	43	114	finally
    //   50	57	114	finally
    //   57	97	114	finally
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.ab.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */