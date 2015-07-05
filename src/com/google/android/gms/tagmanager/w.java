package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class w
  extends dg
{
  private static final String ID = a.ah.toString();
  private static final String VALUE = b.ff.toString();
  private static final String ark = b.bS.toString();
  private final DataLayer aqn;
  
  public w(DataLayer paramDataLayer)
  {
    super(ID, new String[] { VALUE });
    aqn = paramDataLayer;
  }
  
  private void a(d.a parama)
  {
    if ((parama == null) || (parama == di.qV())) {}
    do
    {
      return;
      parama = di.j(parama);
    } while (parama == di.ra());
    aqn.cx(parama);
  }
  
  private void b(d.a parama)
  {
    if ((parama == null) || (parama == di.qV())) {}
    for (;;)
    {
      return;
      parama = di.o(parama);
      if ((parama instanceof List))
      {
        parama = ((List)parama).iterator();
        while (parama.hasNext())
        {
          Object localObject = parama.next();
          if ((localObject instanceof Map))
          {
            localObject = (Map)localObject;
            aqn.push((Map)localObject);
          }
        }
      }
    }
  }
  
  public void D(Map<String, d.a> paramMap)
  {
    b((d.a)paramMap.get(VALUE));
    a((d.a)paramMap.get(ark));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */