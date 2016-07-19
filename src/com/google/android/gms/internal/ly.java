package com.google.android.gms.internal;

import java.io.IOException;
import java.net.URI;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;

public class ly
  implements ma
{
  protected final HttpClient a;
  
  public ly(HttpClient paramHttpClient)
  {
    a = paramHttpClient;
  }
  
  private static void a(HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase, zzk<?> paramzzk)
    throws zza
  {
    paramzzk = paramzzk.o();
    if (paramzzk != null) {
      paramHttpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(paramzzk));
    }
  }
  
  private static void a(HttpUriRequest paramHttpUriRequest, Map<String, String> paramMap)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramHttpUriRequest.setHeader(str, (String)paramMap.get(str));
    }
  }
  
  static HttpUriRequest b(zzk<?> paramzzk, Map<String, String> paramMap)
    throws zza
  {
    switch (paramzzk.b())
    {
    default: 
      throw new IllegalStateException("Unknown request method.");
    case -1: 
      paramMap = paramzzk.k();
      if (paramMap != null)
      {
        HttpPost localHttpPost = new HttpPost(paramzzk.d());
        localHttpPost.addHeader("Content-Type", paramzzk.j());
        localHttpPost.setEntity(new ByteArrayEntity(paramMap));
        return localHttpPost;
      }
      return new HttpGet(paramzzk.d());
    case 0: 
      return new HttpGet(paramzzk.d());
    case 3: 
      return new HttpDelete(paramzzk.d());
    case 1: 
      paramMap = new HttpPost(paramzzk.d());
      paramMap.addHeader("Content-Type", paramzzk.n());
      a(paramMap, paramzzk);
      return paramMap;
    case 2: 
      paramMap = new HttpPut(paramzzk.d());
      paramMap.addHeader("Content-Type", paramzzk.n());
      a(paramMap, paramzzk);
      return paramMap;
    case 4: 
      return new HttpHead(paramzzk.d());
    case 5: 
      return new HttpOptions(paramzzk.d());
    case 6: 
      return new HttpTrace(paramzzk.d());
    }
    paramMap = new a(paramzzk.d());
    paramMap.addHeader("Content-Type", paramzzk.n());
    a(paramMap, paramzzk);
    return paramMap;
  }
  
  public HttpResponse a(zzk<?> paramzzk, Map<String, String> paramMap)
    throws IOException, zza
  {
    HttpUriRequest localHttpUriRequest = b(paramzzk, paramMap);
    a(localHttpUriRequest, paramMap);
    a(localHttpUriRequest, paramzzk.a());
    a(localHttpUriRequest);
    paramMap = localHttpUriRequest.getParams();
    int i = paramzzk.r();
    HttpConnectionParams.setConnectionTimeout(paramMap, 5000);
    HttpConnectionParams.setSoTimeout(paramMap, i);
    return a.execute(localHttpUriRequest);
  }
  
  protected void a(HttpUriRequest paramHttpUriRequest)
    throws IOException
  {}
  
  public static final class a
    extends HttpEntityEnclosingRequestBase
  {
    public a() {}
    
    public a(String paramString)
    {
      setURI(URI.create(paramString));
    }
    
    public String getMethod()
    {
      return "PATCH";
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */