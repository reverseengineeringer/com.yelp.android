package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.Collections;
import java.util.Map;

public class cr$a
{
  private final Map<String, d.a> asM;
  private final d.a asN;
  
  private cr$a(Map<String, d.a> paramMap, d.a parama)
  {
    asM = paramMap;
    asN = parama;
  }
  
  public static cr.b qk()
  {
    return new cr.b(null);
  }
  
  public void a(String paramString, d.a parama)
  {
    asM.put(paramString, parama);
  }
  
  public Map<String, d.a> ql()
  {
    return Collections.unmodifiableMap(asM);
  }
  
  public d.a qm()
  {
    return asN;
  }
  
  public String toString()
  {
    return "Properties: " + ql() + " pushAfterEvaluate: " + asN;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cr.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */