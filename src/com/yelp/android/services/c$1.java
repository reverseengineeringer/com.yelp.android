package com.yelp.android.services;

import java.io.IOException;
import java.net.SocketException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;

final class c$1
  implements HttpRequestRetryHandler
{
  public boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    boolean bool2 = true;
    boolean bool1;
    if (paramIOException == null) {
      bool1 = false;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          if (!(paramIOException instanceof SocketException)) {
            break;
          }
          bool1 = bool2;
        } while (paramInt < 2);
        if (!(paramIOException instanceof NoHttpResponseException)) {
          break;
        }
        bool1 = bool2;
      } while (paramInt < 2);
      bool1 = bool2;
    } while (paramInt == 0);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */