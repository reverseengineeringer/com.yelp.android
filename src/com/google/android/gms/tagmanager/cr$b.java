package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.HashMap;
import java.util.Map;

public class cr$b
{
  private final Map<String, d.a> asM = new HashMap();
  private d.a asN;
  
  public b b(String paramString, d.a parama)
  {
    asM.put(paramString, parama);
    return this;
  }
  
  public b i(d.a parama)
  {
    asN = parama;
    return this;
  }
  
  public cr.a qn()
  {
    return new cr.a(asM, asN, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cr.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */