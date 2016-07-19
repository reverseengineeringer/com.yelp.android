package io.fabric.sdk.android.services.common;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

final class n$b
  extends InputStream
{
  private int b;
  private int c;
  
  private n$b(n paramn, n.a parama)
  {
    b = n.a(paramn, b + 4);
    c = c;
  }
  
  public int read()
    throws IOException
  {
    if (c == 0) {
      return -1;
    }
    n.a(a).seek(b);
    int i = n.a(a).read();
    b = n.a(a, b + 1);
    c -= 1;
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    n.a(paramArrayOfByte, "buffer");
    if (((paramInt1 | paramInt2) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    if (c > 0)
    {
      int i = paramInt2;
      if (paramInt2 > c) {
        i = c;
      }
      n.a(a, b, paramArrayOfByte, paramInt1, i);
      b = n.a(a, b + i);
      c -= i;
      return i;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.n.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */