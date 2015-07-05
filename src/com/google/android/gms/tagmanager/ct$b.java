package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;

class ct$b
{
  private d.a asN;
  private bz<d.a> ats;
  
  public ct$b(bz<d.a> parambz, d.a parama)
  {
    ats = parambz;
    asN = parama;
  }
  
  public int getSize()
  {
    int j = ((d.a)ats.getObject()).rY();
    if (asN == null) {}
    for (int i = 0;; i = asN.rY()) {
      return i + j;
    }
  }
  
  public bz<d.a> qG()
  {
    return ats;
  }
  
  public d.a qm()
  {
    return asN;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ct.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */