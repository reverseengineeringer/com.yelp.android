package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class m
  extends aj
{
  private static final String ID = a.A.toString();
  private static final String VALUE = b.ff.toString();
  
  public m()
  {
    super(ID, new String[] { VALUE });
  }
  
  public static String ph()
  {
    return ID;
  }
  
  public static String pi()
  {
    return VALUE;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    return (d.a)paramMap.get(VALUE);
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */