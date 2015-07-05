package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ld;

class bf
  implements cg
{
  private final long BF;
  private final int BG;
  private double BH;
  private long BI;
  private final Object BJ = new Object();
  private final String BK;
  private final long arU;
  private final ld wb;
  
  public bf(int paramInt, long paramLong1, long paramLong2, String paramString, ld paramld)
  {
    BG = paramInt;
    BH = BG;
    BF = paramLong1;
    arU = paramLong2;
    BK = paramString;
    wb = paramld;
  }
  
  public boolean fe()
  {
    synchronized (BJ)
    {
      long l = wb.currentTimeMillis();
      if (l - BI < arU)
      {
        bh.W("Excessive " + BK + " detected; call ignored.");
        return false;
      }
      if (BH < BG)
      {
        double d = (l - BI) / BF;
        if (d > 0.0D) {
          BH = Math.min(BG, d + BH);
        }
      }
      BI = l;
      if (BH >= 1.0D)
      {
        BH -= 1.0D;
        return true;
      }
    }
    bh.W("Excessive " + BK + " detected; call ignored.");
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */