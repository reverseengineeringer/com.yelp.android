package com.google.android.gms.maps.internal;

import android.os.IBinder;

class e$a$a
  implements e
{
  private IBinder le;
  
  e$a$a(IBinder paramIBinder)
  {
    le = paramIBinder;
  }
  
  /* Error */
  public android.graphics.Bitmap a(com.google.android.gms.maps.model.internal.l paraml, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +86 -> 107
    //   24: aload_1
    //   25: invokeinterface 36 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: iload_2
    //   40: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   43: aload 5
    //   45: iload_3
    //   46: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   49: aload_0
    //   50: getfield 15	com/google/android/gms/maps/internal/e$a$a:le	Landroid/os/IBinder;
    //   53: iconst_1
    //   54: aload 5
    //   56: aload 6
    //   58: iconst_0
    //   59: invokeinterface 49 5 0
    //   64: pop
    //   65: aload 6
    //   67: invokevirtual 52	android/os/Parcel:readException	()V
    //   70: aload 4
    //   72: astore_1
    //   73: aload 6
    //   75: invokevirtual 56	android/os/Parcel:readInt	()I
    //   78: ifeq +17 -> 95
    //   81: getstatic 62	android/graphics/Bitmap:CREATOR	Landroid/os/Parcelable$Creator;
    //   84: aload 6
    //   86: invokeinterface 68 2 0
    //   91: checkcast 58	android/graphics/Bitmap
    //   94: astore_1
    //   95: aload 6
    //   97: invokevirtual 71	android/os/Parcel:recycle	()V
    //   100: aload 5
    //   102: invokevirtual 71	android/os/Parcel:recycle	()V
    //   105: aload_1
    //   106: areturn
    //   107: aconst_null
    //   108: astore_1
    //   109: goto -78 -> 31
    //   112: astore_1
    //   113: aload 6
    //   115: invokevirtual 71	android/os/Parcel:recycle	()V
    //   118: aload 5
    //   120: invokevirtual 71	android/os/Parcel:recycle	()V
    //   123: aload_1
    //   124: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	a
    //   0	125	1	paraml	com.google.android.gms.maps.model.internal.l
    //   0	125	2	paramInt1	int
    //   0	125	3	paramInt2	int
    //   1	70	4	localObject	Object
    //   6	113	5	localParcel1	android.os.Parcel
    //   11	103	6	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   13	20	112	finally
    //   24	31	112	finally
    //   31	70	112	finally
    //   73	95	112	finally
  }
  
  public IBinder asBinder()
  {
    return le;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.e.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */