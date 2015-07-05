package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class az
  extends aj
{
  private static final String ID = a.ae.toString();
  private static final String arJ = b.di.toString();
  private static final String arK = b.dm.toString();
  private static final String arL = b.cH.toString();
  private static final String arp = b.bw.toString();
  
  public az()
  {
    super(ID, new String[] { arp });
  }
  
  private String a(String paramString, az.a parama, Set<Character> paramSet)
  {
    switch (az.1.arM[parama.ordinal()])
    {
    default: 
      return paramString;
    case 1: 
      try
      {
        parama = dm.dg(paramString);
        return parama;
      }
      catch (UnsupportedEncodingException parama)
      {
        bh.b("Joiner: unsupported encoding", parama);
        return paramString;
      }
    }
    paramString = paramString.replace("\\", "\\\\");
    parama = paramSet.iterator();
    while (parama.hasNext())
    {
      paramSet = ((Character)parama.next()).toString();
      paramString = paramString.replace(paramSet, "\\" + paramSet);
    }
    return paramString;
  }
  
  private void a(StringBuilder paramStringBuilder, String paramString, az.a parama, Set<Character> paramSet)
  {
    paramStringBuilder.append(a(paramString, parama, paramSet));
  }
  
  private void a(Set<Character> paramSet, String paramString)
  {
    int i = 0;
    while (i < paramString.length())
    {
      paramSet.add(Character.valueOf(paramString.charAt(i)));
      i += 1;
    }
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    d.a locala = (d.a)paramMap.get(arp);
    if (locala == null) {
      return di.rb();
    }
    Object localObject1 = (d.a)paramMap.get(arJ);
    String str1;
    Object localObject2;
    if (localObject1 != null)
    {
      str1 = di.j((d.a)localObject1);
      localObject1 = (d.a)paramMap.get(arK);
      if (localObject1 == null) {
        break label186;
      }
      localObject2 = di.j((d.a)localObject1);
      label75:
      localObject1 = az.a.arN;
      paramMap = (d.a)paramMap.get(arL);
      if (paramMap == null) {
        break label418;
      }
      paramMap = di.j(paramMap);
      if (!"url".equals(paramMap)) {
        break label193;
      }
      localObject1 = az.a.arO;
      paramMap = null;
    }
    for (;;)
    {
      label118:
      StringBuilder localStringBuilder = new StringBuilder();
      switch (type)
      {
      default: 
        a(localStringBuilder, di.j(locala), (az.a)localObject1, paramMap);
      }
      for (;;)
      {
        return di.u(localStringBuilder.toString());
        str1 = "";
        break;
        label186:
        localObject2 = "=";
        break label75;
        label193:
        if ("backslash".equals(paramMap))
        {
          localObject1 = az.a.arP;
          paramMap = new HashSet();
          a(paramMap, str1);
          a(paramMap, (String)localObject2);
          paramMap.remove(Character.valueOf('\\'));
          break label118;
        }
        bh.T("Joiner: unsupported escape type: " + paramMap);
        return di.rb();
        int j = 1;
        localObject2 = gw;
        int k = localObject2.length;
        int i = 0;
        while (i < k)
        {
          locala = localObject2[i];
          if (j == 0) {
            localStringBuilder.append(str1);
          }
          a(localStringBuilder, di.j(locala), (az.a)localObject1, paramMap);
          i += 1;
          j = 0;
        }
        i = 0;
        while (i < gx.length)
        {
          if (i > 0) {
            localStringBuilder.append(str1);
          }
          String str2 = di.j(gx[i]);
          String str3 = di.j(gy[i]);
          a(localStringBuilder, str2, (az.a)localObject1, paramMap);
          localStringBuilder.append((String)localObject2);
          a(localStringBuilder, str3, (az.a)localObject1, paramMap);
          i += 1;
        }
      }
      label418:
      paramMap = null;
    }
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */