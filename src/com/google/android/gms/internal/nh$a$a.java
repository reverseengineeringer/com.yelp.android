package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class nh$a$a
  implements nh
{
  private IBinder le;
  
  nh$a$a(IBinder paramIBinder)
  {
    le = paramIBinder;
  }
  
  /* Error */
  public void a(int paramInt, android.app.PendingIntent paramPendingIntent)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 26
    //   12: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_3
    //   16: iload_1
    //   17: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   20: aload_2
    //   21: ifnull +44 -> 65
    //   24: aload_3
    //   25: iconst_1
    //   26: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   29: aload_2
    //   30: aload_3
    //   31: iconst_0
    //   32: invokevirtual 40	android/app/PendingIntent:writeToParcel	(Landroid/os/Parcel;I)V
    //   35: aload_0
    //   36: getfield 15	com/google/android/gms/internal/nh$a$a:le	Landroid/os/IBinder;
    //   39: iconst_3
    //   40: aload_3
    //   41: aload 4
    //   43: iconst_0
    //   44: invokeinterface 46 5 0
    //   49: pop
    //   50: aload 4
    //   52: invokevirtual 49	android/os/Parcel:readException	()V
    //   55: aload 4
    //   57: invokevirtual 52	android/os/Parcel:recycle	()V
    //   60: aload_3
    //   61: invokevirtual 52	android/os/Parcel:recycle	()V
    //   64: return
    //   65: aload_3
    //   66: iconst_0
    //   67: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   70: goto -35 -> 35
    //   73: astore_2
    //   74: aload 4
    //   76: invokevirtual 52	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 52	android/os/Parcel:recycle	()V
    //   83: aload_2
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	a
    //   0	85	1	paramInt	int
    //   0	85	2	paramPendingIntent	android.app.PendingIntent
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	20	73	finally
    //   24	35	73	finally
    //   35	55	73	finally
    //   65	70	73	finally
  }
  
  public void a(int paramInt, String[] paramArrayOfString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
      localParcel1.writeInt(paramInt);
      localParcel1.writeStringArray(paramArrayOfString);
      le.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return le;
  }
  
  public void b(int paramInt, String[] paramArrayOfString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
      localParcel1.writeInt(paramInt);
      localParcel1.writeStringArray(paramArrayOfString);
      le.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nh.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */