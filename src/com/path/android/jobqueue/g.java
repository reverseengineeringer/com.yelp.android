package com.path.android.jobqueue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;

public class g
{
  private ArrayList<String> a;
  private final TreeSet<String> b = new TreeSet();
  private final Map<String, Long> c = new HashMap();
  private long d = Long.MAX_VALUE;
  
  private long d()
  {
    Iterator localIterator = c.values().iterator();
    long l = Long.MAX_VALUE;
    if (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      if (localLong.longValue() >= l) {
        break label60;
      }
      l = localLong.longValue();
    }
    label60:
    for (;;)
    {
      break;
      return l;
    }
  }
  
  public Collection<String> a()
  {
    for (;;)
    {
      try
      {
        long l = c();
        if ((a == null) || (l > d))
        {
          if (c.isEmpty())
          {
            a = new ArrayList(b);
            d = Long.MAX_VALUE;
          }
        }
        else
        {
          localObject = a;
          return (Collection<String>)localObject;
        }
        Object localObject = new TreeSet(b);
        Iterator localIterator = c.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break label178;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (((Long)localEntry.getValue()).longValue() > l)
        {
          if (((TreeSet)localObject).contains(localEntry.getKey())) {
            continue;
          }
          ((TreeSet)localObject).add(localEntry.getKey());
          continue;
        }
        localIterator.remove();
      }
      finally {}
      continue;
      label178:
      a = new ArrayList(localCollection);
      d = d();
    }
  }
  
  public void a(String paramString)
  {
    try
    {
      if (b.add(paramString)) {
        a = null;
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  public void a(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 29	com/path/android/jobqueue/g:c	Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface 112 2 0
    //   12: checkcast 59	java/lang/Long
    //   15: astore 6
    //   17: aload 6
    //   19: ifnull +20 -> 39
    //   22: aload 6
    //   24: invokevirtual 62	java/lang/Long:longValue	()J
    //   27: lstore 4
    //   29: lload 4
    //   31: lload_2
    //   32: lcmp
    //   33: ifle +6 -> 39
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    //   39: aload_0
    //   40: getfield 29	com/path/android/jobqueue/g:c	Ljava/util/Map;
    //   43: aload_1
    //   44: lload_2
    //   45: invokestatic 116	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   48: invokeinterface 120 3 0
    //   53: pop
    //   54: aload_0
    //   55: aload_0
    //   56: invokespecial 104	com/path/android/jobqueue/g:d	()J
    //   59: putfield 33	com/path/android/jobqueue/g:d	J
    //   62: aload_0
    //   63: aconst_null
    //   64: putfield 66	com/path/android/jobqueue/g:a	Ljava/util/ArrayList;
    //   67: goto -31 -> 36
    //   70: astore_1
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	g
    //   0	75	1	paramString	String
    //   0	75	2	paramLong	long
    //   27	3	4	l	long
    //   15	8	6	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   2	17	70	finally
    //   22	29	70	finally
    //   39	67	70	finally
  }
  
  public Long b()
  {
    if (d == Long.MAX_VALUE) {
      return null;
    }
    return Long.valueOf(d);
  }
  
  public void b(String paramString)
  {
    try
    {
      if (b.remove(paramString)) {
        a = null;
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  protected long c()
  {
    return System.nanoTime();
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */