package com.google.android.gms.internal;

import android.os.IBinder;

class ih$a$a
  implements ih
{
  private IBinder le;
  
  ih$a$a(IBinder paramIBinder)
  {
    le = paramIBinder;
  }
  
  /* Error */
  public void a(int paramInt, String paramString, android.app.PendingIntent paramPendingIntent)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 4
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 5
    //   10: aload 4
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload 4
    //   19: iload_1
    //   20: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   23: aload 4
    //   25: aload_2
    //   26: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   29: aload_3
    //   30: ifnull +48 -> 78
    //   33: aload 4
    //   35: iconst_1
    //   36: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   39: aload_3
    //   40: aload 4
    //   42: iconst_0
    //   43: invokevirtual 43	android/app/PendingIntent:writeToParcel	(Landroid/os/Parcel;I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/internal/ih$a$a:le	Landroid/os/IBinder;
    //   50: iconst_2
    //   51: aload 4
    //   53: aload 5
    //   55: iconst_0
    //   56: invokeinterface 49 5 0
    //   61: pop
    //   62: aload 5
    //   64: invokevirtual 52	android/os/Parcel:readException	()V
    //   67: aload 5
    //   69: invokevirtual 55	android/os/Parcel:recycle	()V
    //   72: aload 4
    //   74: invokevirtual 55	android/os/Parcel:recycle	()V
    //   77: return
    //   78: aload 4
    //   80: iconst_0
    //   81: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   84: goto -38 -> 46
    //   87: astore_2
    //   88: aload 5
    //   90: invokevirtual 55	android/os/Parcel:recycle	()V
    //   93: aload 4
    //   95: invokevirtual 55	android/os/Parcel:recycle	()V
    //   98: aload_2
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	a
    //   0	100	1	paramInt	int
    //   0	100	2	paramString	String
    //   0	100	3	paramPendingIntent	android.app.PendingIntent
    //   3	91	4	localParcel1	android.os.Parcel
    //   8	81	5	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   10	29	87	finally
    //   33	46	87	finally
    //   46	67	87	finally
    //   78	84	87	finally
  }
  
  /* Error */
  public void a(if paramif)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 26
    //   11: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +41 -> 56
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 59	com/google/android/gms/internal/if:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 15	com/google/android/gms/internal/ih$a$a:le	Landroid/os/IBinder;
    //   33: iconst_1
    //   34: aload_2
    //   35: aload_3
    //   36: iconst_0
    //   37: invokeinterface 49 5 0
    //   42: pop
    //   43: aload_3
    //   44: invokevirtual 52	android/os/Parcel:readException	()V
    //   47: aload_3
    //   48: invokevirtual 55	android/os/Parcel:recycle	()V
    //   51: aload_2
    //   52: invokevirtual 55	android/os/Parcel:recycle	()V
    //   55: return
    //   56: aload_2
    //   57: iconst_0
    //   58: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   61: goto -32 -> 29
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 55	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 55	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	a
    //   0	75	1	paramif	if
    //   3	67	2	localParcel1	android.os.Parcel
    //   7	59	3	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	29	64	finally
    //   29	47	64	finally
    //   56	61	64	finally
  }
  
  public IBinder asBinder()
  {
    return le;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ih.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */