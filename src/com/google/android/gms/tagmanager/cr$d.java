package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class cr$d
{
  private String TU = "";
  private final List<cr.e> asO = new ArrayList();
  private final Map<String, List<cr.a>> asP = new HashMap();
  private int asQ = 0;
  
  public d a(cr.a parama)
  {
    String str = di.j((d.a)parama.ql().get(b.df.toString()));
    List localList = (List)asP.get(str);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      asP.put(str, localObject);
    }
    ((List)localObject).add(parama);
    return this;
  }
  
  public d a(cr.e parame)
  {
    asO.add(parame);
    return this;
  }
  
  public d cO(String paramString)
  {
    TU = paramString;
    return this;
  }
  
  public d fO(int paramInt)
  {
    asQ = paramInt;
    return this;
  }
  
  public cr.c qr()
  {
    return new cr.c(asO, asP, TU, asQ, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cr.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */