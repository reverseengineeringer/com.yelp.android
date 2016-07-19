package com.yelp.android.debug;

import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public abstract class a
  implements HttpClient
{
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws IOException
  {
    throw new UnsupportedOperationException("Not implemented!");
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws IOException
  {
    throw new UnsupportedOperationException("Not implemented!");
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws IOException
  {
    throw new UnsupportedOperationException("Not implemented!");
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws IOException
  {
    return null;
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
    throws IOException
  {
    throw new UnsupportedOperationException("Not implemented!");
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
    throws IOException
  {
    throw new UnsupportedOperationException("Not implemented!");
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
    throws IOException
  {
    throw new UnsupportedOperationException("Not implemented!");
  }
  
  public ClientConnectionManager getConnectionManager()
  {
    return null;
  }
  
  public HttpParams getParams()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */