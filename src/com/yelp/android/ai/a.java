package com.yelp.android.ai;

import android.util.Log;
import java.util.Queue;

public final class a
{
  private static final a b = new a();
  private final Queue<byte[]> a = f.a(0);
  
  public static a a()
  {
    return b;
  }
  
  public boolean a(byte[] paramArrayOfByte)
  {
    boolean bool = false;
    if (paramArrayOfByte.length != 65536) {
      return false;
    }
    synchronized (a)
    {
      if (a.size() < 32)
      {
        bool = true;
        a.offer(paramArrayOfByte);
      }
      return bool;
    }
  }
  
  public byte[] b()
  {
    synchronized (a)
    {
      byte[] arrayOfByte = (byte[])a.poll();
      ??? = arrayOfByte;
      if (arrayOfByte == null)
      {
        arrayOfByte = new byte[65536];
        ??? = arrayOfByte;
        if (Log.isLoggable("ByteArrayPool", 3))
        {
          Log.d("ByteArrayPool", "Created temp bytes");
          ??? = arrayOfByte;
        }
      }
      return (byte[])???;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ai.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */