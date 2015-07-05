package com.google.android.gms.internal;

public class qn
{
  private final byte[] ayJ = new byte['Ā'];
  private int ayK;
  private int ayL;
  
  public qn(byte[] paramArrayOfByte)
  {
    int j = 0;
    while (j < 256)
    {
      ayJ[j] = ((byte)j);
      j += 1;
    }
    int k = 0;
    j = 0;
    while (j < 256)
    {
      k = k + ayJ[j] + paramArrayOfByte[(j % paramArrayOfByte.length)] & 0xFF;
      int i = ayJ[j];
      ayJ[j] = ayJ[k];
      ayJ[k] = i;
      j += 1;
    }
    ayK = 0;
    ayL = 0;
  }
  
  public void o(byte[] paramArrayOfByte)
  {
    int m = ayK;
    int k = ayL;
    int j = 0;
    while (j < paramArrayOfByte.length)
    {
      m = m + 1 & 0xFF;
      k = k + ayJ[m] & 0xFF;
      int i = ayJ[m];
      ayJ[m] = ayJ[k];
      ayJ[k] = i;
      paramArrayOfByte[j] = ((byte)(paramArrayOfByte[j] ^ ayJ[(ayJ[m] + ayJ[k] & 0xFF)]));
      j += 1;
    }
    ayK = m;
    ayL = k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */