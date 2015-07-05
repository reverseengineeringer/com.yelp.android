package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

@ey
public class bu
  extends bx.a
  implements bv.a
{
  private final Object mH = new Object();
  private final String pB;
  private final Drawable pC;
  private final String pD;
  private final String pF;
  private bv pJ;
  private final Drawable pK;
  private final String pL;
  
  public bu(String paramString1, Drawable paramDrawable1, String paramString2, Drawable paramDrawable2, String paramString3, String paramString4)
  {
    pB = paramString1;
    pC = paramDrawable1;
    pD = paramString2;
    pK = paramDrawable2;
    pF = paramString3;
    pL = paramString4;
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
        gr.T("Attempt to record impression before content ad initialized.");
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
  
  public String bE()
  {
    return pF;
  }
  
  public d bI()
  {
    return e.k(pK);
  }
  
  public String bJ()
  {
    return pL;
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
        gr.T("Attempt to perform click before content ad initialized.");
        return;
      }
      pJ.b("1", paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */