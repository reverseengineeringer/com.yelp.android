package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.Map;

abstract class dd
  extends cd
{
  public dd(String paramString)
  {
    super(paramString);
  }
  
  protected boolean a(d.a parama1, d.a parama2, Map<String, d.a> paramMap)
  {
    parama1 = di.j(parama1);
    parama2 = di.j(parama2);
    if ((parama1 == di.ra()) || (parama2 == di.ra())) {
      return false;
    }
    return a(parama1, parama2, paramMap);
  }
  
  protected abstract boolean a(String paramString1, String paramString2, Map<String, d.a> paramMap);
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */