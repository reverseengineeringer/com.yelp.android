package com.comscore.utils;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class m
{
  protected SharedPreferences a;
  protected final HashMap<String, String> b = new HashMap();
  protected final HashSet<String> c = new HashSet();
  protected final Object d = new Object();
  protected final Object e = new Object();
  protected long f = -1L;
  protected boolean g = false;
  private final Runnable h = new s(this);
  
  public m(Context paramContext)
  {
    this(paramContext, "cSPrefs");
  }
  
  public m(Context paramContext, String paramString)
  {
    a(paramContext, paramString);
  }
  
  public Boolean a(String paramString)
  {
    synchronized (e)
    {
      if (g)
      {
        boolean bool = b.containsKey(paramString);
        return Boolean.valueOf(bool);
      }
      return Boolean.valueOf(false);
    }
  }
  
  protected void a()
  {
    synchronized (d)
    {
      if (g)
      {
        if (f < 0L)
        {
          f = (System.currentTimeMillis() + 300L);
          new Thread(h).start();
        }
      }
      else {
        return;
      }
      f = (System.currentTimeMillis() + 300L);
      d.notify();
    }
  }
  
  protected void a(Context paramContext, String paramString)
  {
    synchronized (e)
    {
      synchronized (d)
      {
        a = paramContext.getSharedPreferences(paramString, 0);
        paramContext = a.getAll().entrySet().iterator();
        while (paramContext.hasNext())
        {
          paramString = (Map.Entry)paramContext.next();
          if ((paramString.getValue() instanceof String)) {
            b.put(paramString.getKey(), (String)paramString.getValue());
          }
        }
      }
    }
    g = true;
  }
  
  public void a(String paramString, long paramLong)
  {
    String str;
    synchronized (e)
    {
      if (g)
      {
        if (!a(paramString).booleanValue()) {
          break label80;
        }
        str = (String)b.get(paramString);
      }
    }
    try
    {
      l = Long.parseLong(str);
      b.put(paramString, Long.toString(l + paramLong));
      c.add(paramString);
      a();
      for (;;)
      {
        return;
        label80:
        a(paramString, Long.toString(paramLong));
      }
      paramString = finally;
      throw paramString;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        long l = 0L;
      }
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    synchronized (e)
    {
      if (g)
      {
        String str = (String)b.get(paramString1);
        if ((!b.containsKey(paramString1)) || ((str != paramString2) && ((paramString2 == null) || (str == null) || (!str.equals(paramString2)))))
        {
          b.put(paramString1, paramString2);
          c.add(paramString1);
          a();
        }
      }
      return;
    }
  }
  
  public String b(String paramString)
  {
    synchronized (e)
    {
      if ((g) && (a(paramString).booleanValue()))
      {
        paramString = (String)b.get(paramString);
        return paramString;
      }
      return "";
    }
  }
  
  protected void b()
  {
    for (;;)
    {
      long l;
      synchronized (d)
      {
        l = f - System.currentTimeMillis();
        if (l <= 0L) {
          return;
        }
      }
      try
      {
        d.wait(l);
        continue;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
    }
  }
  
  /* Error */
  protected void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 46	com/comscore/utils/m:e	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 44	com/comscore/utils/m:d	Ljava/lang/Object;
    //   11: astore_2
    //   12: aload_2
    //   13: monitorenter
    //   14: aload_0
    //   15: ldc2_w 47
    //   18: putfield 50	com/comscore/utils/m:f	J
    //   21: aload_2
    //   22: monitorexit
    //   23: aload_0
    //   24: getfield 99	com/comscore/utils/m:a	Landroid/content/SharedPreferences;
    //   27: invokeinterface 187 1 0
    //   32: astore_2
    //   33: aload_0
    //   34: getfield 42	com/comscore/utils/m:c	Ljava/util/HashSet;
    //   37: invokevirtual 188	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   40: astore_3
    //   41: aload_3
    //   42: invokeinterface 123 1 0
    //   47: ifeq +72 -> 119
    //   50: aload_3
    //   51: invokeinterface 127 1 0
    //   56: checkcast 134	java/lang/String
    //   59: astore 4
    //   61: aload_0
    //   62: getfield 37	com/comscore/utils/m:b	Ljava/util/HashMap;
    //   65: aload 4
    //   67: invokevirtual 66	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   70: ifeq +37 -> 107
    //   73: aload_2
    //   74: aload 4
    //   76: aload_0
    //   77: getfield 37	com/comscore/utils/m:b	Ljava/util/HashMap;
    //   80: aload 4
    //   82: invokevirtual 153	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   85: checkcast 134	java/lang/String
    //   88: invokeinterface 194 3 0
    //   93: pop
    //   94: goto -53 -> 41
    //   97: astore_2
    //   98: aload_1
    //   99: monitorexit
    //   100: aload_2
    //   101: athrow
    //   102: astore_3
    //   103: aload_2
    //   104: monitorexit
    //   105: aload_3
    //   106: athrow
    //   107: aload_2
    //   108: aload 4
    //   110: invokeinterface 198 2 0
    //   115: pop
    //   116: goto -75 -> 41
    //   119: aload_2
    //   120: invokeinterface 201 1 0
    //   125: pop
    //   126: aload_0
    //   127: getfield 42	com/comscore/utils/m:c	Ljava/util/HashSet;
    //   130: invokevirtual 204	java/util/HashSet:clear	()V
    //   133: aload_1
    //   134: monitorexit
    //   135: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	this	m
    //   4	130	1	localObject1	Object
    //   97	23	2	localObject3	Object
    //   40	11	3	localIterator	Iterator
    //   102	4	3	localObject4	Object
    //   59	50	4	str	String
    // Exception table:
    //   from	to	target	type
    //   7	14	97	finally
    //   23	41	97	finally
    //   41	94	97	finally
    //   98	100	97	finally
    //   105	107	97	finally
    //   107	116	97	finally
    //   119	135	97	finally
    //   14	23	102	finally
    //   103	105	102	finally
  }
  
  public void c(String paramString)
  {
    synchronized (e)
    {
      if ((g) && (a(paramString).booleanValue()))
      {
        b.remove(paramString);
        c.add(paramString);
        a();
      }
      return;
    }
  }
  
  public void d()
  {
    synchronized (e)
    {
      g = false;
      for (;;)
      {
        long l = f;
        if (l < 0L) {
          break;
        }
        try
        {
          e.wait(100L);
        }
        catch (InterruptedException localInterruptedException) {}
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */