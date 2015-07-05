package com.crashlytics.android.internal;

import java.io.InputStream;
import java.io.RandomAccessFile;

final class bs
  extends InputStream
{
  private int a;
  private int b;
  
  private bs(bp parambp, br parambr)
  {
    a = bp.a(parambp, b + 4);
    b = c;
  }
  
  public final int read()
  {
    if (b == 0) {
      return -1;
    }
    bp.a(c).seek(a);
    int i = bp.a(c).read();
    a = bp.a(c, a + 1);
    b -= 1;
    return i;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    bp.a(paramArrayOfByte, "buffer");
    if (((paramInt1 | paramInt2) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    if (b > 0)
    {
      int i = paramInt2;
      if (paramInt2 > b) {
        i = b;
      }
      bp.a(c, a, paramArrayOfByte, paramInt1, i);
      a = bp.a(c, a + i);
      b -= i;
      return i;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */