package com.crashlytics.android;

import java.io.Flushable;
import java.io.InputStream;
import java.io.OutputStream;

final class aq
  implements Flushable
{
  private final byte[] a;
  private final int b;
  private int c;
  private final OutputStream d;
  
  private aq(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    d = paramOutputStream;
    a = paramArrayOfByte;
    c = 0;
    b = paramArrayOfByte.length;
  }
  
  public static int a(int paramInt)
  {
    return c(aj.a(paramInt, 0));
  }
  
  public static aq a(OutputStream paramOutputStream)
  {
    return new aq(paramOutputStream, new byte['က']);
  }
  
  private void a()
  {
    if (d == null) {
      throw new i();
    }
    d.write(a, 0, c);
    c = 0;
  }
  
  private void a(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        d((int)paramLong);
        return;
      }
      d((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public static int b(int paramInt, float paramFloat)
  {
    return a(1) + 4;
  }
  
  public static int b(int paramInt, long paramLong)
  {
    int i = a(paramInt);
    if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L) {
      paramInt = 1;
    }
    for (;;)
    {
      return paramInt + i;
      if ((0xFFFFFFFFFFFFC000 & paramLong) == 0L) {
        paramInt = 2;
      } else if ((0xFFFFFFFFFFE00000 & paramLong) == 0L) {
        paramInt = 3;
      } else if ((0xFFFFFFFFF0000000 & paramLong) == 0L) {
        paramInt = 4;
      } else if ((0xFFFFFFF800000000 & paramLong) == 0L) {
        paramInt = 5;
      } else if ((0xFFFFFC0000000000 & paramLong) == 0L) {
        paramInt = 6;
      } else if ((0xFFFE000000000000 & paramLong) == 0L) {
        paramInt = 7;
      } else if ((0xFF00000000000000 & paramLong) == 0L) {
        paramInt = 8;
      } else if ((0x8000000000000000 & paramLong) == 0L) {
        paramInt = 9;
      } else {
        paramInt = 10;
      }
    }
  }
  
  public static int b(int paramInt, am paramam)
  {
    return a(paramInt) + (c(paramam.a()) + paramam.a());
  }
  
  public static int b(int paramInt, boolean paramBoolean)
  {
    return a(paramInt) + 1;
  }
  
  public static int c(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0) {
      return 1;
    }
    if ((paramInt & 0xC000) == 0) {
      return 2;
    }
    if ((0xFFE00000 & paramInt) == 0) {
      return 3;
    }
    if ((0xF0000000 & paramInt) == 0) {
      return 4;
    }
    return 5;
  }
  
  public static int d(int paramInt1, int paramInt2)
  {
    return a(paramInt1) + c(paramInt2);
  }
  
  private void d(int paramInt)
  {
    int i = (byte)paramInt;
    if (c == b) {
      a();
    }
    byte[] arrayOfByte = a;
    paramInt = c;
    c = (paramInt + 1);
    arrayOfByte[paramInt] = i;
  }
  
  private static int e(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  public static int e(int paramInt1, int paramInt2)
  {
    int i = a(paramInt1);
    if (paramInt2 >= 0) {}
    for (paramInt1 = c(paramInt2);; paramInt1 = 10) {
      return paramInt1 + i;
    }
  }
  
  public static int f(int paramInt1, int paramInt2)
  {
    return a(2) + c(e(paramInt2));
  }
  
  public final void a(int paramInt, float paramFloat)
  {
    g(1, 5);
    paramInt = Float.floatToRawIntBits(paramFloat);
    d(paramInt & 0xFF);
    d(paramInt >> 8 & 0xFF);
    d(paramInt >> 16 & 0xFF);
    d(paramInt >>> 24);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    g(paramInt1, 0);
    b(paramInt2);
  }
  
  public final void a(int paramInt, long paramLong)
  {
    g(paramInt, 0);
    a(paramLong);
  }
  
  public final void a(int paramInt, am paramam)
  {
    g(paramInt, 2);
    b(paramam.a());
    paramInt = paramam.a();
    if (b - c >= paramInt)
    {
      paramam.a(a, 0, c, paramInt);
      c = (paramInt + c);
      return;
    }
    int j = b - c;
    paramam.a(a, 0, c, j);
    int i = j + 0;
    paramInt -= j;
    c = b;
    a();
    if (paramInt <= b)
    {
      paramam.a(a, i, 0, paramInt);
      c = paramInt;
      return;
    }
    paramam = paramam.b();
    if (i != paramam.skip(i)) {
      throw new IllegalStateException("Skip failed.");
    }
    do
    {
      d.write(a, 0, j);
      paramInt -= j;
      if (paramInt <= 0) {
        break;
      }
      i = Math.min(paramInt, b);
      j = paramam.read(a, 0, i);
    } while (j == i);
    throw new IllegalStateException("Read failed.");
  }
  
  public final void a(int paramInt, String paramString)
  {
    g(1, 2);
    paramString = paramString.getBytes("UTF-8");
    b(paramString.length);
    a(paramString);
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    int i = 0;
    g(paramInt, 0);
    paramInt = i;
    if (paramBoolean) {
      paramInt = 1;
    }
    d(paramInt);
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length;
    if (b - c >= j)
    {
      System.arraycopy(paramArrayOfByte, 0, a, c, j);
      c = (j + c);
      return;
    }
    int k = b - c;
    System.arraycopy(paramArrayOfByte, 0, a, c, k);
    int i = k + 0;
    j -= k;
    c = b;
    a();
    if (j <= b)
    {
      System.arraycopy(paramArrayOfByte, i, a, 0, j);
      c = j;
      return;
    }
    d.write(paramArrayOfByte, i, j);
  }
  
  public final void b(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        d(paramInt);
        return;
      }
      d(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    g(paramInt1, 0);
    if (paramInt2 >= 0)
    {
      b(paramInt2);
      return;
    }
    a(paramInt2);
  }
  
  public final void c(int paramInt1, int paramInt2)
  {
    g(2, 0);
    b(e(paramInt2));
  }
  
  public final void flush()
  {
    if (d != null) {
      a();
    }
  }
  
  public final void g(int paramInt1, int paramInt2)
  {
    b(aj.a(paramInt1, paramInt2));
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */