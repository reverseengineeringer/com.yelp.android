package com.yelp.android.ao;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

class c
  implements HttpResponseInterceptor
{
  c(a parama) {}
  
  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    paramHttpContext = paramHttpResponse.getEntity();
    if (paramHttpContext == null) {}
    for (;;)
    {
      return;
      paramHttpContext = paramHttpContext.getContentEncoding();
      if (paramHttpContext != null)
      {
        paramHttpContext = paramHttpContext.getElements();
        int j = paramHttpContext.length;
        int i = 0;
        while (i < j)
        {
          if (paramHttpContext[i].getName().equalsIgnoreCase("gzip"))
          {
            paramHttpResponse.setEntity(new d(paramHttpResponse.getEntity()));
            return;
          }
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */