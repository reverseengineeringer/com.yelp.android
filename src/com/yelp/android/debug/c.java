package com.yelp.android.debug;

import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public abstract class c
{
  private AtomicInteger a;
  private int b;
  
  protected abstract InputStream a();
  
  public HttpResponse a(HttpUriRequest paramHttpUriRequest)
  {
    a.incrementAndGet();
    paramHttpUriRequest = new BasicHttpResponse(new BasicStatusLine(HttpVersion.HTTP_1_1, b, null));
    BasicHttpEntity localBasicHttpEntity = new BasicHttpEntity();
    localBasicHttpEntity.setContent(a());
    paramHttpUriRequest.setEntity(localBasicHttpEntity);
    return paramHttpUriRequest;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */