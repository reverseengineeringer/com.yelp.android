package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class aj
{
  private final Set<String> art;
  private final String aru;
  
  public aj(String paramString, String... paramVarArgs)
  {
    aru = paramString;
    art = new HashSet(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramString = paramVarArgs[i];
      art.add(paramString);
      i += 1;
    }
  }
  
  public abstract d.a B(Map<String, d.a> paramMap);
  
  boolean a(Set<String> paramSet)
  {
    return paramSet.containsAll(art);
  }
  
  public String pI()
  {
    return aru;
  }
  
  public Set<String> pJ()
  {
    return art;
  }
  
  public abstract boolean pe();
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */