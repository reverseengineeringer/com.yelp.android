package com.crashlytics.android.internal;

import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.LinkedList;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import javax.security.auth.x500.X500Principal;

public class bu
{
  private final ci a;
  private af b;
  private SSLSocketFactory c;
  private boolean d;
  
  public bu()
  {
    this(new cj());
  }
  
  public bu(ci paramci)
  {
    a = paramci;
  }
  
  private SSLSocketFactory a()
  {
    try
    {
      if ((c == null) && (!d)) {
        c = b();
      }
      SSLSocketFactory localSSLSocketFactory = c;
      return localSSLSocketFactory;
    }
    finally {}
  }
  
  private static boolean a(X509Certificate paramX509Certificate1, X509Certificate paramX509Certificate2)
  {
    if (!paramX509Certificate1.getSubjectX500Principal().equals(paramX509Certificate2.getIssuerX500Principal())) {
      return false;
    }
    try
    {
      paramX509Certificate2.verify(paramX509Certificate1.getPublicKey());
      return true;
    }
    catch (GeneralSecurityException paramX509Certificate1) {}
    return false;
  }
  
  public static X509Certificate[] a(X509Certificate[] paramArrayOfX509Certificate, ah paramah)
  {
    int m = 1;
    LinkedList localLinkedList = new LinkedList();
    if (paramah.a(paramArrayOfX509Certificate[0])) {}
    for (int i = 1;; i = 0)
    {
      localLinkedList.add(paramArrayOfX509Certificate[0]);
      int k = 1;
      int j;
      for (;;)
      {
        j = i;
        if (k >= paramArrayOfX509Certificate.length) {
          break;
        }
        if (paramah.a(paramArrayOfX509Certificate[k])) {
          i = 1;
        }
        j = i;
        if (!a(paramArrayOfX509Certificate[k], paramArrayOfX509Certificate[(k - 1)])) {
          break;
        }
        localLinkedList.add(paramArrayOfX509Certificate[k]);
        k += 1;
      }
      paramArrayOfX509Certificate = paramah.b(paramArrayOfX509Certificate[(k - 1)]);
      if (paramArrayOfX509Certificate != null) {
        localLinkedList.add(paramArrayOfX509Certificate);
      }
      for (i = m;; i = j)
      {
        if (i != 0) {
          return (X509Certificate[])localLinkedList.toArray(new X509Certificate[localLinkedList.size()]);
        }
        throw new CertificateException("Didn't find a trust anchor in chain cleanup!");
      }
    }
  }
  
  /* Error */
  private SSLSocketFactory b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 30	com/crashlytics/android/internal/bu:d	Z
    //   7: aload_0
    //   8: getfield 96	com/crashlytics/android/internal/bu:b	Lcom/crashlytics/android/internal/af;
    //   11: astore_1
    //   12: ldc 98
    //   14: invokestatic 104	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   17: astore_2
    //   18: aload_2
    //   19: aconst_null
    //   20: iconst_1
    //   21: anewarray 106	javax/net/ssl/TrustManager
    //   24: dup
    //   25: iconst_0
    //   26: new 108	com/crashlytics/android/internal/ag
    //   29: dup
    //   30: new 64	com/crashlytics/android/internal/ah
    //   33: dup
    //   34: aload_1
    //   35: invokeinterface 113 1 0
    //   40: aload_1
    //   41: invokeinterface 116 1 0
    //   46: invokespecial 119	com/crashlytics/android/internal/ah:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   49: aload_1
    //   50: invokespecial 122	com/crashlytics/android/internal/ag:<init>	(Lcom/crashlytics/android/internal/ah;Lcom/crashlytics/android/internal/af;)V
    //   53: aastore
    //   54: aconst_null
    //   55: invokevirtual 126	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   58: aload_2
    //   59: invokevirtual 129	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   62: astore_1
    //   63: aload_0
    //   64: getfield 25	com/crashlytics/android/internal/bu:a	Lcom/crashlytics/android/internal/ci;
    //   67: ldc -125
    //   69: ldc -123
    //   71: invokeinterface 138 3 0
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: areturn
    //   80: astore_1
    //   81: aload_0
    //   82: getfield 25	com/crashlytics/android/internal/bu:a	Lcom/crashlytics/android/internal/ci;
    //   85: ldc -125
    //   87: ldc -116
    //   89: aload_1
    //   90: invokeinterface 143 4 0
    //   95: aconst_null
    //   96: astore_1
    //   97: goto -21 -> 76
    //   100: astore_1
    //   101: aload_0
    //   102: monitorexit
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	bu
    //   11	68	1	localObject1	Object
    //   80	10	1	localException	Exception
    //   96	1	1	localObject2	Object
    //   100	4	1	localObject3	Object
    //   17	42	2	localSSLContext	javax.net.ssl.SSLContext
    // Exception table:
    //   from	to	target	type
    //   7	76	80	java/lang/Exception
    //   2	7	100	finally
    //   7	76	100	finally
    //   81	95	100	finally
  }
  
  public bw a(ax paramax, String paramString, Map<String, String> paramMap)
  {
    switch (bv.a[paramax.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unsupported HTTP method!");
    case 1: 
      paramax = bw.a(paramString, paramMap, true);
      if (paramString != null) {
        break;
      }
    }
    for (boolean bool = false;; bool = paramString.toLowerCase().startsWith("https"))
    {
      if ((bool) && (b != null))
      {
        paramString = a();
        if (paramString != null) {
          ((HttpsURLConnection)paramax.a()).setSSLSocketFactory(paramString);
        }
      }
      return paramax;
      paramax = bw.b(paramString, paramMap, true);
      break;
      paramax = bw.a(paramString);
      break;
      paramax = bw.b(paramString);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */