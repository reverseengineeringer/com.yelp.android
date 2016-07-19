package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseOutputStream;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.kb;
import java.io.IOException;
import java.io.OutputStream;

@fv
public final class LargeParcelTeleporter
  implements SafeParcelable
{
  public static final Parcelable.Creator<LargeParcelTeleporter> CREATOR = new k();
  final int a;
  ParcelFileDescriptor b;
  private Parcelable c;
  private boolean d;
  
  LargeParcelTeleporter(int paramInt, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    a = paramInt;
    b = paramParcelFileDescriptor;
    c = null;
    d = true;
  }
  
  public LargeParcelTeleporter(SafeParcelable paramSafeParcelable)
  {
    a = 1;
    b = null;
    c = paramSafeParcelable;
    d = false;
  }
  
  protected <T> ParcelFileDescriptor a(final byte[] paramArrayOfByte)
  {
    try
    {
      ParcelFileDescriptor[] arrayOfParcelFileDescriptor = ParcelFileDescriptor.createPipe();
      localAutoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(arrayOfParcelFileDescriptor[1]);
      gz.b("Error transporting the ad response", paramArrayOfByte);
    }
    catch (IOException paramArrayOfByte)
    {
      try
      {
        new Thread(new Runnable()
        {
          /* Error */
          public void run()
          {
            // Byte code:
            //   0: new 33	java/io/DataOutputStream
            //   3: dup
            //   4: aload_0
            //   5: getfield 22	com/google/android/gms/ads/internal/request/LargeParcelTeleporter$1:a	Ljava/io/OutputStream;
            //   8: invokespecial 36	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
            //   11: astore_2
            //   12: aload_2
            //   13: astore_1
            //   14: aload_2
            //   15: aload_0
            //   16: getfield 24	com/google/android/gms/ads/internal/request/LargeParcelTeleporter$1:b	[B
            //   19: arraylength
            //   20: invokevirtual 40	java/io/DataOutputStream:writeInt	(I)V
            //   23: aload_2
            //   24: astore_1
            //   25: aload_2
            //   26: aload_0
            //   27: getfield 24	com/google/android/gms/ads/internal/request/LargeParcelTeleporter$1:b	[B
            //   30: invokevirtual 44	java/io/DataOutputStream:write	([B)V
            //   33: aload_2
            //   34: ifnonnull +11 -> 45
            //   37: aload_0
            //   38: getfield 22	com/google/android/gms/ads/internal/request/LargeParcelTeleporter$1:a	Ljava/io/OutputStream;
            //   41: invokestatic 49	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
            //   44: return
            //   45: aload_2
            //   46: invokestatic 49	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
            //   49: return
            //   50: astore_3
            //   51: aconst_null
            //   52: astore_2
            //   53: aload_2
            //   54: astore_1
            //   55: ldc 51
            //   57: aload_3
            //   58: invokestatic 56	com/google/android/gms/internal/gz:b	(Ljava/lang/String;Ljava/lang/Throwable;)V
            //   61: aload_2
            //   62: astore_1
            //   63: invokestatic 62	com/google/android/gms/ads/internal/s:h	()Lcom/google/android/gms/internal/gt;
            //   66: aload_3
            //   67: iconst_1
            //   68: invokevirtual 67	com/google/android/gms/internal/gt:a	(Ljava/lang/Throwable;Z)V
            //   71: aload_2
            //   72: ifnonnull +11 -> 83
            //   75: aload_0
            //   76: getfield 22	com/google/android/gms/ads/internal/request/LargeParcelTeleporter$1:a	Ljava/io/OutputStream;
            //   79: invokestatic 49	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
            //   82: return
            //   83: aload_2
            //   84: invokestatic 49	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
            //   87: return
            //   88: astore_2
            //   89: aconst_null
            //   90: astore_1
            //   91: aload_1
            //   92: ifnonnull +12 -> 104
            //   95: aload_0
            //   96: getfield 22	com/google/android/gms/ads/internal/request/LargeParcelTeleporter$1:a	Ljava/io/OutputStream;
            //   99: invokestatic 49	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
            //   102: aload_2
            //   103: athrow
            //   104: aload_1
            //   105: invokestatic 49	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
            //   108: goto -6 -> 102
            //   111: astore_2
            //   112: goto -21 -> 91
            //   115: astore_3
            //   116: goto -63 -> 53
            // Local variable table:
            //   start	length	slot	name	signature
            //   0	119	0	this	1
            //   13	92	1	localDataOutputStream1	java.io.DataOutputStream
            //   11	73	2	localDataOutputStream2	java.io.DataOutputStream
            //   88	15	2	localObject1	Object
            //   111	1	2	localObject2	Object
            //   50	17	3	localIOException1	IOException
            //   115	1	3	localIOException2	IOException
            // Exception table:
            //   from	to	target	type
            //   0	12	50	java/io/IOException
            //   0	12	88	finally
            //   14	23	111	finally
            //   25	33	111	finally
            //   55	61	111	finally
            //   63	71	111	finally
            //   14	23	115	java/io/IOException
            //   25	33	115	java/io/IOException
          }
        }).start();
        paramArrayOfByte = arrayOfParcelFileDescriptor[0];
        return paramArrayOfByte;
      }
      catch (IOException paramArrayOfByte)
      {
        final ParcelFileDescriptor.AutoCloseOutputStream localAutoCloseOutputStream;
        for (;;) {}
      }
      paramArrayOfByte = paramArrayOfByte;
      localAutoCloseOutputStream = null;
    }
    s.h().a(paramArrayOfByte, true);
    kb.a(localAutoCloseOutputStream);
    return null;
  }
  
  /* Error */
  public <T extends SafeParcelable> T a(Parcelable.Creator<T> paramCreator)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 40	com/google/android/gms/ads/internal/request/LargeParcelTeleporter:d	Z
    //   4: ifeq +95 -> 99
    //   7: aload_0
    //   8: getfield 36	com/google/android/gms/ads/internal/request/LargeParcelTeleporter:b	Landroid/os/ParcelFileDescriptor;
    //   11: ifnonnull +10 -> 21
    //   14: ldc 94
    //   16: invokestatic 97	com/google/android/gms/internal/gz:b	(Ljava/lang/String;)V
    //   19: aconst_null
    //   20: areturn
    //   21: new 99	java/io/DataInputStream
    //   24: dup
    //   25: new 101	android/os/ParcelFileDescriptor$AutoCloseInputStream
    //   28: dup
    //   29: aload_0
    //   30: getfield 36	com/google/android/gms/ads/internal/request/LargeParcelTeleporter:b	Landroid/os/ParcelFileDescriptor;
    //   33: invokespecial 102	android/os/ParcelFileDescriptor$AutoCloseInputStream:<init>	(Landroid/os/ParcelFileDescriptor;)V
    //   36: invokespecial 105	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   39: astore_2
    //   40: aload_2
    //   41: invokevirtual 109	java/io/DataInputStream:readInt	()I
    //   44: newarray <illegal type>
    //   46: astore_3
    //   47: aload_2
    //   48: aload_3
    //   49: iconst_0
    //   50: aload_3
    //   51: arraylength
    //   52: invokevirtual 113	java/io/DataInputStream:readFully	([BII)V
    //   55: aload_2
    //   56: invokestatic 89	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
    //   59: invokestatic 119	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   62: astore_2
    //   63: aload_2
    //   64: aload_3
    //   65: iconst_0
    //   66: aload_3
    //   67: arraylength
    //   68: invokevirtual 122	android/os/Parcel:unmarshall	([BII)V
    //   71: aload_2
    //   72: iconst_0
    //   73: invokevirtual 126	android/os/Parcel:setDataPosition	(I)V
    //   76: aload_0
    //   77: aload_1
    //   78: aload_2
    //   79: invokeinterface 132 2 0
    //   84: checkcast 6	com/google/android/gms/common/internal/safeparcel/SafeParcelable
    //   87: putfield 38	com/google/android/gms/ads/internal/request/LargeParcelTeleporter:c	Landroid/os/Parcelable;
    //   90: aload_2
    //   91: invokevirtual 135	android/os/Parcel:recycle	()V
    //   94: aload_0
    //   95: iconst_0
    //   96: putfield 40	com/google/android/gms/ads/internal/request/LargeParcelTeleporter:d	Z
    //   99: aload_0
    //   100: getfield 38	com/google/android/gms/ads/internal/request/LargeParcelTeleporter:c	Landroid/os/Parcelable;
    //   103: checkcast 6	com/google/android/gms/common/internal/safeparcel/SafeParcelable
    //   106: areturn
    //   107: astore_1
    //   108: new 137	java/lang/IllegalStateException
    //   111: dup
    //   112: ldc -117
    //   114: aload_1
    //   115: invokespecial 141	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   118: athrow
    //   119: astore_1
    //   120: aload_2
    //   121: invokestatic 89	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
    //   124: aload_1
    //   125: athrow
    //   126: astore_1
    //   127: aload_2
    //   128: invokevirtual 135	android/os/Parcel:recycle	()V
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	LargeParcelTeleporter
    //   0	133	1	paramCreator	Parcelable.Creator<T>
    //   39	89	2	localObject	Object
    //   46	21	3	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   40	55	107	java/io/IOException
    //   40	55	119	finally
    //   108	119	119	finally
    //   63	90	126	finally
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Parcel localParcel;
    if (b == null) {
      localParcel = Parcel.obtain();
    }
    try
    {
      c.writeToParcel(localParcel, 0);
      byte[] arrayOfByte = localParcel.marshall();
      localParcel.recycle();
      b = a(arrayOfByte);
      k.a(this, paramParcel, paramInt);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.LargeParcelTeleporter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */