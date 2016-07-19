package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;

@fv
public class x
{
  private final int a;
  private final int b;
  private final int c;
  private final ac d;
  private final Object e = new Object();
  private ArrayList<String> f = new ArrayList();
  private ArrayList<String> g = new ArrayList();
  private int h = 0;
  private int i = 0;
  private int j = 0;
  private int k;
  private String l = "";
  private String m = "";
  
  public x(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = new ac(paramInt4);
  }
  
  private String a(ArrayList<String> paramArrayList, int paramInt)
  {
    if (paramArrayList.isEmpty()) {
      paramArrayList = "";
    }
    Object localObject;
    do
    {
      return paramArrayList;
      localObject = new StringBuffer();
      paramArrayList = paramArrayList.iterator();
      do
      {
        if (!paramArrayList.hasNext()) {
          break;
        }
        ((StringBuffer)localObject).append((String)paramArrayList.next());
        ((StringBuffer)localObject).append(' ');
      } while (((StringBuffer)localObject).length() <= paramInt);
      ((StringBuffer)localObject).deleteCharAt(((StringBuffer)localObject).length() - 1);
      localObject = ((StringBuffer)localObject).toString();
      paramArrayList = (ArrayList<String>)localObject;
    } while (((String)localObject).length() < paramInt);
    return ((String)localObject).substring(0, paramInt);
  }
  
  private void c(String paramString, boolean paramBoolean)
  {
    if ((paramString == null) || (paramString.length() < c)) {
      return;
    }
    synchronized (e)
    {
      f.add(paramString);
      h += paramString.length();
      if (paramBoolean) {
        g.add(paramString);
      }
      return;
    }
  }
  
  int a(int paramInt1, int paramInt2)
  {
    return a * paramInt1 + b * paramInt2;
  }
  
  public void a(int paramInt)
  {
    i = paramInt;
  }
  
  public void a(String arg1, boolean paramBoolean)
  {
    c(???, paramBoolean);
    synchronized (e)
    {
      if (j < 0) {
        gz.a("ActivityContent: negative number of WebViews.");
      }
      g();
      return;
    }
  }
  
  public boolean a()
  {
    for (;;)
    {
      synchronized (e)
      {
        if (j == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public String b()
  {
    return l;
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    c(paramString, paramBoolean);
  }
  
  public String c()
  {
    return m;
  }
  
  public void d()
  {
    synchronized (e)
    {
      k -= 100;
      return;
    }
  }
  
  public void e()
  {
    synchronized (e)
    {
      j -= 1;
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof x)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (x)paramObject;
    } while ((((x)paramObject).b() == null) || (!((x)paramObject).b().equals(b())));
    return true;
  }
  
  public void f()
  {
    synchronized (e)
    {
      j += 1;
      return;
    }
  }
  
  public void g()
  {
    synchronized (e)
    {
      int n = a(h, i);
      if (n > k)
      {
        k = n;
        l = d.a(f);
        m = d.a(g);
      }
      return;
    }
  }
  
  public int h()
  {
    return k;
  }
  
  public int hashCode()
  {
    return b().hashCode();
  }
  
  int i()
  {
    return h;
  }
  
  public String toString()
  {
    return "ActivityContent fetchId: " + i + " score:" + k + " total_length:" + h + "\n text: " + a(f, 100) + "\n viewableText" + a(g, 100) + "\n signture: " + l + "\n viewableSignture: " + m;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */