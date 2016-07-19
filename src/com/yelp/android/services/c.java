package com.yelp.android.services;

import android.content.Context;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.d;
import com.yelp.android.appdata.f;
import com.yelp.android.debug.Debug;
import com.yelp.android.util.YelpLog;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.SocketException;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.NoHttpResponseException;
import org.apache.http.ParseException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.client.protocol.RequestAddCookies;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.MultihomePlainSocketFactory;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EntityUtils;

public class c
{
  private static DefaultHttpClient a;
  
  public static InputStream a(HttpEntity paramHttpEntity)
    throws IOException
  {
    InputStream localInputStream = paramHttpEntity.getContent();
    if (localInputStream == null) {}
    do
    {
      do
      {
        return localInputStream;
        paramHttpEntity = paramHttpEntity.getContentEncoding();
      } while (paramHttpEntity == null);
      paramHttpEntity = paramHttpEntity.getValue();
    } while (paramHttpEntity == null);
    if (paramHttpEntity.contains("gzip")) {}
    for (paramHttpEntity = new GZIPInputStream(localInputStream);; paramHttpEntity = localInputStream) {
      return paramHttpEntity;
    }
  }
  
  public static String a(HttpEntity paramHttpEntity, String paramString)
    throws IOException, ParseException
  {
    if (paramHttpEntity == null) {
      throw new IllegalArgumentException("HTTP entity may not be null");
    }
    InputStream localInputStream = a(paramHttpEntity);
    if (localInputStream == null) {
      return "";
    }
    if (paramHttpEntity.getContentLength() > 2147483647L) {
      throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
    }
    int j = (int)paramHttpEntity.getContentLength();
    int i = j;
    if (j < 0) {
      i = 4096;
    }
    Object localObject = EntityUtils.getContentCharSet(paramHttpEntity);
    paramHttpEntity = (HttpEntity)localObject;
    if (localObject == null) {
      paramHttpEntity = paramString;
    }
    paramString = paramHttpEntity;
    if (paramHttpEntity == null) {
      paramString = "ISO-8859-1";
    }
    paramHttpEntity = new InputStreamReader(localInputStream, paramString);
    paramString = new CharArrayBuffer(i);
    try
    {
      localObject = new char['Ѐ'];
      for (;;)
      {
        i = paramHttpEntity.read((char[])localObject);
        if (i == -1) {
          break;
        }
        paramString.append((char[])localObject, 0, i);
      }
    }
    finally
    {
      paramHttpEntity.close();
    }
    return paramString.toString();
  }
  
  static CookieStore a(Context paramContext)
  {
    d locald = new d(paramContext);
    Object localObject = locald.e("cookies");
    if (localObject == null) {}
    for (;;)
    {
      try
      {
        localObject = KeyGenerator.getInstance("AES");
        ((KeyGenerator)localObject).init(256);
        localObject = ((KeyGenerator)localObject).generateKey();
        locald.a("cookies", ((SecretKey)localObject).getEncoded());
        return new PersistingCookieStore(paramContext.getDir("cookies", 0), (SecretKey)localObject);
      }
      catch (NoSuchAlgorithmException paramContext)
      {
        YelpLog.e(null, "AES DOES NOT EXIST!", paramContext);
        return new BasicCookieStore();
      }
      localObject = new SecretKeySpec((byte[])localObject, "AES");
    }
  }
  
  public static final DefaultHttpClient a(Context paramContext, Debug paramDebug, f paramf)
  {
    try
    {
      if (a == null) {
        a = b(paramContext, paramDebug, paramf);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  public static final HttpParams a(String paramString)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
    HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 10);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRoute()
    {
      public int getMaxForRoute(HttpRoute paramAnonymousHttpRoute)
      {
        return 10;
      }
    });
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    return localBasicHttpParams;
  }
  
  public static final void a()
  {
    try
    {
      if (a != null)
      {
        ClientConnectionManager localClientConnectionManager = a.getConnectionManager();
        localClientConnectionManager.closeExpiredConnections();
        localClientConnectionManager.closeIdleConnections(1L, TimeUnit.SECONDS);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void a(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.addHeader("Accept-Encoding", "gzip");
  }
  
  public static void a(SocketFactory paramSocketFactory)
  {
    if (a != null) {
      a.getConnectionManager().getSchemeRegistry().register(new Scheme("https", paramSocketFactory, 443));
    }
  }
  
  public static final DefaultHttpClient b()
  {
    try
    {
      DefaultHttpClient localDefaultHttpClient = a(BaseYelpApplication.K(), BaseYelpApplication.K().t(), BaseYelpApplication.K().h());
      return localDefaultHttpClient;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static DefaultHttpClient b(Context paramContext, Debug paramDebug, f paramf)
  {
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("https", paramDebug.d(), 443));
    localSchemeRegistry.register(new Scheme("http", MultihomePlainSocketFactory.getSocketFactory(), 80));
    paramDebug = a(paramf.h());
    paramDebug = new DefaultHttpClient(new ThreadSafeClientConnManager(paramDebug, localSchemeRegistry), paramDebug);
    paramDebug.setCookieStore(a(paramContext));
    paramDebug.setKeepAliveStrategy(new DefaultConnectionKeepAliveStrategy());
    paramDebug.addRequestInterceptor(new RequestAddCookies());
    paramDebug.setHttpRequestRetryHandler(new HttpRequestRetryHandler()
    {
      public boolean retryRequest(IOException paramAnonymousIOException, int paramAnonymousInt, HttpContext paramAnonymousHttpContext)
      {
        boolean bool2 = true;
        boolean bool1;
        if (paramAnonymousIOException == null) {
          bool1 = false;
        }
        do
        {
          do
          {
            do
            {
              return bool1;
              if (!(paramAnonymousIOException instanceof SocketException)) {
                break;
              }
              bool1 = bool2;
            } while (paramAnonymousInt < 2);
            if (!(paramAnonymousIOException instanceof NoHttpResponseException)) {
              break;
            }
            bool1 = bool2;
          } while (paramAnonymousInt < 2);
          bool1 = bool2;
        } while (paramAnonymousInt == 0);
        return false;
      }
    });
    return paramDebug;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */