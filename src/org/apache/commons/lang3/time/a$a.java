package org.apache.commons.lang3.time;

import org.apache.commons.lang3.b;

class a$a
{
  private final Object a;
  private int b;
  
  a$a(Object paramObject)
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

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */