package io.fabric.sdk.android.services.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

class e
  implements f
{
  private final Context a;
  
  public e(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  /* Error */
  public b a()
  {
    // Byte code:
    //   0: invokestatic 40	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   3: invokestatic 43	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   6: if_acmpne +17 -> 23
    //   9: invokestatic 49	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   12: ldc 51
    //   14: ldc 53
    //   16: invokeinterface 58 3 0
    //   21: aconst_null
    //   22: areturn
    //   23: aload_0
    //   24: getfield 28	io/fabric/sdk/android/services/common/e:a	Landroid/content/Context;
    //   27: invokevirtual 62	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   30: ldc 64
    //   32: iconst_0
    //   33: invokevirtual 70	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   36: pop
    //   37: new 10	io/fabric/sdk/android/services/common/e$a
    //   40: dup
    //   41: aconst_null
    //   42: invokespecial 73	io/fabric/sdk/android/services/common/e$a:<init>	(Lio/fabric/sdk/android/services/common/e$1;)V
    //   45: astore_2
    //   46: new 75	android/content/Intent
    //   49: dup
    //   50: ldc 77
    //   52: invokespecial 80	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   55: astore_3
    //   56: aload_3
    //   57: ldc 82
    //   59: invokevirtual 86	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   62: pop
    //   63: aload_0
    //   64: getfield 28	io/fabric/sdk/android/services/common/e:a	Landroid/content/Context;
    //   67: aload_3
    //   68: aload_2
    //   69: iconst_1
    //   70: invokevirtual 90	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   73: istore_1
    //   74: iload_1
    //   75: ifeq +108 -> 183
    //   78: new 13	io/fabric/sdk/android/services/common/e$b
    //   81: dup
    //   82: aload_2
    //   83: invokevirtual 93	io/fabric/sdk/android/services/common/e$a:a	()Landroid/os/IBinder;
    //   86: invokespecial 96	io/fabric/sdk/android/services/common/e$b:<init>	(Landroid/os/IBinder;)V
    //   89: astore_3
    //   90: new 98	io/fabric/sdk/android/services/common/b
    //   93: dup
    //   94: aload_3
    //   95: invokevirtual 101	io/fabric/sdk/android/services/common/e$b:a	()Ljava/lang/String;
    //   98: aload_3
    //   99: invokevirtual 104	io/fabric/sdk/android/services/common/e$b:b	()Z
    //   102: invokespecial 107	io/fabric/sdk/android/services/common/b:<init>	(Ljava/lang/String;Z)V
    //   105: astore_3
    //   106: aload_0
    //   107: getfield 28	io/fabric/sdk/android/services/common/e:a	Landroid/content/Context;
    //   110: aload_2
    //   111: invokevirtual 111	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   114: aload_3
    //   115: areturn
    //   116: astore_2
    //   117: invokestatic 49	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   120: ldc 51
    //   122: ldc 113
    //   124: aload_2
    //   125: invokeinterface 116 4 0
    //   130: aconst_null
    //   131: areturn
    //   132: astore_3
    //   133: invokestatic 49	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   136: ldc 51
    //   138: ldc 118
    //   140: aload_3
    //   141: invokeinterface 121 4 0
    //   146: aload_0
    //   147: getfield 28	io/fabric/sdk/android/services/common/e:a	Landroid/content/Context;
    //   150: aload_2
    //   151: invokevirtual 111	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   154: aconst_null
    //   155: areturn
    //   156: astore_2
    //   157: invokestatic 49	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   160: ldc 51
    //   162: ldc 123
    //   164: aload_2
    //   165: invokeinterface 116 4 0
    //   170: aconst_null
    //   171: areturn
    //   172: astore_3
    //   173: aload_0
    //   174: getfield 28	io/fabric/sdk/android/services/common/e:a	Landroid/content/Context;
    //   177: aload_2
    //   178: invokevirtual 111	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   181: aload_3
    //   182: athrow
    //   183: invokestatic 49	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   186: ldc 51
    //   188: ldc 123
    //   190: invokeinterface 58 3 0
    //   195: aconst_null
    //   196: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	197	0	this	e
    //   73	2	1	bool	boolean
    //   45	66	2	locala	a
    //   116	35	2	localException1	Exception
    //   156	22	2	localThrowable	Throwable
    //   55	60	3	localObject1	Object
    //   132	9	3	localException2	Exception
    //   172	10	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   23	37	116	java/lang/Exception
    //   78	106	132	java/lang/Exception
    //   63	74	156	java/lang/Throwable
    //   106	114	156	java/lang/Throwable
    //   146	154	156	java/lang/Throwable
    //   173	183	156	java/lang/Throwable
    //   183	195	156	java/lang/Throwable
    //   78	106	172	finally
    //   133	146	172	finally
  }
  
  private static final class a
    implements ServiceConnection
  {
    private boolean a = false;
    private final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue(1);
    
    public IBinder a()
    {
      if (a) {
        c.h().e("Fabric", "getBinder already called");
      }
      a = true;
      try
      {
        IBinder localIBinder = (IBinder)b.poll(200L, TimeUnit.MILLISECONDS);
        return localIBinder;
      }
      catch (InterruptedException localInterruptedException) {}
      return null;
    }
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      try
      {
        b.put(paramIBinder);
        return;
      }
      catch (InterruptedException paramComponentName) {}
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      b.clear();
    }
  }
  
  private static final class b
    implements IInterface
  {
    private final IBinder a;
    
    public b(IBinder paramIBinder)
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
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */