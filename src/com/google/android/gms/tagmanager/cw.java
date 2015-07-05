package com.google.android.gms.tagmanager;

class cw
  implements cg
{
  private final long BF;
  private final int BG;
  private double BH;
  private final Object BJ = new Object();
  private long aty;
  
  public cw()
  {
    this(60, 2000L);
  }
  
  public cw(int paramInt, long paramLong)
  {
    BG = paramInt;
    BH = BG;
    BF = paramLong;
  }
  
  public boolean fe()
  {
    synchronized (BJ)
    {
      long l = System.currentTimeMillis();
      if (BH < BG)
      {
        double d = (l - aty) / BF;
        if (d > 0.0D) {
          BH = Math.min(BG, d + BH);
        }
      }
      aty = l;
      if (BH >= 1.0D)
      {
        BH -= 1.0D;
        return true;
      }
      bh.W("No more tokens available.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */