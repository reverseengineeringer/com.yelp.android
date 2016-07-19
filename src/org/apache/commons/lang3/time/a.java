package org.apache.commons.lang3.time;

import java.util.ArrayList;
import org.apache.commons.lang3.b;
import org.apache.commons.lang3.c;

public class a
{
  static final Object a = "y";
  static final Object b = "M";
  static final Object c = "d";
  static final Object d = "H";
  static final Object e = "m";
  static final Object f = "s";
  static final Object g = "S";
  
  public static String a(long paramLong)
  {
    return a(paramLong, "HH:mm:ss.SSS");
  }
  
  public static String a(long paramLong, String paramString)
  {
    return a(paramLong, paramString, true);
  }
  
  public static String a(long paramLong, String paramString, boolean paramBoolean)
  {
    c.a(0L, Long.MAX_VALUE, paramLong, "durationMillis must not be negative");
    paramString = a(paramString);
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
    long l5 = 0L;
    long l1 = paramLong;
    if (a.a(paramString, c))
    {
      l2 = paramLong / 86400000L;
      l1 = paramLong - 86400000L * l2;
    }
    paramLong = l1;
    if (a.a(paramString, d))
    {
      l3 = l1 / 3600000L;
      paramLong = l1 - 3600000L * l3;
    }
    l1 = paramLong;
    if (a.a(paramString, e))
    {
      l4 = paramLong / 60000L;
      l1 = paramLong - 60000L * l4;
    }
    if (a.a(paramString, f))
    {
      paramLong = l1 / 1000L;
      l1 -= 1000L * paramLong;
    }
    for (;;)
    {
      return a(paramString, 0L, 0L, l2, l3, l4, paramLong, l1, paramBoolean);
      paramLong = l5;
    }
  }
  
  private static String a(long paramLong, boolean paramBoolean, int paramInt)
  {
    String str2 = Long.toString(paramLong);
    String str1 = str2;
    if (paramBoolean) {
      str1 = b.a(str2, paramInt, '0');
    }
    return str1;
  }
  
  static String a(a[] paramArrayOfa, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, long paramLong7, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int m = paramArrayOfa.length;
    int k = 0;
    int j = 0;
    if (j < m)
    {
      a locala = paramArrayOfa[j];
      Object localObject = locala.c();
      int n = locala.b();
      int i;
      if ((localObject instanceof StringBuilder))
      {
        localStringBuilder.append(localObject.toString());
        i = k;
      }
      label254:
      do
      {
        for (;;)
        {
          j += 1;
          k = i;
          break;
          if (localObject == a)
          {
            localStringBuilder.append(a(paramLong1, paramBoolean, n));
            i = 0;
          }
          else if (localObject == b)
          {
            localStringBuilder.append(a(paramLong2, paramBoolean, n));
            i = 0;
          }
          else if (localObject == c)
          {
            localStringBuilder.append(a(paramLong3, paramBoolean, n));
            i = 0;
          }
          else if (localObject == d)
          {
            localStringBuilder.append(a(paramLong4, paramBoolean, n));
            i = 0;
          }
          else if (localObject == e)
          {
            localStringBuilder.append(a(paramLong5, paramBoolean, n));
            i = 0;
          }
          else
          {
            if (localObject != f) {
              break label254;
            }
            localStringBuilder.append(a(paramLong6, paramBoolean, n));
            i = 1;
          }
        }
        i = k;
      } while (localObject != g);
      if (k != 0) {
        if (paramBoolean)
        {
          i = Math.max(3, n);
          label284:
          localStringBuilder.append(a(paramLong7, true, i));
        }
      }
      for (;;)
      {
        i = 0;
        break;
        i = 3;
        break label284;
        localStringBuilder.append(a(paramLong7, paramBoolean, n));
      }
    }
    return localStringBuilder.toString();
  }
  
  static a[] a(String paramString)
  {
    ArrayList localArrayList = new ArrayList(paramString.length());
    int j = 0;
    Object localObject3 = null;
    Object localObject2 = null;
    int i = 0;
    if (j < paramString.length())
    {
      char c1 = paramString.charAt(j);
      int k;
      Object localObject4;
      if ((i != 0) && (c1 != '\''))
      {
        ((StringBuilder)localObject2).append(c1);
        k = i;
        localObject4 = localObject3;
      }
      Object localObject1;
      label199:
      do
      {
        j += 1;
        localObject3 = localObject4;
        i = k;
        break;
        switch (c1)
        {
        default: 
          localObject4 = localObject2;
          if (localObject2 == null)
          {
            localObject4 = new StringBuilder();
            localArrayList.add(new a(localObject4));
          }
          ((StringBuilder)localObject4).append(c1);
          localObject1 = null;
          localObject2 = localObject4;
          localObject4 = localObject3;
          k = i;
        }
      } while (localObject1 == null);
      if ((localObject3 != null) && (((a)localObject3).c() == localObject1)) {
        ((a)localObject3).a();
      }
      for (;;)
      {
        localObject2 = null;
        localObject4 = localObject3;
        k = i;
        break;
        if (i != 0)
        {
          localObject1 = null;
          localObject2 = null;
          i = 0;
          break label199;
        }
        localObject2 = new StringBuilder();
        localArrayList.add(new a(localObject2));
        i = 1;
        localObject1 = null;
        break label199;
        localObject1 = a;
        break label199;
        localObject1 = b;
        break label199;
        localObject1 = c;
        break label199;
        localObject1 = d;
        break label199;
        localObject1 = e;
        break label199;
        localObject1 = f;
        break label199;
        localObject1 = g;
        break label199;
        localObject3 = new a(localObject1);
        localArrayList.add(localObject3);
      }
    }
    if (i != 0) {
      throw new IllegalArgumentException("Unmatched quote in format: " + paramString);
    }
    return (a[])localArrayList.toArray(new a[localArrayList.size()]);
  }
  
  static class a
  {
    private final Object a;
    private int b;
    
    a(Object paramObject)
    {
      a = paramObject;
      b = 1;
    }
    
    static boolean a(a[] paramArrayOfa, Object paramObject)
    {
      boolean bool2 = false;
      int j = paramArrayOfa.length;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          if (paramArrayOfa[i].c() == paramObject) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 1;
      }
    }
    
    void a()
    {
      b += 1;
    }
    
    int b()
    {
      return b;
    }
    
    Object c()
    {
      return a;
    }
    
    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
        if (a.getClass() == a.getClass()) {
          break label31;
        }
      }
      label31:
      do
      {
        do
        {
          return false;
        } while (b != b);
        if ((a instanceof StringBuilder)) {
          return a.toString().equals(a.toString());
        }
        if ((a instanceof Number)) {
          return a.equals(a);
        }
      } while (a != a);
      return true;
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
    
    public String toString()
    {
      return b.a(a.toString(), b);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */