package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.k;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public class b
  implements c
{
  private final k a;
  private e b;
  private SSLSocketFactory c;
  private boolean d;
  
  public b()
  {
    this(new io.fabric.sdk.android.b());
  }
  
  public b(k paramk)
  {
    a = paramk;
  }
  
  private void a()
  {
    try
    {
      d = false;
      c = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private boolean a(String paramString)
  {
    return (paramString != null) && (paramString.toLowerCase(Locale.US).startsWith("https"));
  }
  
  private SSLSocketFactory b()
  {
    try
    {
      if ((c == null) && (!d)) {
        c = c();
      }
      SSLSocketFactory localSSLSocketFactory = c;
      return localSSLSocketFactory;
    }
    finally {}
  }
  
  /* Error */
  private SSLSocketFactory c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 31	io/fabric/sdk/android/services/network/b:d	Z
    //   7: aload_0
    //   8: getfield 58	io/fabric/sdk/android/services/network/b:b	Lio/fabric/sdk/android/services/network/e;
    //   11: invokestatic 63	io/fabric/sdk/android/services/network/d:a	(Lio/fabric/sdk/android/services/network/e;)Ljavax/net/ssl/SSLSocketFactory;
    //   14: astore_1
    //   15: aload_0
    //   16: getfield 29	io/fabric/sdk/android/services/network/b:a	Lio/fabric/sdk/android/k;
    //   19: ldc 65
    //   21: ldc 67
    //   23: invokeinterface 72 3 0
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: areturn
    //   32: astore_1
    //   33: aload_0
    //   34: getfield 29	io/fabric/sdk/android/services/network/b:a	Lio/fabric/sdk/android/k;
    //   37: ldc 65
    //   39: ldc 74
    //   41: aload_1
    //   42: invokeinterface 78 4 0
    //   47: aconst_null
    //   48: astore_1
    //   49: goto -21 -> 28
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	b
    //   14	17	1	localSSLSocketFactory	SSLSocketFactory
    //   32	10	1	localException	Exception
    //   48	1	1	localObject1	Object
    //   52	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   7	28	32	java/lang/Exception
    //   2	7	52	finally
    //   7	28	52	finally
    //   33	47	52	finally
  }
  
  public HttpRequest a(HttpMethod paramHttpMethod, String paramString, Map<String, String> paramMap)
  {
    switch (1.a[paramHttpMethod.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unsupported HTTP method!");
    case 1: 
      paramHttpMethod = HttpRequest.a(paramString, paramMap, true);
    }
    for (;;)
    {
      if ((a(paramString)) && (b != null))
      {
        paramString = b();
        if (paramString != null) {
          ((HttpsURLConnection)paramHttpMethod.a()).setSSLSocketFactory(paramString);
        }
      }
      return paramHttpMethod;
      paramHttpMethod = HttpRequest.b(paramString, paramMap, true);
      continue;
      paramHttpMethod = HttpRequest.d(paramString);
      continue;
      paramHttpMethod = HttpRequest.e(paramString);
    }
  }
  
  public void a(e parame)
  {
    if (b != parame)
    {
      b = parame;
      a();
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.network.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */