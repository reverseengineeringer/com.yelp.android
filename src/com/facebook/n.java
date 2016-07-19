package com.facebook;

import android.os.Handler;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class n
  extends FilterOutputStream
  implements p
{
  private final Map<GraphRequest, q> a;
  private final i b;
  private final long c;
  private long d;
  private long e;
  private long f;
  private q g;
  
  n(OutputStream paramOutputStream, i parami, Map<GraphRequest, q> paramMap, long paramLong)
  {
    super(paramOutputStream);
    b = parami;
    a = paramMap;
    f = paramLong;
    c = g.g();
  }
  
  private void a()
  {
    if (d > e)
    {
      Iterator localIterator = b.e().iterator();
      while (localIterator.hasNext())
      {
        final Object localObject = (i.a)localIterator.next();
        if ((localObject instanceof i.b))
        {
          Handler localHandler = b.c();
          localObject = (i.b)localObject;
          if (localHandler == null) {
            ((i.b)localObject).a(b, d, f);
          } else {
            localHandler.post(new Runnable()
            {
              public void run()
              {
                localObject.a(n.a(n.this), n.b(n.this), n.c(n.this));
              }
            });
          }
        }
      }
      e = d;
    }
  }
  
  private void a(long paramLong)
  {
    if (g != null) {
      g.a(paramLong);
    }
    d += paramLong;
    if ((d >= e + c) || (d >= f)) {
      a();
    }
  }
  
  public void a(GraphRequest paramGraphRequest)
  {
    if (paramGraphRequest != null) {}
    for (paramGraphRequest = (q)a.get(paramGraphRequest);; paramGraphRequest = null)
    {
      g = paramGraphRequest;
      return;
    }
  }
  
  public void close()
    throws IOException
  {
    super.close();
    Iterator localIterator = a.values().iterator();
    while (localIterator.hasNext()) {
      ((q)localIterator.next()).a();
    }
    a();
  }
  
  public void write(int paramInt)
    throws IOException
  {
    out.write(paramInt);
    a(1L);
  }
  
  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    out.write(paramArrayOfByte);
    a(paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    out.write(paramArrayOfByte, paramInt1, paramInt2);
    a(paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.facebook.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */