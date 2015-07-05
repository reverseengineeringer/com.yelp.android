package com.yelp.android.ao;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class k
  implements HttpRequestRetryHandler
{
  private static HashSet<Class<?>> a = new HashSet();
  private static HashSet<Class<?>> b = new HashSet();
  private final int c;
  
  static
  {
    a.add(NoHttpResponseException.class);
    a.add(UnknownHostException.class);
    a.add(SocketException.class);
    b.add(InterruptedIOException.class);
    b.add(SSLException.class);
  }
  
  public k(int paramInt)
  {
    c = paramInt;
  }
  
  protected boolean a(HashSet<Class<?>> paramHashSet, Throwable paramThrowable)
  {
    paramHashSet = paramHashSet.iterator();
    while (paramHashSet.hasNext()) {
      if (((Class)paramHashSet.next()).isInstance(paramThrowable)) {
        return true;
      }
    }
    return false;
  }
  
  public boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    boolean bool2 = true;
    Boolean localBoolean = (Boolean)paramHttpContext.getAttribute("http.request_sent");
    int i;
    boolean bool1;
    if ((localBoolean != null) && (localBoolean.booleanValue()))
    {
      i = 1;
      if (paramInt <= c) {
        break label96;
      }
      bool1 = false;
    }
    for (;;)
    {
      label43:
      if (bool1) {
        if (!((HttpUriRequest)paramHttpContext.getAttribute("http.request")).getMethod().equals("POST")) {
          bool1 = bool2;
        }
      }
      for (;;)
      {
        if (bool1)
        {
          SystemClock.sleep(1500L);
          return bool1;
          i = 0;
          break;
          label96:
          if (a(b, paramIOException))
          {
            bool1 = false;
            break label43;
          }
          if (a(a, paramIOException))
          {
            bool1 = true;
            break label43;
          }
          if (i != 0) {
            break label157;
          }
          bool1 = true;
          break label43;
          bool1 = false;
          continue;
        }
        paramIOException.printStackTrace();
        return bool1;
      }
      label157:
      bool1 = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */