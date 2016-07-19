package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.yelp.android.az.b.a;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class i
  extends zzal
{
  private static AdvertisingIdClient r = null;
  private static CountDownLatch s = new CountDownLatch(1);
  private boolean t;
  
  protected i(Context paramContext, k paramk, boolean paramBoolean)
  {
    super(paramContext, paramk);
    t = paramBoolean;
  }
  
  public static i a(String paramString, Context paramContext, boolean paramBoolean)
  {
    e locale = new e();
    a(paramString, paramContext, locale);
    if (paramBoolean) {}
    try
    {
      if (r == null) {
        new Thread(new b(paramContext)).start();
      }
      return new i(paramContext, locale, paramBoolean);
    }
    finally {}
  }
  
  private void a(Context paramContext, b.a parama)
  {
    if (!t) {}
    for (;;)
    {
      return;
      try
      {
        if (a())
        {
          paramContext = f();
          String str = paramContext.a();
          if (str != null)
          {
            O = Boolean.valueOf(paramContext.b());
            N = Integer.valueOf(5);
            M = str;
            a(28, m);
          }
        }
        else
        {
          M = d(paramContext);
          a(24, m);
          return;
        }
      }
      catch (zzal.zza paramContext) {}catch (IOException paramContext) {}
    }
  }
  
  protected b.a b(Context paramContext)
  {
    b.a locala = super.b(paramContext);
    a(paramContext, locala);
    return locala;
  }
  
  a f()
    throws IOException
  {
    try
    {
      if (!s.await(2L, TimeUnit.SECONDS))
      {
        a locala1 = new a(null, false);
        return locala1;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      return new a(null, false);
    }
    try
    {
      if (r == null)
      {
        a locala2 = new a(null, false);
        return locala2;
      }
    }
    finally {}
    AdvertisingIdClient.Info localInfo = r.getInfo();
    return new a(a(localInfo.getId()), localInfo.isLimitAdTrackingEnabled());
  }
  
  class a
  {
    private String b;
    private boolean c;
    
    public a(String paramString, boolean paramBoolean)
    {
      b = paramString;
      c = paramBoolean;
    }
    
    public String a()
    {
      return b;
    }
    
    public boolean b()
    {
      return c;
    }
  }
  
  private static final class b
    implements Runnable
  {
    private Context a;
    
    public b(Context paramContext)
    {
      a = paramContext.getApplicationContext();
      if (a == null) {
        a = paramContext;
      }
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: ldc 8
      //   2: monitorenter
      //   3: invokestatic 36	com/google/android/gms/internal/i:g	()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
      //   6: ifnonnull +28 -> 34
      //   9: iconst_1
      //   10: invokestatic 42	com/google/android/gms/ads/identifier/AdvertisingIdClient:setShouldSkipGmsCoreVersionCheck	(Z)V
      //   13: new 38	com/google/android/gms/ads/identifier/AdvertisingIdClient
      //   16: dup
      //   17: aload_0
      //   18: getfield 24	com/google/android/gms/internal/i$b:a	Landroid/content/Context;
      //   21: invokespecial 44	com/google/android/gms/ads/identifier/AdvertisingIdClient:<init>	(Landroid/content/Context;)V
      //   24: astore_1
      //   25: aload_1
      //   26: invokevirtual 47	com/google/android/gms/ads/identifier/AdvertisingIdClient:start	()V
      //   29: aload_1
      //   30: invokestatic 50	com/google/android/gms/internal/i:a	(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
      //   33: pop
      //   34: invokestatic 54	com/google/android/gms/internal/i:h	()Ljava/util/concurrent/CountDownLatch;
      //   37: invokevirtual 59	java/util/concurrent/CountDownLatch:countDown	()V
      //   40: ldc 8
      //   42: monitorexit
      //   43: return
      //   44: astore_1
      //   45: aconst_null
      //   46: invokestatic 50	com/google/android/gms/internal/i:a	(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
      //   49: pop
      //   50: invokestatic 54	com/google/android/gms/internal/i:h	()Ljava/util/concurrent/CountDownLatch;
      //   53: invokevirtual 59	java/util/concurrent/CountDownLatch:countDown	()V
      //   56: goto -16 -> 40
      //   59: astore_1
      //   60: ldc 8
      //   62: monitorexit
      //   63: aload_1
      //   64: athrow
      //   65: astore_1
      //   66: invokestatic 54	com/google/android/gms/internal/i:h	()Ljava/util/concurrent/CountDownLatch;
      //   69: invokevirtual 59	java/util/concurrent/CountDownLatch:countDown	()V
      //   72: aload_1
      //   73: athrow
      //   74: astore_1
      //   75: goto -30 -> 45
      //   78: astore_1
      //   79: goto -34 -> 45
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	82	0	this	b
      //   24	6	1	localAdvertisingIdClient	AdvertisingIdClient
      //   44	1	1	localIOException	IOException
      //   59	5	1	localObject1	Object
      //   65	8	1	localObject2	Object
      //   74	1	1	localGooglePlayServicesNotAvailableException	com.google.android.gms.common.GooglePlayServicesNotAvailableException
      //   78	1	1	localGooglePlayServicesRepairableException	com.google.android.gms.common.GooglePlayServicesRepairableException
      // Exception table:
      //   from	to	target	type
      //   3	34	44	java/io/IOException
      //   34	40	59	finally
      //   40	43	59	finally
      //   50	56	59	finally
      //   60	63	59	finally
      //   66	74	59	finally
      //   3	34	65	finally
      //   45	50	65	finally
      //   3	34	74	com/google/android/gms/common/GooglePlayServicesNotAvailableException
      //   3	34	78	com/google/android/gms/common/GooglePlayServicesRepairableException
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */