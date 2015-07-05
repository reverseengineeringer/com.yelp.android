package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

@ey
public class bt
  extends bw.a
  implements bv.a
{
  private final Object mH = new Object();
  private final String pB;
  private final Drawable pC;
  private final String pD;
  private final Drawable pE;
  private final String pF;
  private final double pG;
  private final String pH;
  private final String pI;
  private bv pJ;
  
  public bt(String paramString1, Drawable paramDrawable1, String paramString2, Drawable paramDrawable2, String paramString3, double paramDouble, String paramString4, String paramString5)
  {
    pB = paramString1;
    pC = paramDrawable1;
    pD = paramString2;
    pE = paramDrawable2;
    pF = paramString3;
    pG = paramDouble;
    pH = paramString4;
    pI = paramString5;
  }
  
  public void a(bv parambv)
  {
    synchronized (mH)
    {
      pJ = parambv;
      return;
    }
  }
  
  public void aw()
  {
    synchronized (mH)
    {
      if (pJ == null)
      {
        gr.T("Attempt to record impression before app install ad initialized.");
        return;
      }
      pJ.aw();
      return;
    }
  }
  
  public String bB()
  {
    return pB;
  }
  
  public d bC()
  {
    return e.k(pC);
  }
  
  public d bD()
  {
    return e.k(pE);
  }
  
  public String bE()
  {
    return pF;
  }
  
  public double bF()
  {
    return pG;
  }
  
  public String bG()
  {
    return pH;
  }
  
  public String bH()
  {
    return pI;
  }
  
  public String getBody()
  {
    return pD;
  }
  
  public void j(int paramInt)
  {
    synchronized (mH)
    {
      if (pJ == null)
      {
        gr.T("Attempt to perform click before app install ad initialized.");
        return;
      }
      pJ.b("2", paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */