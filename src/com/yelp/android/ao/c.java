package com.yelp.android.ao;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public class c
  extends InputStream
{
  private static final Queue<c> a = h.a(0);
  private InputStream b;
  private IOException c;
  
  public static c a(InputStream paramInputStream)
  {
    synchronized (a)
    {
      c localc = (c)a.poll();
      ??? = localc;
      if (localc == null) {
        ??? = new c();
      }
      ((c)???).b(paramInputStream);
      return (c)???;
    }
  }
  
  public IOException a()
  {
    return c;
  }
  
  public int available()
    throws IOException
  {
    return b.available();
  }
  
  public void b()
  {
    c = null;
    b = null;
    synchronized (a)
    {
      a.offer(this);
      return;
    }
  }
  
  void b(InputStream paramInputStream)
  {
    b = paramInputStream;
  }
  
  public void close()
    throws IOException
  {
    b.close();
  }
  
  public void mark(int paramInt)
  {
    b.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    return b.markSupported();
  }
  
  public int read()
    throws IOException
  {
    try
    {
      int i = b.read();
      return i;
    }
    catch (IOException localIOException)
    {
      c = localIOException;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      int i = b.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      c = paramArrayOfByte;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = b.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      c = paramArrayOfByte;
    }
    return -1;
  }
  
  public void reset()
    throws IOException
  {
    try
    {
      b.reset();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    try
    {
      paramLong = b.skip(paramLong);
      return paramLong;
    }
    catch (IOException localIOException)
    {
      c = localIOException;
    }
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */