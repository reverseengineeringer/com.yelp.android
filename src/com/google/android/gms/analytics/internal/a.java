package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

public class a
  extends r
{
  public static boolean a;
  private AdvertisingIdClient.Info b;
  private final k c;
  private String d;
  private boolean e = false;
  private Object f = new Object();
  
  a(t paramt)
  {
    super(paramt);
    c = new k(paramt.d());
  }
  
  private static String a(String paramString)
  {
    MessageDigest localMessageDigest = n.d("MD5");
    if (localMessageDigest == null) {
      return null;
    }
    return String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, localMessageDigest.digest(paramString.getBytes())) });
  }
  
  private boolean a(AdvertisingIdClient.Info paramInfo1, AdvertisingIdClient.Info paramInfo2)
  {
    Object localObject1 = null;
    if (paramInfo2 == null) {}
    for (paramInfo2 = null; TextUtils.isEmpty(paramInfo2); paramInfo2 = paramInfo2.getId()) {
      return true;
    }
    String str = x().b();
    boolean bool;
    for (;;)
    {
      synchronized (f)
      {
        if (!e)
        {
          d = e();
          e = true;
          paramInfo1 = a(paramInfo2 + str);
          if (!TextUtils.isEmpty(paramInfo1)) {
            break;
          }
          return false;
        }
      }
      if (TextUtils.isEmpty(d))
      {
        if (paramInfo1 == null) {}
        for (paramInfo1 = (AdvertisingIdClient.Info)localObject1; paramInfo1 == null; paramInfo1 = paramInfo1.getId())
        {
          bool = g(paramInfo2 + str);
          return bool;
        }
        d = a(paramInfo1 + str);
      }
    }
    if (paramInfo1.equals(d)) {
      return true;
    }
    if (!TextUtils.isEmpty(d))
    {
      b("Resetting the client id because Advertising Id changed.");
      paramInfo1 = x().c();
      a("New client Id", paramInfo1);
    }
    for (;;)
    {
      bool = g(paramInfo2 + paramInfo1);
      return bool;
      paramInfo1 = str;
    }
  }
  
  /* Error */
  private AdvertisingIdClient.Info f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	com/google/android/gms/analytics/internal/a:c	Lcom/google/android/gms/analytics/internal/k;
    //   6: ldc2_w 137
    //   9: invokevirtual 141	com/google/android/gms/analytics/internal/k:a	(J)Z
    //   12: ifeq +32 -> 44
    //   15: aload_0
    //   16: getfield 40	com/google/android/gms/analytics/internal/a:c	Lcom/google/android/gms/analytics/internal/k;
    //   19: invokevirtual 143	com/google/android/gms/analytics/internal/k:a	()V
    //   22: aload_0
    //   23: invokevirtual 145	com/google/android/gms/analytics/internal/a:d	()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    //   26: astore_1
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 147	com/google/android/gms/analytics/internal/a:b	Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    //   32: aload_1
    //   33: invokespecial 149	com/google/android/gms/analytics/internal/a:a	(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z
    //   36: ifeq +17 -> 53
    //   39: aload_0
    //   40: aload_1
    //   41: putfield 147	com/google/android/gms/analytics/internal/a:b	Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    //   44: aload_0
    //   45: getfield 147	com/google/android/gms/analytics/internal/a:b	Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: areturn
    //   53: aload_0
    //   54: ldc -105
    //   56: invokevirtual 153	com/google/android/gms/analytics/internal/a:f	(Ljava/lang/String;)V
    //   59: aload_0
    //   60: new 87	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info
    //   63: dup
    //   64: ldc -101
    //   66: iconst_0
    //   67: invokespecial 158	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info:<init>	(Ljava/lang/String;Z)V
    //   70: putfield 147	com/google/android/gms/analytics/internal/a:b	Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    //   73: goto -29 -> 44
    //   76: astore_1
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_1
    //   80: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	a
    //   26	26	1	localInfo	AdvertisingIdClient.Info
    //   76	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	44	76	finally
    //   44	49	76	finally
    //   53	73	76	finally
  }
  
  private boolean g(String paramString)
  {
    try
    {
      paramString = a(paramString);
      b("Storing hashed adid.");
      FileOutputStream localFileOutputStream = o().openFileOutput("gaClientIdData", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      d = paramString;
      return true;
    }
    catch (IOException paramString)
    {
      e("Error creating hash file", paramString);
    }
    return false;
  }
  
  protected void a() {}
  
  public boolean b()
  {
    boolean bool2 = false;
    D();
    AdvertisingIdClient.Info localInfo = f();
    boolean bool1 = bool2;
    if (localInfo != null)
    {
      bool1 = bool2;
      if (!localInfo.isLimitAdTrackingEnabled()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String c()
  {
    D();
    Object localObject = f();
    if (localObject != null) {}
    for (localObject = ((AdvertisingIdClient.Info)localObject).getId();; localObject = null)
    {
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        return null;
      }
      return (String)localObject;
    }
  }
  
  protected AdvertisingIdClient.Info d()
  {
    Object localObject = null;
    try
    {
      AdvertisingIdClient.Info localInfo = AdvertisingIdClient.getAdvertisingIdInfo(o());
      localObject = localInfo;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      e("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
      return null;
    }
    catch (Throwable localThrowable)
    {
      while (a) {}
      a = true;
      d("Error getting advertiser id", localThrowable);
    }
    return (AdvertisingIdClient.Info)localObject;
    return null;
  }
  
  protected String e()
  {
    Object localObject1 = null;
    try
    {
      FileInputStream localFileInputStream = o().openFileInput("gaClientIdData");
      Object localObject2 = new byte[''];
      int i = localFileInputStream.read((byte[])localObject2, 0, 128);
      if (localFileInputStream.available() > 0)
      {
        e("Hash file seems corrupted, deleting it.");
        localFileInputStream.close();
        o().deleteFile("gaClientIdData");
        return null;
      }
      if (i <= 0)
      {
        b("Hash file is empty.");
        localFileInputStream.close();
        return null;
      }
      localObject2 = new String((byte[])localObject2, 0, i);
      IOException localIOException2;
      return null;
    }
    catch (IOException localIOException1)
    {
      try
      {
        localFileInputStream.close();
        return (String)localObject2;
      }
      catch (IOException localIOException3)
      {
        for (;;)
        {
          localObject1 = localIOException1;
          localIOException2 = localIOException3;
        }
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        return localIOException2;
      }
      localIOException1 = localIOException1;
      d("Error reading Hash file, deleting it", localIOException1);
      o().deleteFile("gaClientIdData");
      return (String)localObject1;
    }
    catch (FileNotFoundException localFileNotFoundException2) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */