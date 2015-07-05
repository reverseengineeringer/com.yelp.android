package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

abstract class cd
  extends aj
{
  private static final String arp = b.bw.toString();
  private static final String ask = b.bx.toString();
  
  public cd(String paramString)
  {
    super(paramString, new String[] { arp, ask });
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    Object localObject = paramMap.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      if ((d.a)((Iterator)localObject).next() == di.rb()) {
        return di.u(Boolean.valueOf(false));
      }
    }
    localObject = (d.a)paramMap.get(arp);
    d.a locala = (d.a)paramMap.get(ask);
    if ((localObject == null) || (locala == null)) {}
    for (boolean bool = false;; bool = a((d.a)localObject, locala, paramMap)) {
      return di.u(Boolean.valueOf(bool));
    }
  }
  
  protected abstract boolean a(d.a parama1, d.a parama2, Map<String, d.a> paramMap);
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */