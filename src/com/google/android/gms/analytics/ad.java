package com.google.android.gms.analytics;

class ad
  implements ah
{
  private final long BF;
  private final int BG;
  private double BH;
  private long BI;
  private final Object BJ = new Object();
  private final String BK;
  
  public ad(int paramInt, long paramLong, String paramString)
  {
    BG = paramInt;
    BH = BG;
    BF = paramLong;
    BK = paramString;
  }
  
  public ad(String paramString)
  {
    this(60, 2000L, paramString);
  }
  
  public boolean fe()
  {
    synchronized (BJ)
    {
      long l = System.currentTimeMillis();
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
      ae.W("Excessive " + BK + " detected; call ignored.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */