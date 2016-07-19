package com.bugsnag.android;

import java.io.IOException;

class HttpClient
{
  /* Error */
  static void post(String paramString, JsonStream.Streamable paramStreamable)
    throws HttpClient.NetworkException, HttpClient.BadResponseException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 6
    //   5: aconst_null
    //   6: astore 5
    //   8: new 16	java/net/URL
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 20	java/net/URL:<init>	(Ljava/lang/String;)V
    //   16: invokevirtual 24	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   19: checkcast 26	java/net/HttpURLConnection
    //   22: astore 4
    //   24: aload 4
    //   26: iconst_1
    //   27: invokevirtual 30	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   30: aload 4
    //   32: iconst_0
    //   33: invokevirtual 34	java/net/HttpURLConnection:setChunkedStreamingMode	(I)V
    //   36: aload 4
    //   38: ldc 36
    //   40: ldc 38
    //   42: invokevirtual 42	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   45: aload 6
    //   47: astore_3
    //   48: aload 4
    //   50: invokevirtual 46	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   53: astore 5
    //   55: aload 5
    //   57: astore_3
    //   58: new 48	com/bugsnag/android/JsonStream
    //   61: dup
    //   62: new 50	java/io/OutputStreamWriter
    //   65: dup
    //   66: aload 5
    //   68: invokespecial 53	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   71: invokespecial 56	com/bugsnag/android/JsonStream:<init>	(Ljava/io/Writer;)V
    //   74: astore 6
    //   76: aload 5
    //   78: astore_3
    //   79: aload_1
    //   80: aload 6
    //   82: invokeinterface 62 2 0
    //   87: aload 5
    //   89: astore_3
    //   90: aload 6
    //   92: invokevirtual 66	com/bugsnag/android/JsonStream:close	()V
    //   95: aload 5
    //   97: invokestatic 72	com/bugsnag/android/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   100: aload 4
    //   102: invokevirtual 76	java/net/HttpURLConnection:getResponseCode	()I
    //   105: istore_2
    //   106: iload_2
    //   107: bipush 100
    //   109: idiv
    //   110: iconst_2
    //   111: if_icmpeq +48 -> 159
    //   114: new 6	com/bugsnag/android/HttpClient$BadResponseException
    //   117: dup
    //   118: aload_0
    //   119: iload_2
    //   120: invokespecial 79	com/bugsnag/android/HttpClient$BadResponseException:<init>	(Ljava/lang/String;I)V
    //   123: athrow
    //   124: astore_1
    //   125: aload 4
    //   127: astore_3
    //   128: new 9	com/bugsnag/android/HttpClient$NetworkException
    //   131: dup
    //   132: aload_0
    //   133: aload_1
    //   134: invokespecial 82	com/bugsnag/android/HttpClient$NetworkException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   137: athrow
    //   138: astore_0
    //   139: aload_3
    //   140: invokestatic 85	com/bugsnag/android/IOUtils:close	(Ljava/net/URLConnection;)V
    //   143: aload_0
    //   144: athrow
    //   145: astore_1
    //   146: aload_3
    //   147: invokestatic 72	com/bugsnag/android/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   150: aload_1
    //   151: athrow
    //   152: astore_0
    //   153: aload 4
    //   155: astore_3
    //   156: goto -17 -> 139
    //   159: aload 4
    //   161: invokestatic 85	com/bugsnag/android/IOUtils:close	(Ljava/net/URLConnection;)V
    //   164: return
    //   165: astore_1
    //   166: aload 5
    //   168: astore_3
    //   169: goto -41 -> 128
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	paramString	String
    //   0	172	1	paramStreamable	JsonStream.Streamable
    //   105	15	2	i	int
    //   1	168	3	localObject	Object
    //   22	138	4	localHttpURLConnection	java.net.HttpURLConnection
    //   6	161	5	localOutputStream	java.io.OutputStream
    //   3	88	6	localJsonStream	JsonStream
    // Exception table:
    //   from	to	target	type
    //   24	45	124	java/io/IOException
    //   95	124	124	java/io/IOException
    //   146	152	124	java/io/IOException
    //   8	24	138	finally
    //   128	138	138	finally
    //   48	55	145	finally
    //   58	76	145	finally
    //   79	87	145	finally
    //   90	95	145	finally
    //   24	45	152	finally
    //   95	124	152	finally
    //   146	152	152	finally
    //   8	24	165	java/io/IOException
  }
  
  static class BadResponseException
    extends Exception
  {
    public BadResponseException(String paramString, int paramInt)
    {
      super();
    }
  }
  
  static class NetworkException
    extends IOException
  {
    public NetworkException(String paramString, Exception paramException)
    {
      super();
      initCause(paramException);
    }
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.HttpClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */