package com.google.android.gms.common.internal;

import android.os.IBinder;

class zzu$zza$zza
  implements zzu
{
  private IBinder zzoz;
  
  zzu$zza$zza(IBinder paramIBinder)
  {
    zzoz = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzoz;
  }
  
  /* Error */
  public com.google.android.gms.dynamic.c zza(com.google.android.gms.dynamic.c paramc, int paramInt1, int paramInt2)
    throws android.os.RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 4
    //   5: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 5
    //   10: aload 4
    //   12: ldc 32
    //   14: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +70 -> 88
    //   21: aload_1
    //   22: invokeinterface 40 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 43	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: iload_2
    //   37: invokevirtual 47	android/os/Parcel:writeInt	(I)V
    //   40: aload 4
    //   42: iload_3
    //   43: invokevirtual 47	android/os/Parcel:writeInt	(I)V
    //   46: aload_0
    //   47: getfield 18	com/google/android/gms/common/internal/zzu$zza$zza:zzoz	Landroid/os/IBinder;
    //   50: iconst_1
    //   51: aload 4
    //   53: aload 5
    //   55: iconst_0
    //   56: invokeinterface 53 5 0
    //   61: pop
    //   62: aload 5
    //   64: invokevirtual 56	android/os/Parcel:readException	()V
    //   67: aload 5
    //   69: invokevirtual 59	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   72: invokestatic 65	com/google/android/gms/dynamic/c$a:a	(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;
    //   75: astore_1
    //   76: aload 5
    //   78: invokevirtual 68	android/os/Parcel:recycle	()V
    //   81: aload 4
    //   83: invokevirtual 68	android/os/Parcel:recycle	()V
    //   86: aload_1
    //   87: areturn
    //   88: aconst_null
    //   89: astore_1
    //   90: goto -62 -> 28
    //   93: astore_1
    //   94: aload 5
    //   96: invokevirtual 68	android/os/Parcel:recycle	()V
    //   99: aload 4
    //   101: invokevirtual 68	android/os/Parcel:recycle	()V
    //   104: aload_1
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	zza
    //   0	106	1	paramc	com.google.android.gms.dynamic.c
    //   0	106	2	paramInt1	int
    //   0	106	3	paramInt2	int
    //   3	97	4	localParcel1	android.os.Parcel
    //   8	87	5	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	93	finally
    //   21	28	93	finally
    //   28	76	93	finally
  }
  
  /* Error */
  public com.google.android.gms.dynamic.c zza(com.google.android.gms.dynamic.c paramc, SignInButtonConfig paramSignInButtonConfig)
    throws android.os.RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 32
    //   12: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_1
    //   16: ifnull +70 -> 86
    //   19: aload_1
    //   20: invokeinterface 40 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 43	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_2
    //   32: ifnull +59 -> 91
    //   35: aload_3
    //   36: iconst_1
    //   37: invokevirtual 47	android/os/Parcel:writeInt	(I)V
    //   40: aload_2
    //   41: aload_3
    //   42: iconst_0
    //   43: invokevirtual 76	com/google/android/gms/common/internal/SignInButtonConfig:writeToParcel	(Landroid/os/Parcel;I)V
    //   46: aload_0
    //   47: getfield 18	com/google/android/gms/common/internal/zzu$zza$zza:zzoz	Landroid/os/IBinder;
    //   50: iconst_2
    //   51: aload_3
    //   52: aload 4
    //   54: iconst_0
    //   55: invokeinterface 53 5 0
    //   60: pop
    //   61: aload 4
    //   63: invokevirtual 56	android/os/Parcel:readException	()V
    //   66: aload 4
    //   68: invokevirtual 59	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   71: invokestatic 65	com/google/android/gms/dynamic/c$a:a	(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;
    //   74: astore_1
    //   75: aload 4
    //   77: invokevirtual 68	android/os/Parcel:recycle	()V
    //   80: aload_3
    //   81: invokevirtual 68	android/os/Parcel:recycle	()V
    //   84: aload_1
    //   85: areturn
    //   86: aconst_null
    //   87: astore_1
    //   88: goto -62 -> 26
    //   91: aload_3
    //   92: iconst_0
    //   93: invokevirtual 47	android/os/Parcel:writeInt	(I)V
    //   96: goto -50 -> 46
    //   99: astore_1
    //   100: aload 4
    //   102: invokevirtual 68	android/os/Parcel:recycle	()V
    //   105: aload_3
    //   106: invokevirtual 68	android/os/Parcel:recycle	()V
    //   109: aload_1
    //   110: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	zza
    //   0	111	1	paramc	com.google.android.gms.dynamic.c
    //   0	111	2	paramSignInButtonConfig	SignInButtonConfig
    //   3	103	3	localParcel1	android.os.Parcel
    //   7	94	4	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	99	finally
    //   19	26	99	finally
    //   26	31	99	finally
    //   35	46	99	finally
    //   46	75	99	finally
    //   91	96	99	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzu.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */