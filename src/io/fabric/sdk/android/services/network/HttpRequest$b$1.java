package io.fabric.sdk.android.services.network;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

final class HttpRequest$b$1
  implements HttpRequest.b
{
  public HttpURLConnection a(URL paramURL)
    throws IOException
  {
    return (HttpURLConnection)paramURL.openConnection();
  }
  
  public HttpURLConnection a(URL paramURL, Proxy paramProxy)
    throws IOException
  {
    return (HttpURLConnection)paramURL.openConnection(paramProxy);
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.network.HttpRequest.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */