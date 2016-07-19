package io.fabric.sdk.android.services.network;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract class HttpRequest$a<V>
  extends HttpRequest.c<V>
{
  private final Closeable a;
  private final boolean b;
  
  protected HttpRequest$a(Closeable paramCloseable, boolean paramBoolean)
  {
    a = paramCloseable;
    b = paramBoolean;
  }
  
  protected void c()
    throws IOException
  {
    if ((a instanceof Flushable)) {
      ((Flushable)a).flush();
    }
    if (b) {}
    try
    {
      a.close();
      return;
    }
    catch (IOException localIOException) {}
    a.close();
    return;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.network.HttpRequest.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */