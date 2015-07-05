package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class ac
  extends aj
{
  private static final String ID = a.aa.toString();
  private static final String arp = b.bw.toString();
  private static final String arq = b.dH.toString();
  private static final String arr = b.de.toString();
  private static final String ars = b.dP.toString();
  
  public ac()
  {
    super(ID, new String[] { arp });
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    Object localObject = (d.a)paramMap.get(arp);
    if ((localObject == null) || (localObject == di.rb())) {
      return di.rb();
    }
    String str2 = di.j((d.a)localObject);
    localObject = (d.a)paramMap.get(arr);
    String str1;
    if (localObject == null)
    {
      str1 = "text";
      localObject = (d.a)paramMap.get(ars);
      if (localObject != null) {
        break label148;
      }
      localObject = "base16";
      label75:
      paramMap = (d.a)paramMap.get(arq);
      if ((paramMap == null) || (!di.n(paramMap).booleanValue())) {
        break label322;
      }
    }
    label148:
    label257:
    label296:
    label322:
    for (int i = 3;; i = 2)
    {
      for (;;)
      {
        try
        {
          if ("text".equals(str1))
          {
            paramMap = str2.getBytes();
            if (!"base16".equals(localObject)) {
              break label257;
            }
            paramMap = j.d(paramMap);
            return di.u(paramMap);
            str1 = di.j((d.a)localObject);
            break;
            localObject = di.j((d.a)localObject);
            break label75;
          }
          if ("base16".equals(str1))
          {
            paramMap = j.co(str2);
            continue;
          }
          if ("base64".equals(str1))
          {
            paramMap = Base64.decode(str2, i);
            continue;
          }
          if ("base64url".equals(str1))
          {
            paramMap = Base64.decode(str2, i | 0x8);
            continue;
          }
          bh.T("Encode: unknown input format: " + str1);
          paramMap = di.rb();
          return paramMap;
        }
        catch (IllegalArgumentException paramMap)
        {
          bh.T("Encode: invalid input:");
          return di.rb();
        }
        if ("base64".equals(localObject))
        {
          paramMap = Base64.encodeToString(paramMap, i);
        }
        else
        {
          if (!"base64url".equals(localObject)) {
            break label296;
          }
          paramMap = Base64.encodeToString(paramMap, i | 0x8);
        }
      }
      bh.T("Encode: unknown output format: " + (String)localObject);
      return di.rb();
    }
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */