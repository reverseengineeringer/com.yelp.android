package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class zzsn
{
  private final ByteBuffer a;
  
  private zzsn(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
    a.order(ByteOrder.LITTLE_ENDIAN);
  }
  
  private zzsn(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this(ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2));
  }
  
  private static int a(CharSequence paramCharSequence)
  {
    int m = paramCharSequence.length();
    int i = 0;
    while ((i < m) && (paramCharSequence.charAt(i) < '')) {
      i += 1;
    }
    for (;;)
    {
      int k = i;
      int j;
      if (j < m)
      {
        k = paramCharSequence.charAt(j);
        if (k < 2048)
        {
          j += 1;
          i = (127 - k >>> 31) + i;
        }
        else
        {
          k = i + a(paramCharSequence, j);
        }
      }
      else
      {
        if (k < m) {
          throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (k + 4294967296L));
        }
        return k;
        j = i;
        i = m;
      }
    }
  }
  
  private static int a(CharSequence paramCharSequence, int paramInt)
  {
    int m = paramCharSequence.length();
    int i = 0;
    if (paramInt < m)
    {
      int n = paramCharSequence.charAt(paramInt);
      int j;
      if (n < 2048)
      {
        i += (127 - n >>> 31);
        j = paramInt;
      }
      for (;;)
      {
        paramInt = j + 1;
        break;
        int k = i + 2;
        j = paramInt;
        i = k;
        if (55296 <= n)
        {
          j = paramInt;
          i = k;
          if (n <= 57343)
          {
            if (Character.codePointAt(paramCharSequence, paramInt) < 65536) {
              throw new IllegalArgumentException("Unpaired surrogate at index " + paramInt);
            }
            j = paramInt + 1;
            i = k;
          }
        }
      }
    }
    return i;
  }
  
  private static int a(CharSequence paramCharSequence, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int k = paramCharSequence.length();
    int j = 0;
    int m = paramInt1 + paramInt2;
    paramInt2 = j;
    while ((paramInt2 < k) && (paramInt2 + paramInt1 < m))
    {
      j = paramCharSequence.charAt(paramInt2);
      if (j >= 128) {
        break;
      }
      paramArrayOfByte[(paramInt1 + paramInt2)] = ((byte)j);
      paramInt2 += 1;
    }
    if (paramInt2 == k) {
      return paramInt1 + k;
    }
    paramInt1 += paramInt2;
    if (paramInt2 < k)
    {
      int i = paramCharSequence.charAt(paramInt2);
      if ((i < 128) && (paramInt1 < m))
      {
        j = paramInt1 + 1;
        paramArrayOfByte[paramInt1] = ((byte)i);
        paramInt1 = j;
      }
      for (;;)
      {
        paramInt2 += 1;
        break;
        if ((i < 2048) && (paramInt1 <= m - 2))
        {
          j = paramInt1 + 1;
          paramArrayOfByte[paramInt1] = ((byte)(i >>> 6 | 0x3C0));
          paramInt1 = j + 1;
          paramArrayOfByte[j] = ((byte)(i & 0x3F | 0x80));
        }
        else
        {
          int n;
          if (((i < 55296) || (57343 < i)) && (paramInt1 <= m - 3))
          {
            j = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(i >>> 12 | 0x1E0));
            n = j + 1;
            paramArrayOfByte[j] = ((byte)(i >>> 6 & 0x3F | 0x80));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(i & 0x3F | 0x80));
          }
          else
          {
            if (paramInt1 > m - 4) {
              break label442;
            }
            j = paramInt2;
            char c;
            if (paramInt2 + 1 != paramCharSequence.length())
            {
              paramInt2 += 1;
              c = paramCharSequence.charAt(paramInt2);
              if (!Character.isSurrogatePair(i, c)) {
                j = paramInt2;
              }
            }
            else
            {
              throw new IllegalArgumentException("Unpaired surrogate at index " + (j - 1));
            }
            j = Character.toCodePoint(i, c);
            n = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(j >>> 18 | 0xF0));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(j >>> 12 & 0x3F | 0x80));
            n = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(j >>> 6 & 0x3F | 0x80));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(j & 0x3F | 0x80));
          }
        }
      }
      label442:
      if ((55296 <= i) && (i <= 57343) && ((paramInt2 + 1 == paramCharSequence.length()) || (!Character.isSurrogatePair(i, paramCharSequence.charAt(paramInt2 + 1))))) {
        throw new IllegalArgumentException("Unpaired surrogate at index " + paramInt2);
      }
      throw new ArrayIndexOutOfBoundsException("Failed writing " + i + " at index " + paramInt1);
    }
    return paramInt1;
  }
  
  public static zzsn a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static zzsn a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new zzsn(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private static void a(CharSequence paramCharSequence, ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.isReadOnly()) {
      throw new ReadOnlyBufferException();
    }
    if (paramByteBuffer.hasArray()) {
      try
      {
        paramByteBuffer.position(a(paramCharSequence, paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), paramByteBuffer.remaining()) - paramByteBuffer.arrayOffset());
        return;
      }
      catch (ArrayIndexOutOfBoundsException paramCharSequence)
      {
        paramByteBuffer = new BufferOverflowException();
        paramByteBuffer.initCause(paramCharSequence);
        throw paramByteBuffer;
      }
    }
    b(paramCharSequence, paramByteBuffer);
  }
  
  public static int b(float paramFloat)
  {
    return 4;
  }
  
  public static int b(int paramInt)
  {
    if (paramInt >= 0) {
      return f(paramInt);
    }
    return 10;
  }
  
  public static int b(int paramInt, float paramFloat)
  {
    return d(paramInt) + b(paramFloat);
  }
  
  public static int b(int paramInt1, int paramInt2)
  {
    return d(paramInt1) + b(paramInt2);
  }
  
  public static int b(int paramInt, lq paramlq)
  {
    return d(paramInt) * 2 + c(paramlq);
  }
  
  public static int b(int paramInt, String paramString)
  {
    return d(paramInt) + b(paramString);
  }
  
  public static int b(int paramInt, boolean paramBoolean)
  {
    return d(paramInt) + b(paramBoolean);
  }
  
  public static int b(int paramInt, byte[] paramArrayOfByte)
  {
    return d(paramInt) + c(paramArrayOfByte);
  }
  
  public static int b(String paramString)
  {
    int i = a(paramString);
    return i + f(i);
  }
  
  public static int b(boolean paramBoolean)
  {
    return 1;
  }
  
  private static void b(CharSequence paramCharSequence, ByteBuffer paramByteBuffer)
  {
    int m = paramCharSequence.length();
    int j = 0;
    if (j < m)
    {
      int i = paramCharSequence.charAt(j);
      if (i < 128) {
        paramByteBuffer.put((byte)i);
      }
      for (;;)
      {
        j += 1;
        break;
        if (i < 2048)
        {
          paramByteBuffer.put((byte)(i >>> 6 | 0x3C0));
          paramByteBuffer.put((byte)(i & 0x3F | 0x80));
        }
        else if ((i < 55296) || (57343 < i))
        {
          paramByteBuffer.put((byte)(i >>> 12 | 0x1E0));
          paramByteBuffer.put((byte)(i >>> 6 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(i & 0x3F | 0x80));
        }
        else
        {
          int k = j;
          char c;
          if (j + 1 != paramCharSequence.length())
          {
            j += 1;
            c = paramCharSequence.charAt(j);
            if (!Character.isSurrogatePair(i, c)) {
              k = j;
            }
          }
          else
          {
            throw new IllegalArgumentException("Unpaired surrogate at index " + (k - 1));
          }
          k = Character.toCodePoint(i, c);
          paramByteBuffer.put((byte)(k >>> 18 | 0xF0));
          paramByteBuffer.put((byte)(k >>> 12 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(k >>> 6 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(k & 0x3F | 0x80));
        }
      }
    }
  }
  
  public static int c(int paramInt, lq paramlq)
  {
    return d(paramInt) + d(paramlq);
  }
  
  public static int c(lq paramlq)
  {
    return paramlq.g();
  }
  
  public static int c(byte[] paramArrayOfByte)
  {
    return f(paramArrayOfByte.length) + paramArrayOfByte.length;
  }
  
  public static int d(int paramInt)
  {
    return f(lt.a(paramInt, 0));
  }
  
  public static int d(int paramInt, long paramLong)
  {
    return d(paramInt) + e(paramLong);
  }
  
  public static int d(long paramLong)
  {
    return h(paramLong);
  }
  
  public static int d(lq paramlq)
  {
    int i = paramlq.g();
    return i + f(i);
  }
  
  public static int e(int paramInt, long paramLong)
  {
    return d(paramInt) + f(paramLong);
  }
  
  public static int e(long paramLong)
  {
    return h(paramLong);
  }
  
  public static int f(int paramInt)
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
  
  public static int f(long paramLong)
  {
    return h(i(paramLong));
  }
  
  public static int h(long paramLong)
  {
    if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L) {
      return 1;
    }
    if ((0xFFFFFFFFFFFFC000 & paramLong) == 0L) {
      return 2;
    }
    if ((0xFFFFFFFFFFE00000 & paramLong) == 0L) {
      return 3;
    }
    if ((0xFFFFFFFFF0000000 & paramLong) == 0L) {
      return 4;
    }
    if ((0xFFFFFFF800000000 & paramLong) == 0L) {
      return 5;
    }
    if ((0xFFFFFC0000000000 & paramLong) == 0L) {
      return 6;
    }
    if ((0xFFFE000000000000 & paramLong) == 0L) {
      return 7;
    }
    if ((0xFF00000000000000 & paramLong) == 0L) {
      return 8;
    }
    if ((0x8000000000000000 & paramLong) == 0L) {
      return 9;
    }
    return 10;
  }
  
  public static long i(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }
  
  public int a()
  {
    return a.remaining();
  }
  
  public void a(byte paramByte)
    throws IOException
  {
    if (!a.hasRemaining()) {
      throw new zza(a.position(), a.limit());
    }
    a.put(paramByte);
  }
  
  public void a(float paramFloat)
    throws IOException
  {
    g(Float.floatToIntBits(paramFloat));
  }
  
  public void a(int paramInt)
    throws IOException
  {
    if (paramInt >= 0)
    {
      e(paramInt);
      return;
    }
    g(paramInt);
  }
  
  public void a(int paramInt, float paramFloat)
    throws IOException
  {
    c(paramInt, 5);
    a(paramFloat);
  }
  
  public void a(int paramInt1, int paramInt2)
    throws IOException
  {
    c(paramInt1, 0);
    a(paramInt2);
  }
  
  public void a(int paramInt, long paramLong)
    throws IOException
  {
    c(paramInt, 0);
    a(paramLong);
  }
  
  public void a(int paramInt, lq paramlq)
    throws IOException
  {
    c(paramInt, 2);
    b(paramlq);
  }
  
  public void a(int paramInt, String paramString)
    throws IOException
  {
    c(paramInt, 2);
    a(paramString);
  }
  
  public void a(int paramInt, boolean paramBoolean)
    throws IOException
  {
    c(paramInt, 0);
    a(paramBoolean);
  }
  
  public void a(int paramInt, byte[] paramArrayOfByte)
    throws IOException
  {
    c(paramInt, 2);
    b(paramArrayOfByte);
  }
  
  public void a(long paramLong)
    throws IOException
  {
    g(paramLong);
  }
  
  public void a(lq paramlq)
    throws IOException
  {
    paramlq.a(this);
  }
  
  public void a(String paramString)
    throws IOException
  {
    int i;
    int j;
    try
    {
      i = f(paramString.length());
      if (i != f(paramString.length() * 3)) {
        break label150;
      }
      j = a.position();
      if (a.remaining() < i) {
        throw new zza(i + j, a.limit());
      }
    }
    catch (BufferOverflowException paramString)
    {
      zza localzza = new zza(a.position(), a.limit());
      localzza.initCause(paramString);
      throw localzza;
    }
    a.position(j + i);
    a(paramString, a);
    int k = a.position();
    a.position(j);
    e(k - j - i);
    a.position(k);
    return;
    label150:
    e(a(paramString));
    a(paramString, a);
  }
  
  public void a(boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      c(i);
      return;
    }
  }
  
  public void b()
  {
    if (a() != 0) {
      throw new IllegalStateException("Did not write as much data as expected.");
    }
  }
  
  public void b(int paramInt, long paramLong)
    throws IOException
  {
    c(paramInt, 0);
    b(paramLong);
  }
  
  public void b(long paramLong)
    throws IOException
  {
    g(paramLong);
  }
  
  public void b(lq paramlq)
    throws IOException
  {
    e(paramlq.f());
    paramlq.a(this);
  }
  
  public void b(byte[] paramArrayOfByte)
    throws IOException
  {
    e(paramArrayOfByte.length);
    d(paramArrayOfByte);
  }
  
  public void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (a.remaining() >= paramInt2)
    {
      a.put(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    throw new zza(a.position(), a.limit());
  }
  
  public void c(int paramInt)
    throws IOException
  {
    a((byte)paramInt);
  }
  
  public void c(int paramInt1, int paramInt2)
    throws IOException
  {
    e(lt.a(paramInt1, paramInt2));
  }
  
  public void c(int paramInt, long paramLong)
    throws IOException
  {
    c(paramInt, 0);
    c(paramLong);
  }
  
  public void c(long paramLong)
    throws IOException
  {
    g(i(paramLong));
  }
  
  public void d(byte[] paramArrayOfByte)
    throws IOException
  {
    b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void e(int paramInt)
    throws IOException
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        c(paramInt);
        return;
      }
      c(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public void g(int paramInt)
    throws IOException
  {
    if (a.remaining() < 4) {
      throw new zza(a.position(), a.limit());
    }
    a.putInt(paramInt);
  }
  
  public void g(long paramLong)
    throws IOException
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        c((int)paramLong);
        return;
      }
      c((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public static class zza
    extends IOException
  {
    zza(int paramInt1, int paramInt2)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzsn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */