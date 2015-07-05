package com.google.android.gms.internal;

public final class qz
{
  public static final int[] azj = new int[0];
  public static final long[] azk = new long[0];
  public static final float[] azl = new float[0];
  public static final double[] azm = new double[0];
  public static final boolean[] azn = new boolean[0];
  public static final String[] azo = new String[0];
  public static final byte[][] azp = new byte[0][];
  public static final byte[] azq = new byte[0];
  
  public static final int b(qo paramqo, int paramInt)
  {
    int i = 1;
    int j = paramqo.getPosition();
    paramqo.gQ(paramInt);
    while (paramqo.rz() == paramInt)
    {
      paramqo.gQ(paramInt);
      i += 1;
    }
    paramqo.gU(j);
    return i;
  }
  
  static int hk(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  public static int hl(int paramInt)
  {
    return paramInt >>> 3;
  }
  
  static int y(int paramInt1, int paramInt2)
  {
    return paramInt1 << 3 | paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */