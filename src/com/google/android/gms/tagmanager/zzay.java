package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import com.google.android.gms.internal.zzad;
import com.google.android.gms.internal.zzae;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class zzay
  extends g
{
  private static final String a = zzad.zzcd.toString();
  private static final String b = zzae.zzdV.toString();
  private static final String c = zzae.zzfU.toString();
  private static final String d = zzae.zzfY.toString();
  private static final String e = zzae.zzfr.toString();
  
  private String a(String paramString, zza paramzza, Set<Character> paramSet)
  {
    switch (1.a[paramzza.ordinal()])
    {
    default: 
      return paramString;
    case 1: 
      try
      {
        paramzza = ai.a(paramString);
        return paramzza;
      }
      catch (UnsupportedEncodingException paramzza)
      {
        m.a("Joiner: unsupported encoding", paramzza);
        return paramString;
      }
    }
    paramString = paramString.replace("\\", "\\\\");
    paramzza = paramSet.iterator();
    while (paramzza.hasNext())
    {
      paramSet = ((Character)paramzza.next()).toString();
      paramString = paramString.replace(paramSet, "\\" + paramSet);
    }
    return paramString;
  }
  
  private void a(StringBuilder paramStringBuilder, String paramString, zza paramzza, Set<Character> paramSet)
  {
    paramStringBuilder.append(a(paramString, paramzza, paramSet));
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
  
  public d.a a(Map<String, d.a> paramMap)
  {
    d.a locala = (d.a)paramMap.get(b);
    if (locala == null) {
      return ag.a();
    }
    Object localObject1 = (d.a)paramMap.get(c);
    String str1;
    Object localObject2;
    if (localObject1 != null)
    {
      str1 = ag.a((d.a)localObject1);
      localObject1 = (d.a)paramMap.get(d);
      if (localObject1 == null) {
        break label186;
      }
      localObject2 = ag.a((d.a)localObject1);
      label75:
      localObject1 = zza.zzbjm;
      paramMap = (d.a)paramMap.get(e);
      if (paramMap == null) {
        break label418;
      }
      paramMap = ag.a(paramMap);
      if (!"url".equals(paramMap)) {
        break label193;
      }
      localObject1 = zza.zzbjn;
      paramMap = null;
    }
    for (;;)
    {
      label118:
      StringBuilder localStringBuilder = new StringBuilder();
      switch (a)
      {
      default: 
        a(localStringBuilder, ag.a(locala), (zza)localObject1, paramMap);
      }
      for (;;)
      {
        return ag.c(localStringBuilder.toString());
        str1 = "";
        break;
        label186:
        localObject2 = "=";
        break label75;
        label193:
        if ("backslash".equals(paramMap))
        {
          localObject1 = zza.zzbjo;
          paramMap = new HashSet();
          a(paramMap, str1);
          a(paramMap, (String)localObject2);
          paramMap.remove(Character.valueOf('\\'));
          break label118;
        }
        m.a("Joiner: unsupported escape type: " + paramMap);
        return ag.a();
        int j = 1;
        localObject2 = c;
        int k = localObject2.length;
        int i = 0;
        while (i < k)
        {
          locala = localObject2[i];
          if (j == 0) {
            localStringBuilder.append(str1);
          }
          a(localStringBuilder, ag.a(locala), (zza)localObject1, paramMap);
          i += 1;
          j = 0;
        }
        i = 0;
        while (i < d.length)
        {
          if (i > 0) {
            localStringBuilder.append(str1);
          }
          String str2 = ag.a(d[i]);
          String str3 = ag.a(e[i]);
          a(localStringBuilder, str2, (zza)localObject1, paramMap);
          localStringBuilder.append((String)localObject2);
          a(localStringBuilder, str3, (zza)localObject1, paramMap);
          i += 1;
        }
      }
      label418:
      paramMap = null;
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  private static enum zza
  {
    private zza() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */