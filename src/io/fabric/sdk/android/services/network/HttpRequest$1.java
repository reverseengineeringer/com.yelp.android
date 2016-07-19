package io.fabric.sdk.android.services.network;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class HttpRequest$1
  extends HttpRequest.a<HttpRequest>
{
  HttpRequest$1(HttpRequest paramHttpRequest, Closeable paramCloseable, boolean paramBoolean, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    super(paramCloseable, paramBoolean);
  }
  
  public HttpRequest a()
    throws IOException
  {
    byte[] arrayOfByte = new byte[HttpRequest.a(c)];
    for (;;)
    {
      int i = a.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      b.write(arrayOfByte, 0, i);
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.network.HttpRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */