package com.yelp.android.ao;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpVersion;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

public class a
{
  private static int a = 10;
  private static int b = 10000;
  private final DefaultHttpClient c;
  private final HttpContext d;
  private ThreadPoolExecutor e;
  private final Map<Context, List<WeakReference<Future<?>>>> f;
  private final Map<String, String> g;
  
  public a()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    ConnManagerParams.setTimeout(localBasicHttpParams, b);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(a));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 10);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, b);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, b);
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, String.format("android-async-http/%s (http://loopj.com/android-async-http)", new Object[] { "1.4.3" }));
    Object localObject = new SchemeRegistry();
    ((SchemeRegistry)localObject).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    ((SchemeRegistry)localObject).register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    localObject = new ThreadSafeClientConnManager(localBasicHttpParams, (SchemeRegistry)localObject);
    d = new SyncBasicHttpContext(new BasicHttpContext());
    c = new DefaultHttpClient((ClientConnectionManager)localObject, localBasicHttpParams);
    c.addRequestInterceptor(new b(this));
    c.addResponseInterceptor(new c(this));
    c.setHttpRequestRetryHandler(new k(5));
    e = ((ThreadPoolExecutor)Executors.newCachedThreadPool());
    f = new WeakHashMap();
    g = new HashMap();
  }
  
  private HttpEntity a(i parami)
  {
    HttpEntity localHttpEntity = null;
    if (parami != null) {
      localHttpEntity = parami.b();
    }
    return localHttpEntity;
  }
  
  private HttpEntityEnclosingRequestBase a(HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase, HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity != null) {
      paramHttpEntityEnclosingRequestBase.setEntity(paramHttpEntity);
    }
    return paramHttpEntityEnclosingRequestBase;
  }
  
  public void a(int paramInt)
  {
    HttpParams localHttpParams = c.getParams();
    ConnManagerParams.setTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setSoTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, paramInt);
  }
  
  public void a(Context paramContext, String paramString, i parami, f paramf)
  {
    a(paramContext, paramString, a(parami), null, paramf);
  }
  
  public void a(Context paramContext, String paramString1, HttpEntity paramHttpEntity, String paramString2, f paramf)
  {
    a(c, d, a(new HttpPost(paramString1), paramHttpEntity), paramString2, paramf, paramContext);
  }
  
  public void a(Context paramContext, String paramString1, Header[] paramArrayOfHeader, i parami, String paramString2, f paramf)
  {
    paramString1 = new HttpPost(paramString1);
    if (parami != null) {
      paramString1.setEntity(a(parami));
    }
    if (paramArrayOfHeader != null) {
      paramString1.setHeaders(paramArrayOfHeader);
    }
    a(c, d, paramString1, paramString2, paramf, paramContext);
  }
  
  public void a(String paramString, i parami, f paramf)
  {
    a(null, paramString, parami, paramf);
  }
  
  protected void a(DefaultHttpClient paramDefaultHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, String paramString, f paramf, Context paramContext)
  {
    if (paramString != null) {
      paramHttpUriRequest.addHeader("Content-Type", paramString);
    }
    paramHttpUriRequest = e.submit(new e(paramDefaultHttpClient, paramHttpContext, paramHttpUriRequest, paramf));
    if (paramContext != null)
    {
      paramHttpContext = (List)f.get(paramContext);
      paramDefaultHttpClient = paramHttpContext;
      if (paramHttpContext == null)
      {
        paramDefaultHttpClient = new LinkedList();
        f.put(paramContext, paramDefaultHttpClient);
      }
      paramDefaultHttpClient.add(new WeakReference(paramHttpUriRequest));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */