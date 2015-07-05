package com.google.android.gms.tagmanager;

import java.util.Collections;
import java.util.List;

public class cr$e
{
  private final List<cr.a> asR;
  private final List<cr.a> asS;
  private final List<cr.a> asT;
  private final List<cr.a> asU;
  private final List<cr.a> asV;
  private final List<cr.a> asW;
  private final List<String> asX;
  private final List<String> asY;
  private final List<String> asZ;
  private final List<String> ata;
  
  private cr$e(List<cr.a> paramList1, List<cr.a> paramList2, List<cr.a> paramList3, List<cr.a> paramList4, List<cr.a> paramList5, List<cr.a> paramList6, List<String> paramList7, List<String> paramList8, List<String> paramList9, List<String> paramList10)
  {
    asR = Collections.unmodifiableList(paramList1);
    asS = Collections.unmodifiableList(paramList2);
    asT = Collections.unmodifiableList(paramList3);
    asU = Collections.unmodifiableList(paramList4);
    asV = Collections.unmodifiableList(paramList5);
    asW = Collections.unmodifiableList(paramList6);
    asX = Collections.unmodifiableList(paramList7);
    asY = Collections.unmodifiableList(paramList8);
    asZ = Collections.unmodifiableList(paramList9);
    ata = Collections.unmodifiableList(paramList10);
  }
  
  public static cr.f qs()
  {
    return new cr.f(null);
  }
  
  public List<String> qA()
  {
    return asZ;
  }
  
  public List<String> qB()
  {
    return ata;
  }
  
  public List<cr.a> qC()
  {
    return asW;
  }
  
  public List<cr.a> qt()
  {
    return asR;
  }
  
  public List<cr.a> qu()
  {
    return asS;
  }
  
  public List<cr.a> qv()
  {
    return asT;
  }
  
  public List<cr.a> qw()
  {
    return asU;
  }
  
  public List<cr.a> qx()
  {
    return asV;
  }
  
  public List<String> qy()
  {
    return asX;
  }
  
  public List<String> qz()
  {
    return asY;
  }
  
  public String toString()
  {
    return "Positive predicates: " + qt() + "  Negative predicates: " + qu() + "  Add tags: " + qv() + "  Remove tags: " + qw() + "  Add macros: " + qx() + "  Remove macros: " + qC();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cr.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */