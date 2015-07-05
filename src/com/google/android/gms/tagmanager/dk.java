package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class dk
  extends aj
{
  private static final String ID = a.aj.toString();
  private static final String arp = b.bw.toString();
  
  public dk()
  {
    super(ID, new String[] { arp });
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    return di.u(di.j((d.a)paramMap.get(arp)).toUpperCase());
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */