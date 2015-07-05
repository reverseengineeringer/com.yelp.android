package com.google.android.gms.internal;

public final class qo
{
  private int ayM;
  private int ayN;
  private int ayO;
  private int ayP;
  private int ayQ;
  private int ayR = Integer.MAX_VALUE;
  private int ayS;
  private int ayT = 64;
  private int ayU = 67108864;
  private final byte[] buffer;
  
  private qo(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    buffer = paramArrayOfByte;
    ayM = paramInt1;
    ayN = (paramInt1 + paramInt2);
    ayP = paramInt1;
  }
  
  public static long A(long paramLong)
  {
    return paramLong >>> 1 ^ -(1L & paramLong);
  }
  
  public static qo a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new qo(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static int gR(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }
  
  public static qo p(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  private void rK()
  {
    ayN += ayO;
    int i = ayN;
    if (i > ayR)
    {
      ayO = (i - ayR);
      ayN -= ayO;
      return;
    }
    ayO = 0;
  }
  
  public void a(qw paramqw)
  {
    int i = rG();
    if (ayS >= ayT) {
      throw qv.rX();
    }
    i = gS(i);
    ayS += 1;
    paramqw.b(this);
    gP(0);
    ayS -= 1;
    gT(i);
  }
  
  public void a(qw paramqw, int paramInt)
  {
    if (ayS >= ayT) {
      throw qv.rX();
    }
    ayS += 1;
    paramqw.b(this);
    gP(qz.y(paramInt, 4));
    ayS -= 1;
  }
  
  public void gP(int paramInt)
  {
    if (ayQ != paramInt) {
      throw qv.rV();
    }
  }
  
  public boolean gQ(int paramInt)
  {
    switch (qz.hk(paramInt))
    {
    default: 
      throw qv.rW();
    case 0: 
      rC();
      return true;
    case 1: 
      rJ();
      return true;
    case 2: 
      gW(rG());
      return true;
    case 3: 
      rA();
      gP(qz.y(qz.hl(paramInt), 4));
      return true;
    case 4: 
      return false;
    }
    rI();
    return true;
  }
  
  public int gS(int paramInt)
  {
    if (paramInt < 0) {
      throw qv.rS();
    }
    paramInt = ayP + paramInt;
    int i = ayR;
    if (paramInt > i) {
      throw qv.rR();
    }
    ayR = paramInt;
    rK();
    return i;
  }
  
  public void gT(int paramInt)
  {
    ayR = paramInt;
    rK();
  }
  
  public void gU(int paramInt)
  {
    if (paramInt > ayP - ayM) {
      throw new IllegalArgumentException("Position " + paramInt + " is beyond current " + (ayP - ayM));
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad position " + paramInt);
    }
    ayP = (ayM + paramInt);
  }
  
  public byte[] gV(int paramInt)
  {
    if (paramInt < 0) {
      throw qv.rS();
    }
    if (ayP + paramInt > ayR)
    {
      gW(ayR - ayP);
      throw qv.rR();
    }
    if (paramInt <= ayN - ayP)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(buffer, ayP, arrayOfByte, 0, paramInt);
      ayP += paramInt;
      return arrayOfByte;
    }
    throw qv.rR();
  }
  
  public void gW(int paramInt)
  {
    if (paramInt < 0) {
      throw qv.rS();
    }
    if (ayP + paramInt > ayR)
    {
      gW(ayR - ayP);
      throw qv.rR();
    }
    if (paramInt <= ayN - ayP)
    {
      ayP += paramInt;
      return;
    }
    throw qv.rR();
  }
  
  public int getPosition()
  {
    return ayP - ayM;
  }
  
  public void rA()
  {
    int i;
    do
    {
      i = rz();
    } while ((i != 0) && (gQ(i)));
  }
  
  public long rB()
  {
    return rH();
  }
  
  public int rC()
  {
    return rG();
  }
  
  public boolean rD()
  {
    return rG() != 0;
  }
  
  public int rE()
  {
    return gR(rG());
  }
  
  public long rF()
  {
    return A(rH());
  }
  
  public int rG()
  {
    int i = rN();
    if (i >= 0) {}
    int k;
    do
    {
      return i;
      i &= 0x7F;
      j = rN();
      if (j >= 0) {
        return i | j << 7;
      }
      i |= (j & 0x7F) << 7;
      j = rN();
      if (j >= 0) {
        return i | j << 14;
      }
      i |= (j & 0x7F) << 14;
      k = rN();
      if (k >= 0) {
        return i | k << 21;
      }
      j = rN();
      k = i | (k & 0x7F) << 21 | j << 28;
      i = k;
    } while (j >= 0);
    int j = 0;
    for (;;)
    {
      if (j >= 5) {
        break label133;
      }
      i = k;
      if (rN() >= 0) {
        break;
      }
      j += 1;
    }
    label133:
    throw qv.rT();
  }
  
  public long rH()
  {
    int i = 0;
    long l = 0L;
    while (i < 64)
    {
      int j = rN();
      l |= (j & 0x7F) << i;
      if ((j & 0x80) == 0) {
        return l;
      }
      i += 7;
    }
    throw qv.rT();
  }
  
  public int rI()
  {
    return rN() & 0xFF | (rN() & 0xFF) << 8 | (rN() & 0xFF) << 16 | (rN() & 0xFF) << 24;
  }
  
  public long rJ()
  {
    int i = rN();
    int j = rN();
    int k = rN();
    int m = rN();
    int n = rN();
    int i1 = rN();
    int i2 = rN();
    int i3 = rN();
    long l = i;
    return (j & 0xFF) << 8 | l & 0xFF | (k & 0xFF) << 16 | (m & 0xFF) << 24 | (n & 0xFF) << 32 | (i1 & 0xFF) << 40 | (i2 & 0xFF) << 48 | (i3 & 0xFF) << 56;
  }
  
  public int rL()
  {
    if (ayR == Integer.MAX_VALUE) {
      return -1;
    }
    int i = ayP;
    return ayR - i;
  }
  
  public boolean rM()
  {
    return ayP == ayN;
  }
  
  public byte rN()
  {
    if (ayP == ayN) {
      throw qv.rR();
    }
    byte[] arrayOfByte = buffer;
    int i = ayP;
    ayP = (i + 1);
    return arrayOfByte[i];
  }
  
  public byte[] readBytes()
  {
    int i = rG();
    if ((i <= ayN - ayP) && (i > 0))
    {
      byte[] arrayOfByte = new byte[i];
      System.arraycopy(buffer, ayP, arrayOfByte, 0, i);
      ayP = (i + ayP);
      return arrayOfByte;
    }
    return gV(i);
  }
  
  public double readDouble()
  {
    return Double.longBitsToDouble(rJ());
  }
  
  public float readFloat()
  {
    return Float.intBitsToFloat(rI());
  }
  
  public String readString()
  {
    int i = rG();
    if ((i <= ayN - ayP) && (i > 0))
    {
      String str = new String(buffer, ayP, i, "UTF-8");
      ayP = (i + ayP);
      return str;
    }
    return new String(gV(i), "UTF-8");
  }
  
  public int rz()
  {
    if (rM())
    {
      ayQ = 0;
      return 0;
    }
    ayQ = rG();
    if (ayQ == 0) {
      throw qv.rU();
    }
    return ayQ;
  }
  
  public byte[] s(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return qz.azq;
    }
    byte[] arrayOfByte = new byte[paramInt2];
    int i = ayM;
    System.arraycopy(buffer, i + paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */