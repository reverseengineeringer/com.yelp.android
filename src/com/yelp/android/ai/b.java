package com.yelp.android.ai;

import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public class b
  extends InputStream
{
  private static final Queue<b> a = f.a(0);
  private RecyclableBufferedInputStream b;
  private IOException c;
  
  public static b a(RecyclableBufferedInputStream paramRecyclableBufferedInputStream)
  {
    synchronized (a)
    {
      b localb = (b)a.poll();
      ??? = localb;
      if (localb == null) {
        ??? = new b();
      }
      ((b)???).b(paramRecyclableBufferedInputStream);
      return (b)???;
    }
  }
  
  public void a()
  {
    b.a();
  }
  
  public int available()
  {
    return b.available();
  }
  
  public IOException b()
  {
    return c;
  }
  
  void b(RecyclableBufferedInputStream paramRecyclableBufferedInputStream)
  {
    b = paramRecyclableBufferedInputStream;
  }
  
  public void c()
  {
    c = null;
    b = null;
    synchronized (a)
    {
      a.offer(this);
      return;
    }
  }
  
  public void close()
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
 * Qualified Name:     com.yelp.android.ai.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */