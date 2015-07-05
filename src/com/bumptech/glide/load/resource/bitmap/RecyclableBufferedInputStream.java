package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class RecyclableBufferedInputStream
  extends FilterInputStream
{
  private volatile byte[] a;
  private int b;
  private int c;
  private int d = -1;
  private int e;
  
  public RecyclableBufferedInputStream(InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    super(paramInputStream);
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      throw new IllegalArgumentException("buffer is null or empty");
    }
    a = paramArrayOfByte;
  }
  
  private int a(InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    if ((d == -1) || (e - d >= c))
    {
      i = paramInputStream.read(paramArrayOfByte);
      if (i > 0)
      {
        d = -1;
        e = 0;
        b = i;
      }
      return i;
    }
    int j;
    byte[] arrayOfByte;
    if ((d == 0) && (c > paramArrayOfByte.length) && (b == paramArrayOfByte.length))
    {
      j = paramArrayOfByte.length * 2;
      i = j;
      if (j > c) {
        i = c;
      }
      if (Log.isLoggable("BufferedIs", 3)) {
        Log.d("BufferedIs", "allocate buffer of length: " + i);
      }
      arrayOfByte = new byte[i];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
      a = arrayOfByte;
      e -= d;
      d = 0;
      b = 0;
      j = paramInputStream.read(arrayOfByte, e, arrayOfByte.length - e);
      if (j > 0) {
        break label248;
      }
    }
    label248:
    for (int i = e;; i = e + j)
    {
      b = i;
      return j;
      arrayOfByte = paramArrayOfByte;
      if (d <= 0) {
        break;
      }
      System.arraycopy(paramArrayOfByte, d, paramArrayOfByte, 0, paramArrayOfByte.length - d);
      arrayOfByte = paramArrayOfByte;
      break;
    }
  }
  
  private static IOException b()
  {
    throw new IOException("BufferedInputStream is closed");
  }
  
  public void a()
  {
    try
    {
      c = a.length;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int available()
  {
    try
    {
      InputStream localInputStream = in;
      if ((a == null) || (localInputStream == null)) {
        throw b();
      }
    }
    finally {}
    int i = b;
    int j = e;
    int k = ((InputStream)localObject).available();
    return k + (i - j);
  }
  
  public void close()
  {
    a = null;
    InputStream localInputStream = in;
    in = null;
    if (localInputStream != null) {
      localInputStream.close();
    }
  }
  
  public void mark(int paramInt)
  {
    try
    {
      c = Math.max(c, paramInt);
      d = e;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
  {
    int i = -1;
    byte[] arrayOfByte2;
    try
    {
      arrayOfByte2 = a;
      InputStream localInputStream1 = in;
      if ((arrayOfByte2 == null) || (localInputStream1 == null)) {
        throw b();
      }
    }
    finally {}
    if (e >= b)
    {
      int j = a(localInputStream2, arrayOfByte2);
      if (j != -1) {}
    }
    for (;;)
    {
      return i;
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 != a)
      {
        arrayOfByte2 = a;
        arrayOfByte1 = arrayOfByte2;
        if (arrayOfByte2 == null) {
          throw b();
        }
      }
      if (b - e > 0)
      {
        i = e;
        e = (i + 1);
        i = arrayOfByte1[i];
        i &= 0xFF;
      }
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int k = -1;
    Object localObject2;
    try
    {
      localObject2 = a;
      if (localObject2 == null) {
        throw b();
      }
    }
    finally {}
    if (paramInt2 == 0) {
      paramInt1 = 0;
    }
    for (;;)
    {
      return paramInt1;
      InputStream localInputStream = in;
      if (localInputStream == null) {
        throw b();
      }
      int i;
      label132:
      int m;
      int j;
      Object localObject1;
      if (e < b)
      {
        if (b - e >= paramInt2) {}
        for (i = paramInt2;; i = b - e)
        {
          System.arraycopy(localObject2, e, paramArrayOfByte, paramInt1, i);
          e += i;
          if (i == paramInt2) {
            break;
          }
          if (localInputStream.available() != 0) {
            break label348;
          }
          break;
        }
        if ((d == -1) && (i >= localObject2.length))
        {
          m = localInputStream.read(paramArrayOfByte, paramInt1, i);
          j = m;
          localObject1 = localObject2;
          if (m != -1) {
            break label368;
          }
          paramInt1 = k;
          if (i == paramInt2) {
            continue;
          }
          paramInt1 = paramInt2 - i;
          continue;
        }
        if (a(localInputStream, (byte[])localObject2) == -1)
        {
          paramInt1 = k;
          if (i == paramInt2) {
            continue;
          }
          paramInt1 = paramInt2 - i;
          continue;
        }
        localObject1 = localObject2;
        if (localObject2 != a)
        {
          localObject2 = a;
          localObject1 = localObject2;
          if (localObject2 == null) {
            throw b();
          }
        }
        if (b - e >= i) {}
        for (j = i;; j = b - e)
        {
          System.arraycopy(localObject1, e, paramArrayOfByte, paramInt1, j);
          e += j;
          break;
        }
      }
      label348:
      label368:
      do
      {
        m = localInputStream.available();
        if (m == 0)
        {
          paramInt1 = paramInt2 - i;
          break;
        }
        paramInt1 += j;
        localObject2 = localObject1;
        break label132;
        paramInt1 = i;
        break;
        paramInt1 += i;
        i = paramInt2 - i;
        break label132;
        i = paramInt2;
        break label132;
        i -= j;
      } while (i != 0);
      paramInt1 = paramInt2;
    }
  }
  
  public void reset()
  {
    try
    {
      if (a == null) {
        throw new IOException("Stream is closed");
      }
    }
    finally {}
    if (-1 == d) {
      throw new RecyclableBufferedInputStream.InvalidMarkException("Mark has been invalidated");
    }
    e = d;
  }
  
  public long skip(long paramLong)
  {
    InputStream localInputStream;
    try
    {
      byte[] arrayOfByte1 = a;
      localInputStream = in;
      if (arrayOfByte1 == null) {
        throw b();
      }
    }
    finally {}
    if (paramLong < 1L) {
      paramLong = 0L;
    }
    for (;;)
    {
      return paramLong;
      if (localInputStream == null) {
        throw b();
      }
      if (b - e >= paramLong)
      {
        e = ((int)(e + paramLong));
      }
      else
      {
        long l = b - e;
        e = b;
        if ((d != -1) && (paramLong <= c))
        {
          if (a(localInputStream, arrayOfByte2) == -1)
          {
            paramLong = l;
          }
          else if (b - e >= paramLong - l)
          {
            e = ((int)(paramLong - l + e));
          }
          else
          {
            paramLong = l + b - e;
            e = b;
          }
        }
        else
        {
          paramLong = localInputStream.skip(paramLong - l);
          paramLong = l + paramLong;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */