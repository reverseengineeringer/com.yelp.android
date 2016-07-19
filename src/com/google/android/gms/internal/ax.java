package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.s;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@fv
public class ax
{
  boolean a;
  private final List<au> b = new LinkedList();
  private final Map<String, String> c = new LinkedHashMap();
  private final Object d = new Object();
  private String e;
  private au f;
  private ax g;
  
  public ax(boolean paramBoolean, String paramString1, String paramString2)
  {
    a = paramBoolean;
    c.put("action", paramString1);
    c.put("ad_format", paramString2);
  }
  
  public au a()
  {
    return a(s.i().b());
  }
  
  public au a(long paramLong)
  {
    if (!a) {
      return null;
    }
    return new au(paramLong, null, null);
  }
  
  public void a(ax paramax)
  {
    synchronized (d)
    {
      g = paramax;
      return;
    }
  }
  
  public void a(String paramString)
  {
    if (!a) {
      return;
    }
    synchronized (d)
    {
      e = paramString;
      return;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((!a) || (TextUtils.isEmpty(paramString2))) {}
    aq localaq;
    do
    {
      return;
      localaq = s.h().e();
    } while (localaq == null);
    synchronized (d)
    {
      localaq.a(paramString1).a(c, paramString1, paramString2);
      return;
    }
  }
  
  public boolean a(au paramau, long paramLong, String... paramVarArgs)
  {
    synchronized (d)
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        au localau = new au(paramLong, paramVarArgs[i], paramau);
        b.add(localau);
        i += 1;
      }
      return true;
    }
  }
  
  public boolean a(au paramau, String... paramVarArgs)
  {
    if ((!a) || (paramau == null)) {
      return false;
    }
    return a(paramau, s.i().b(), paramVarArgs);
  }
  
  public void b()
  {
    synchronized (d)
    {
      f = a();
      return;
    }
  }
  
  public String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    synchronized (d)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        au localau = (au)localIterator.next();
        long l1 = localau.a();
        String str2 = localau.b();
        localau = localau.c();
        if ((localau != null) && (l1 > 0L))
        {
          long l2 = localau.a();
          localStringBuilder.append(str2).append('.').append(l1 - l2).append(',');
        }
      }
    }
    b.clear();
    if (!TextUtils.isEmpty(e)) {
      ((StringBuilder)localObject2).append(e);
    }
    for (;;)
    {
      String str1 = ((StringBuilder)localObject2).toString();
      return str1;
      if (str1.length() > 0) {
        str1.setLength(str1.length() - 1);
      }
    }
  }
  
  Map<String, String> d()
  {
    synchronized (d)
    {
      Object localObject2 = s.h().e();
      if ((localObject2 == null) || (g == null))
      {
        localObject2 = c;
        return (Map<String, String>)localObject2;
      }
      localObject2 = ((aq)localObject2).a(c, g.d());
      return (Map<String, String>)localObject2;
    }
  }
  
  public au e()
  {
    synchronized (d)
    {
      au localau = f;
      return localau;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */