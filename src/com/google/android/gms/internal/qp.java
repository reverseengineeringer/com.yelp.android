package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;

public final class qp
{
  private final int ayV;
  private final byte[] buffer;
  private int position;
  
  private qp(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    buffer = paramArrayOfByte;
    position = paramInt1;
    ayV = (paramInt1 + paramInt2);
  }
  
  public static int D(long paramLong)
  {
    return G(paramLong);
  }
  
  public static int E(long paramLong)
  {
    return G(I(paramLong));
  }
  
  public static int G(long paramLong)
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
  
  public static long I(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }
  
  public static int X(boolean paramBoolean)
  {
    return 1;
  }
  
  public static int b(int paramInt, double paramDouble)
  {
    return hc(paramInt) + f(paramDouble);
  }
  
  public static int b(int paramInt, qw paramqw)
  {
    return hc(paramInt) * 2 + d(paramqw);
  }
  
  public static int b(int paramInt, byte[] paramArrayOfByte)
  {
    return hc(paramInt) + s(paramArrayOfByte);
  }
  
  public static qp b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new qp(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static int c(int paramInt, float paramFloat)
  {
    return hc(paramInt) + e(paramFloat);
  }
  
  public static int c(int paramInt, qw paramqw)
  {
    return hc(paramInt) + e(paramqw);
  }
  
  public static int c(int paramInt, boolean paramBoolean)
  {
    return hc(paramInt) + X(paramBoolean);
  }
  
  public static int d(int paramInt, long paramLong)
  {
    return hc(paramInt) + D(paramLong);
  }
  
  public static int d(qw paramqw)
  {
    return paramqw.rZ();
  }
  
  public static int dk(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      int i = he(paramString.length);
      int j = paramString.length;
      return j + i;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException("UTF-8 not supported.");
    }
  }
  
  public static int e(float paramFloat)
  {
    return 4;
  }
  
  public static int e(int paramInt, long paramLong)
  {
    return hc(paramInt) + E(paramLong);
  }
  
  public static int e(qw paramqw)
  {
    int i = paramqw.rZ();
    return i + he(i);
  }
  
  public static int f(double paramDouble)
  {
    return 8;
  }
  
  public static int gZ(int paramInt)
  {
    if (paramInt >= 0) {
      return he(paramInt);
    }
    return 10;
  }
  
  public static int ha(int paramInt)
  {
    return he(hg(paramInt));
  }
  
  public static int hc(int paramInt)
  {
    return he(qz.y(paramInt, 0));
  }
  
  public static int he(int paramInt)
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
  
  public static int hg(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  public static int j(int paramInt, String paramString)
  {
    return hc(paramInt) + dk(paramString);
  }
  
  public static qp q(byte[] paramArrayOfByte)
  {
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static int s(byte[] paramArrayOfByte)
  {
    return he(paramArrayOfByte.length) + paramArrayOfByte.length;
  }
  
  public static int v(int paramInt1, int paramInt2)
  {
    return hc(paramInt1) + gZ(paramInt2);
  }
  
  public static int w(int paramInt1, int paramInt2)
  {
    return hc(paramInt1) + ha(paramInt2);
  }
  
  public void B(long paramLong)
  {
    F(paramLong);
  }
  
  public void C(long paramLong)
  {
    F(I(paramLong));
  }
  
  public void F(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        hb((int)paramLong);
        return;
      }
      hb((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public void H(long paramLong)
  {
    hb((int)paramLong & 0xFF);
    hb((int)(paramLong >> 8) & 0xFF);
    hb((int)(paramLong >> 16) & 0xFF);
    hb((int)(paramLong >> 24) & 0xFF);
    hb((int)(paramLong >> 32) & 0xFF);
    hb((int)(paramLong >> 40) & 0xFF);
    hb((int)(paramLong >> 48) & 0xFF);
    hb((int)(paramLong >> 56) & 0xFF);
  }
  
  public void W(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      hb(i);
      return;
    }
  }
  
  public void a(int paramInt, double paramDouble)
  {
    x(paramInt, 1);
    e(paramDouble);
  }
  
  public void a(int paramInt, qw paramqw)
  {
    x(paramInt, 2);
    c(paramqw);
  }
  
  public void a(int paramInt, byte[] paramArrayOfByte)
  {
    x(paramInt, 2);
    r(paramArrayOfByte);
  }
  
  public void b(byte paramByte)
  {
    if (position == ayV) {
      throw new qp.a(position, ayV);
    }
    byte[] arrayOfByte = buffer;
    int i = position;
    position = (i + 1);
    arrayOfByte[i] = paramByte;
  }
  
  public void b(int paramInt, float paramFloat)
  {
    x(paramInt, 5);
    d(paramFloat);
  }
  
  public void b(int paramInt, long paramLong)
  {
    x(paramInt, 0);
    B(paramLong);
  }
  
  public void b(int paramInt, String paramString)
  {
    x(paramInt, 2);
    dj(paramString);
  }
  
  public void b(int paramInt, boolean paramBoolean)
  {
    x(paramInt, 0);
    W(paramBoolean);
  }
  
  public void b(qw paramqw)
  {
    paramqw.a(this);
  }
  
  public void c(int paramInt, long paramLong)
  {
    x(paramInt, 0);
    C(paramLong);
  }
  
  public void c(qw paramqw)
  {
    hd(paramqw.rY());
    paramqw.a(this);
  }
  
  public void c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (ayV - position >= paramInt2)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, buffer, position, paramInt2);
      position += paramInt2;
      return;
    }
    throw new qp.a(position, ayV);
  }
  
  public void d(float paramFloat)
  {
    hf(Float.floatToIntBits(paramFloat));
  }
  
  public void dj(String paramString)
  {
    paramString = paramString.getBytes("UTF-8");
    hd(paramString.length);
    t(paramString);
  }
  
  public void e(double paramDouble)
  {
    H(Double.doubleToLongBits(paramDouble));
  }
  
  public void gX(int paramInt)
  {
    if (paramInt >= 0)
    {
      hd(paramInt);
      return;
    }
    F(paramInt);
  }
  
  public void gY(int paramInt)
  {
    hd(hg(paramInt));
  }
  
  public void hb(int paramInt)
  {
    b((byte)paramInt);
  }
  
  public void hd(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        hb(paramInt);
        return;
      }
      hb(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public void hf(int paramInt)
  {
    hb(paramInt & 0xFF);
    hb(paramInt >> 8 & 0xFF);
    hb(paramInt >> 16 & 0xFF);
    hb(paramInt >> 24 & 0xFF);
  }
  
  public void r(byte[] paramArrayOfByte)
  {
    hd(paramArrayOfByte.length);
    t(paramArrayOfByte);
  }
  
  public int rO()
  {
    return ayV - position;
  }
  
  public void rP()
  {
    if (rO() != 0) {
      throw new IllegalStateException("Did not write as much data as expected.");
    }
  }
  
  public void t(int paramInt1, int paramInt2)
  {
    x(paramInt1, 0);
    gX(paramInt2);
  }
  
  public void t(byte[] paramArrayOfByte)
  {
    c(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void u(int paramInt1, int paramInt2)
  {
    x(paramInt1, 0);
    gY(paramInt2);
  }
  
  public void x(int paramInt1, int paramInt2)
  {
    hd(qz.y(paramInt1, paramInt2));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */