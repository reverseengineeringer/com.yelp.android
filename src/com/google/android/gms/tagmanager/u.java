package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class u
  extends aj
{
  private static final String ID = a.C.toString();
  private static final String NAME = b.dB.toString();
  private static final String aqZ = b.cr.toString();
  private final DataLayer aqn;
  
  public u(DataLayer paramDataLayer)
  {
    super(ID, new String[] { NAME });
    aqn = paramDataLayer;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    Object localObject = aqn.get(di.j((d.a)paramMap.get(NAME)));
    if (localObject == null)
    {
      paramMap = (d.a)paramMap.get(aqZ);
      if (paramMap != null) {
        return paramMap;
      }
      return di.rb();
    }
    return di.u(localObject);
  }
  
  public boolean pe()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */