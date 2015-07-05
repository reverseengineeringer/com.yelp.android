package com.google.android.gms.internal;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class kr
{
  private void a(StringBuilder paramStringBuilder, kr.a parama, Object paramObject)
  {
    if (parama.hI() == 11)
    {
      paramStringBuilder.append(((kr)parama.hS().cast(paramObject)).toString());
      return;
    }
    if (parama.hI() == 7)
    {
      paramStringBuilder.append("\"");
      paramStringBuilder.append(li.bh((String)paramObject));
      paramStringBuilder.append("\"");
      return;
    }
    paramStringBuilder.append(paramObject);
  }
  
  private void a(StringBuilder paramStringBuilder, kr.a parama, ArrayList<Object> paramArrayList)
  {
    paramStringBuilder.append("[");
    int i = 0;
    int j = paramArrayList.size();
    while (i < j)
    {
      if (i > 0) {
        paramStringBuilder.append(",");
      }
      Object localObject = paramArrayList.get(i);
      if (localObject != null) {
        a(paramStringBuilder, parama, localObject);
      }
      i += 1;
    }
    paramStringBuilder.append("]");
  }
  
  protected <O, I> I a(kr.a<I, O> parama, Object paramObject)
  {
    Object localObject = paramObject;
    if (kr.a.c(parama) != null) {
      localObject = parama.convertBack(paramObject);
    }
    return (I)localObject;
  }
  
  protected boolean a(kr.a parama)
  {
    if (parama.hJ() == 11)
    {
      if (parama.hP()) {
        return bf(parama.hQ());
      }
      return be(parama.hQ());
    }
    return bd(parama.hQ());
  }
  
  protected Object b(kr.a parama)
  {
    String str = parama.hQ();
    if (parama.hS() != null)
    {
      boolean bool;
      if (bc(parama.hQ()) == null)
      {
        bool = true;
        jx.a(bool, "Concrete field shouldn't be value object: %s", new Object[] { parama.hQ() });
        if (!parama.hP()) {
          break label71;
        }
      }
      label71:
      for (parama = hM();; parama = hL())
      {
        if (parama == null) {
          break label79;
        }
        return parama.get(str);
        bool = false;
        break;
      }
      try
      {
        label79:
        parama = "get" + Character.toUpperCase(str.charAt(0)) + str.substring(1);
        parama = getClass().getMethod(parama, new Class[0]).invoke(this, new Object[0]);
        return parama;
      }
      catch (Exception parama)
      {
        throw new RuntimeException(parama);
      }
    }
    return bc(parama.hQ());
  }
  
  protected abstract Object bc(String paramString);
  
  protected abstract boolean bd(String paramString);
  
  protected boolean be(String paramString)
  {
    throw new UnsupportedOperationException("Concrete types not supported");
  }
  
  protected boolean bf(String paramString)
  {
    throw new UnsupportedOperationException("Concrete type arrays not supported");
  }
  
  public abstract HashMap<String, kr.a<?, ?>> hK();
  
  public HashMap<String, Object> hL()
  {
    return null;
  }
  
  public HashMap<String, Object> hM()
  {
    return null;
  }
  
  public String toString()
  {
    HashMap localHashMap = hK();
    StringBuilder localStringBuilder = new StringBuilder(100);
    Iterator localIterator = localHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      kr.a locala = (kr.a)localHashMap.get(str);
      if (a(locala))
      {
        Object localObject = a(locala, b(locala));
        if (localStringBuilder.length() == 0) {
          localStringBuilder.append("{");
        }
        for (;;)
        {
          localStringBuilder.append("\"").append(str).append("\":");
          if (localObject != null) {
            break label135;
          }
          localStringBuilder.append("null");
          break;
          localStringBuilder.append(",");
        }
        label135:
        switch (locala.hJ())
        {
        default: 
          if (locala.hO()) {
            a(localStringBuilder, locala, (ArrayList)localObject);
          }
          break;
        case 8: 
          localStringBuilder.append("\"").append(lb.d((byte[])localObject)).append("\"");
          break;
        case 9: 
          localStringBuilder.append("\"").append(lb.e((byte[])localObject)).append("\"");
          break;
        case 10: 
          lj.a(localStringBuilder, (HashMap)localObject);
          continue;
          a(localStringBuilder, locala, localObject);
        }
      }
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.append("}");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("{}");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */