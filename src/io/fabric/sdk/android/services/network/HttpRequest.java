package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.GZIPInputStream;

public class HttpRequest
{
  private static final String[] b = new String[0];
  private static b c = b.a;
  public final URL a;
  private HttpURLConnection d = null;
  private final String e;
  private d f;
  private boolean g;
  private boolean h = true;
  private boolean i = false;
  private int j = 8192;
  private String k;
  private int l;
  
  public HttpRequest(CharSequence paramCharSequence, String paramString)
    throws HttpRequest.HttpRequestException
  {
    try
    {
      a = new URL(paramCharSequence.toString());
      e = paramString;
      return;
    }
    catch (MalformedURLException paramCharSequence)
    {
      throw new HttpRequestException(paramCharSequence);
    }
  }
  
  public static HttpRequest a(CharSequence paramCharSequence, Map<?, ?> paramMap, boolean paramBoolean)
  {
    paramMap = a(paramCharSequence, paramMap);
    paramCharSequence = paramMap;
    if (paramBoolean) {
      paramCharSequence = a(paramMap);
    }
    return b(paramCharSequence);
  }
  
  /* Error */
  public static String a(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    // Byte code:
    //   0: new 66	java/net/URL
    //   3: dup
    //   4: aload_0
    //   5: invokeinterface 72 1 0
    //   10: invokespecial 75	java/net/URL:<init>	(Ljava/lang/String;)V
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 103	java/net/URL:getHost	()Ljava/lang/String;
    //   18: astore_2
    //   19: aload_3
    //   20: invokevirtual 107	java/net/URL:getPort	()I
    //   23: istore_1
    //   24: aload_2
    //   25: astore_0
    //   26: iload_1
    //   27: iconst_m1
    //   28: if_icmpeq +30 -> 58
    //   31: new 109	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   38: aload_2
    //   39: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: bipush 58
    //   44: invokevirtual 117	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   47: iload_1
    //   48: invokestatic 122	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   51: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: astore_0
    //   58: new 125	java/net/URI
    //   61: dup
    //   62: aload_3
    //   63: invokevirtual 128	java/net/URL:getProtocol	()Ljava/lang/String;
    //   66: aload_0
    //   67: aload_3
    //   68: invokevirtual 131	java/net/URL:getPath	()Ljava/lang/String;
    //   71: aload_3
    //   72: invokevirtual 134	java/net/URL:getQuery	()Ljava/lang/String;
    //   75: aconst_null
    //   76: invokespecial 137	java/net/URI:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   79: invokevirtual 140	java/net/URI:toASCIIString	()Ljava/lang/String;
    //   82: astore_2
    //   83: aload_2
    //   84: bipush 63
    //   86: invokevirtual 144	java/lang/String:indexOf	(I)I
    //   89: istore_1
    //   90: aload_2
    //   91: astore_0
    //   92: iload_1
    //   93: ifle +54 -> 147
    //   96: aload_2
    //   97: astore_0
    //   98: iload_1
    //   99: iconst_1
    //   100: iadd
    //   101: aload_2
    //   102: invokevirtual 147	java/lang/String:length	()I
    //   105: if_icmpge +42 -> 147
    //   108: new 109	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   115: aload_2
    //   116: iconst_0
    //   117: iload_1
    //   118: iconst_1
    //   119: iadd
    //   120: invokevirtual 151	java/lang/String:substring	(II)Ljava/lang/String;
    //   123: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_2
    //   127: iload_1
    //   128: iconst_1
    //   129: iadd
    //   130: invokevirtual 153	java/lang/String:substring	(I)Ljava/lang/String;
    //   133: ldc -101
    //   135: ldc -99
    //   137: invokevirtual 161	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   140: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: astore_0
    //   147: aload_0
    //   148: areturn
    //   149: astore_0
    //   150: new 8	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   153: dup
    //   154: aload_0
    //   155: invokespecial 82	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   158: athrow
    //   159: astore_0
    //   160: new 98	java/io/IOException
    //   163: dup
    //   164: ldc -93
    //   166: invokespecial 164	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   169: astore_2
    //   170: aload_2
    //   171: aload_0
    //   172: invokevirtual 168	java/io/IOException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   175: pop
    //   176: new 8	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   179: dup
    //   180: aload_2
    //   181: invokespecial 82	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   184: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	paramCharSequence	CharSequence
    //   23	107	1	m	int
    //   18	163	2	localObject	Object
    //   13	59	3	localURL	URL
    // Exception table:
    //   from	to	target	type
    //   0	14	149	java/io/IOException
    //   58	90	159	java/net/URISyntaxException
    //   98	147	159	java/net/URISyntaxException
  }
  
  public static String a(CharSequence paramCharSequence, Map<?, ?> paramMap)
  {
    Object localObject = paramCharSequence.toString();
    if ((paramMap == null) || (paramMap.isEmpty())) {
      return (String)localObject;
    }
    paramCharSequence = new StringBuilder((String)localObject);
    a((String)localObject, paramCharSequence);
    b((String)localObject, paramCharSequence);
    paramMap = paramMap.entrySet().iterator();
    localObject = (Map.Entry)paramMap.next();
    paramCharSequence.append(((Map.Entry)localObject).getKey().toString());
    paramCharSequence.append('=');
    localObject = ((Map.Entry)localObject).getValue();
    if (localObject != null) {
      paramCharSequence.append(localObject);
    }
    while (paramMap.hasNext())
    {
      paramCharSequence.append('&');
      localObject = (Map.Entry)paramMap.next();
      paramCharSequence.append(((Map.Entry)localObject).getKey().toString());
      paramCharSequence.append('=');
      localObject = ((Map.Entry)localObject).getValue();
      if (localObject != null) {
        paramCharSequence.append(localObject);
      }
    }
    return paramCharSequence.toString();
  }
  
  private static StringBuilder a(String paramString, StringBuilder paramStringBuilder)
  {
    if (paramString.indexOf(':') + 2 == paramString.lastIndexOf('/')) {
      paramStringBuilder.append('/');
    }
    return paramStringBuilder;
  }
  
  public static HttpRequest b(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    return new HttpRequest(paramCharSequence, "GET");
  }
  
  public static HttpRequest b(CharSequence paramCharSequence, Map<?, ?> paramMap, boolean paramBoolean)
  {
    paramMap = a(paramCharSequence, paramMap);
    paramCharSequence = paramMap;
    if (paramBoolean) {
      paramCharSequence = a(paramMap);
    }
    return c(paramCharSequence);
  }
  
  private static StringBuilder b(String paramString, StringBuilder paramStringBuilder)
  {
    int m = paramString.indexOf('?');
    int n = paramStringBuilder.length() - 1;
    if (m == -1) {
      paramStringBuilder.append('?');
    }
    while ((m >= n) || (paramString.charAt(n) == '&')) {
      return paramStringBuilder;
    }
    paramStringBuilder.append('&');
    return paramStringBuilder;
  }
  
  public static HttpRequest c(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    return new HttpRequest(paramCharSequence, "POST");
  }
  
  public static HttpRequest d(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    return new HttpRequest(paramCharSequence, "PUT");
  }
  
  public static HttpRequest e(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    return new HttpRequest(paramCharSequence, "DELETE");
  }
  
  private static String f(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0)) {
      return paramString;
    }
    return "UTF-8";
  }
  
  private Proxy q()
  {
    return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(k, l));
  }
  
  /* Error */
  private HttpURLConnection r()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 251	io/fabric/sdk/android/services/network/HttpRequest:k	Ljava/lang/String;
    //   4: ifnull +30 -> 34
    //   7: getstatic 49	io/fabric/sdk/android/services/network/HttpRequest:c	Lio/fabric/sdk/android/services/network/HttpRequest$b;
    //   10: aload_0
    //   11: getfield 77	io/fabric/sdk/android/services/network/HttpRequest:a	Ljava/net/URL;
    //   14: aload_0
    //   15: invokespecial 263	io/fabric/sdk/android/services/network/HttpRequest:q	()Ljava/net/Proxy;
    //   18: invokeinterface 266 3 0
    //   23: astore_1
    //   24: aload_1
    //   25: aload_0
    //   26: getfield 79	io/fabric/sdk/android/services/network/HttpRequest:e	Ljava/lang/String;
    //   29: invokevirtual 271	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   32: aload_1
    //   33: areturn
    //   34: getstatic 49	io/fabric/sdk/android/services/network/HttpRequest:c	Lio/fabric/sdk/android/services/network/HttpRequest$b;
    //   37: aload_0
    //   38: getfield 77	io/fabric/sdk/android/services/network/HttpRequest:a	Ljava/net/URL;
    //   41: invokeinterface 274 2 0
    //   46: astore_1
    //   47: goto -23 -> 24
    //   50: astore_1
    //   51: new 8	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   54: dup
    //   55: aload_1
    //   56: invokespecial 82	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	HttpRequest
    //   23	24	1	localHttpURLConnection	HttpURLConnection
    //   50	6	1	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   0	24	50	java/io/IOException
    //   24	32	50	java/io/IOException
    //   34	47	50	java/io/IOException
  }
  
  public int a(String paramString, int paramInt)
    throws HttpRequest.HttpRequestException
  {
    l();
    return a().getHeaderFieldInt(paramString, paramInt);
  }
  
  public HttpRequest a(int paramInt)
  {
    a().setConnectTimeout(paramInt);
    return this;
  }
  
  protected HttpRequest a(final InputStream paramInputStream, final OutputStream paramOutputStream)
    throws IOException
  {
    (HttpRequest)new a(paramInputStream, h)
    {
      public HttpRequest a()
        throws IOException
      {
        byte[] arrayOfByte = new byte[HttpRequest.a(HttpRequest.this)];
        for (;;)
        {
          int i = paramInputStream.read(arrayOfByte);
          if (i == -1) {
            break;
          }
          paramOutputStream.write(arrayOfByte, 0, i);
        }
        return HttpRequest.this;
      }
    }.call();
  }
  
  public HttpRequest a(String paramString, Number paramNumber)
    throws HttpRequest.HttpRequestException
  {
    return a(paramString, null, paramNumber);
  }
  
  public HttpRequest a(String paramString1, String paramString2)
  {
    a().setRequestProperty(paramString1, paramString2);
    return this;
  }
  
  public HttpRequest a(String paramString1, String paramString2, Number paramNumber)
    throws HttpRequest.HttpRequestException
  {
    if (paramNumber != null) {}
    for (paramNumber = paramNumber.toString();; paramNumber = null) {
      return b(paramString1, paramString2, paramNumber);
    }
  }
  
  protected HttpRequest a(String paramString1, String paramString2, String paramString3)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("form-data; name=\"").append(paramString1);
    if (paramString2 != null) {
      localStringBuilder.append("\"; filename=\"").append(paramString2);
    }
    localStringBuilder.append('"');
    f("Content-Disposition", localStringBuilder.toString());
    if (paramString3 != null) {
      f("Content-Type", paramString3);
    }
    return f("\r\n");
  }
  
  /* Error */
  public HttpRequest a(String paramString1, String paramString2, String paramString3, java.io.File paramFile)
    throws HttpRequest.HttpRequestException
  {
    // Byte code:
    //   0: new 324	java/io/BufferedInputStream
    //   3: dup
    //   4: new 326	java/io/FileInputStream
    //   7: dup
    //   8: aload 4
    //   10: invokespecial 329	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   13: invokespecial 332	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   16: astore 5
    //   18: aload 5
    //   20: astore 4
    //   22: aload_0
    //   23: aload_1
    //   24: aload_2
    //   25: aload_3
    //   26: aload 5
    //   28: invokevirtual 335	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   31: astore_1
    //   32: aload 5
    //   34: ifnull +8 -> 42
    //   37: aload 5
    //   39: invokevirtual 340	java/io/InputStream:close	()V
    //   42: aload_1
    //   43: areturn
    //   44: astore_1
    //   45: aconst_null
    //   46: astore 4
    //   48: new 8	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   51: dup
    //   52: aload_1
    //   53: invokespecial 82	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   56: athrow
    //   57: astore_1
    //   58: aload 4
    //   60: ifnull +8 -> 68
    //   63: aload 4
    //   65: invokevirtual 340	java/io/InputStream:close	()V
    //   68: aload_1
    //   69: athrow
    //   70: astore_2
    //   71: aload_1
    //   72: areturn
    //   73: astore_2
    //   74: goto -6 -> 68
    //   77: astore_1
    //   78: aconst_null
    //   79: astore 4
    //   81: goto -23 -> 58
    //   84: astore_1
    //   85: aload 5
    //   87: astore 4
    //   89: goto -41 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	HttpRequest
    //   0	92	1	paramString1	String
    //   0	92	2	paramString2	String
    //   0	92	3	paramString3	String
    //   0	92	4	paramFile	java.io.File
    //   16	70	5	localBufferedInputStream	BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   0	18	44	java/io/IOException
    //   22	32	57	finally
    //   48	57	57	finally
    //   37	42	70	java/io/IOException
    //   63	68	73	java/io/IOException
    //   0	18	77	finally
    //   22	32	84	java/io/IOException
  }
  
  public HttpRequest a(String paramString1, String paramString2, String paramString3, InputStream paramInputStream)
    throws HttpRequest.HttpRequestException
  {
    try
    {
      n();
      a(paramString1, paramString2, paramString3);
      a(paramInputStream, f);
      return this;
    }
    catch (IOException paramString1)
    {
      throw new HttpRequestException(paramString1);
    }
  }
  
  public HttpRequest a(String paramString1, String paramString2, String paramString3, String paramString4)
    throws HttpRequest.HttpRequestException
  {
    try
    {
      n();
      a(paramString1, paramString2, paramString3);
      f.a(paramString4);
      return this;
    }
    catch (IOException paramString1)
    {
      throw new HttpRequestException(paramString1);
    }
  }
  
  public HttpRequest a(Map.Entry<String, String> paramEntry)
  {
    return a((String)paramEntry.getKey(), (String)paramEntry.getValue());
  }
  
  public HttpRequest a(boolean paramBoolean)
  {
    a().setUseCaches(paramBoolean);
    return this;
  }
  
  public String a(String paramString)
    throws HttpRequest.HttpRequestException
  {
    ByteArrayOutputStream localByteArrayOutputStream = d();
    try
    {
      a(f(), localByteArrayOutputStream);
      paramString = localByteArrayOutputStream.toString(f(paramString));
      return paramString;
    }
    catch (IOException paramString)
    {
      throw new HttpRequestException(paramString);
    }
  }
  
  public HttpURLConnection a()
  {
    if (d == null) {
      d = r();
    }
    return d;
  }
  
  public int b()
    throws HttpRequest.HttpRequestException
  {
    try
    {
      k();
      int m = a().getResponseCode();
      return m;
    }
    catch (IOException localIOException)
    {
      throw new HttpRequestException(localIOException);
    }
  }
  
  public HttpRequest b(String paramString1, String paramString2, String paramString3)
    throws HttpRequest.HttpRequestException
  {
    return a(paramString1, paramString2, null, paramString3);
  }
  
  public String b(String paramString)
    throws HttpRequest.HttpRequestException
  {
    l();
    return a().getHeaderField(paramString);
  }
  
  public String b(String paramString1, String paramString2)
  {
    return c(b(paramString1), paramString2);
  }
  
  public int c(String paramString)
    throws HttpRequest.HttpRequestException
  {
    return a(paramString, -1);
  }
  
  protected String c(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      paramString1 = null;
      return paramString1;
    }
    int i1 = paramString1.length();
    int m = paramString1.indexOf(';') + 1;
    if ((m == 0) || (m == i1)) {
      return null;
    }
    int n = paramString1.indexOf(';', m);
    if (n == -1) {
      n = i1;
    }
    for (;;)
    {
      if (m < n)
      {
        int i2 = paramString1.indexOf('=', m);
        if ((i2 != -1) && (i2 < n) && (paramString2.equals(paramString1.substring(m, i2).trim())))
        {
          String str = paramString1.substring(i2 + 1, n).trim();
          m = str.length();
          if (m != 0)
          {
            paramString1 = str;
            if (m <= 2) {
              break;
            }
            paramString1 = str;
            if ('"' != str.charAt(0)) {
              break;
            }
            paramString1 = str;
            if ('"' != str.charAt(m - 1)) {
              break;
            }
            return str.substring(1, m - 1);
          }
        }
        n += 1;
        i2 = paramString1.indexOf(';', n);
        m = i2;
        if (i2 == -1) {
          m = i1;
        }
        i2 = m;
        m = n;
        n = i2;
        continue;
      }
      return null;
    }
  }
  
  public boolean c()
    throws HttpRequest.HttpRequestException
  {
    return 200 == b();
  }
  
  public HttpRequest d(String paramString)
  {
    return d(paramString, null);
  }
  
  public HttpRequest d(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0)) {
      return a("Content-Type", paramString1 + "; charset=" + paramString2);
    }
    return a("Content-Type", paramString1);
  }
  
  protected ByteArrayOutputStream d()
  {
    int m = j();
    if (m > 0) {
      return new ByteArrayOutputStream(m);
    }
    return new ByteArrayOutputStream();
  }
  
  public HttpRequest e(String paramString1, String paramString2)
  {
    return b(paramString1, null, paramString2);
  }
  
  public String e()
    throws HttpRequest.HttpRequestException
  {
    return a(h());
  }
  
  public HttpRequest f(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    try
    {
      m();
      f.a(paramCharSequence.toString());
      return this;
    }
    catch (IOException paramCharSequence)
    {
      throw new HttpRequestException(paramCharSequence);
    }
  }
  
  public HttpRequest f(String paramString1, String paramString2)
    throws HttpRequest.HttpRequestException
  {
    return f(paramString1).f(": ").f(paramString2).f("\r\n");
  }
  
  public BufferedInputStream f()
    throws HttpRequest.HttpRequestException
  {
    return new BufferedInputStream(g(), j);
  }
  
  public InputStream g()
    throws HttpRequest.HttpRequestException
  {
    if (b() < 400) {}
    for (;;)
    {
      try
      {
        InputStream localInputStream1 = a().getInputStream();
        if ((i) && ("gzip".equals(i()))) {
          break;
        }
        return localInputStream1;
      }
      catch (IOException localIOException1)
      {
        throw new HttpRequestException(localIOException1);
      }
      InputStream localInputStream2 = a().getErrorStream();
      Object localObject = localInputStream2;
      if (localInputStream2 == null) {
        try
        {
          localObject = a().getInputStream();
        }
        catch (IOException localIOException2)
        {
          throw new HttpRequestException(localIOException2);
        }
      }
    }
    try
    {
      GZIPInputStream localGZIPInputStream = new GZIPInputStream(localIOException2);
      return localGZIPInputStream;
    }
    catch (IOException localIOException3)
    {
      throw new HttpRequestException(localIOException3);
    }
  }
  
  public String h()
  {
    return b("Content-Type", "charset");
  }
  
  public String i()
  {
    return b("Content-Encoding");
  }
  
  public int j()
  {
    return c("Content-Length");
  }
  
  protected HttpRequest k()
    throws IOException
  {
    if (f == null) {
      return this;
    }
    if (g) {
      f.a("\r\n--00content0boundary00--\r\n");
    }
    if (h) {}
    try
    {
      f.close();
      for (;;)
      {
        f = null;
        return this;
        f.close();
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  protected HttpRequest l()
    throws HttpRequest.HttpRequestException
  {
    try
    {
      HttpRequest localHttpRequest = k();
      return localHttpRequest;
    }
    catch (IOException localIOException)
    {
      throw new HttpRequestException(localIOException);
    }
  }
  
  protected HttpRequest m()
    throws IOException
  {
    if (f != null) {
      return this;
    }
    a().setDoOutput(true);
    String str = c(a().getRequestProperty("Content-Type"), "charset");
    f = new d(a().getOutputStream(), str, j);
    return this;
  }
  
  protected HttpRequest n()
    throws IOException
  {
    if (!g)
    {
      g = true;
      d("multipart/form-data; boundary=00content0boundary00").m();
      f.a("--00content0boundary00\r\n");
      return this;
    }
    f.a("\r\n--00content0boundary00\r\n");
    return this;
  }
  
  public URL o()
  {
    return a().getURL();
  }
  
  public String p()
  {
    return a().getRequestMethod();
  }
  
  public String toString()
  {
    return p() + ' ' + o();
  }
  
  public static class HttpRequestException
    extends RuntimeException
  {
    private static final long serialVersionUID = -1170466989781746231L;
    
    protected HttpRequestException(IOException paramIOException)
    {
      super();
    }
    
    public IOException getCause()
    {
      return (IOException)super.getCause();
    }
  }
  
  protected static abstract class a<V>
    extends HttpRequest.c<V>
  {
    private final Closeable a;
    private final boolean b;
    
    protected a(Closeable paramCloseable, boolean paramBoolean)
    {
      a = paramCloseable;
      b = paramBoolean;
    }
    
    protected void c()
      throws IOException
    {
      if ((a instanceof Flushable)) {
        ((Flushable)a).flush();
      }
      if (b) {}
      try
      {
        a.close();
        return;
      }
      catch (IOException localIOException) {}
      a.close();
      return;
    }
  }
  
  public static abstract interface b
  {
    public static final b a = new b()
    {
      public HttpURLConnection a(URL paramAnonymousURL)
        throws IOException
      {
        return (HttpURLConnection)paramAnonymousURL.openConnection();
      }
      
      public HttpURLConnection a(URL paramAnonymousURL, Proxy paramAnonymousProxy)
        throws IOException
      {
        return (HttpURLConnection)paramAnonymousURL.openConnection(paramAnonymousProxy);
      }
    };
    
    public abstract HttpURLConnection a(URL paramURL)
      throws IOException;
    
    public abstract HttpURLConnection a(URL paramURL, Proxy paramProxy)
      throws IOException;
  }
  
  protected static abstract class c<V>
    implements Callable<V>
  {
    protected abstract V b()
      throws HttpRequest.HttpRequestException, IOException;
    
    protected abstract void c()
      throws IOException;
    
    /* Error */
    public V call()
      throws HttpRequest.HttpRequestException
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_1
      //   2: aload_0
      //   3: invokevirtual 24	io/fabric/sdk/android/services/network/HttpRequest$c:b	()Ljava/lang/Object;
      //   6: astore_2
      //   7: aload_0
      //   8: invokevirtual 26	io/fabric/sdk/android/services/network/HttpRequest$c:c	()V
      //   11: aload_2
      //   12: areturn
      //   13: astore_2
      //   14: new 19	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
      //   17: dup
      //   18: aload_2
      //   19: invokespecial 29	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
      //   22: athrow
      //   23: astore_2
      //   24: aload_2
      //   25: athrow
      //   26: astore_2
      //   27: aload_0
      //   28: invokevirtual 26	io/fabric/sdk/android/services/network/HttpRequest$c:c	()V
      //   31: aload_2
      //   32: athrow
      //   33: astore_2
      //   34: new 19	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
      //   37: dup
      //   38: aload_2
      //   39: invokespecial 29	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
      //   42: athrow
      //   43: astore_3
      //   44: iload_1
      //   45: ifne -14 -> 31
      //   48: new 19	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
      //   51: dup
      //   52: aload_3
      //   53: invokespecial 29	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
      //   56: athrow
      //   57: astore_2
      //   58: iconst_0
      //   59: istore_1
      //   60: goto -33 -> 27
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	63	0	this	c
      //   1	59	1	i	int
      //   6	6	2	localObject1	Object
      //   13	6	2	localIOException1	IOException
      //   23	2	2	localHttpRequestException	HttpRequest.HttpRequestException
      //   26	6	2	localObject2	Object
      //   33	6	2	localIOException2	IOException
      //   57	1	2	localObject3	Object
      //   43	10	3	localIOException3	IOException
      // Exception table:
      //   from	to	target	type
      //   7	11	13	java/io/IOException
      //   2	7	23	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
      //   24	26	26	finally
      //   34	43	26	finally
      //   2	7	33	java/io/IOException
      //   27	31	43	java/io/IOException
      //   2	7	57	finally
    }
  }
  
  public static class d
    extends BufferedOutputStream
  {
    private final CharsetEncoder a;
    
    public d(OutputStream paramOutputStream, String paramString, int paramInt)
    {
      super(paramInt);
      a = Charset.forName(HttpRequest.e(paramString)).newEncoder();
    }
    
    public d a(String paramString)
      throws IOException
    {
      paramString = a.encode(CharBuffer.wrap(paramString));
      super.write(paramString.array(), 0, paramString.limit());
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.network.HttpRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */