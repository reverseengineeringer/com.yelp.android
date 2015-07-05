package com.google.android.gms.internal;

public final class c$a
  extends qq<a>
{
  public int fn;
  public int fo;
  public int level;
  
  public c$a()
  {
    b();
  }
  
  public a a(qo paramqo)
  {
    for (;;)
    {
      int i = paramqo.rz();
      switch (i)
      {
      default: 
        if (a(paramqo, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        i = paramqo.rC();
        switch (i)
        {
        default: 
          break;
        case 1: 
        case 2: 
        case 3: 
          level = i;
        }
        break;
      case 16: 
        fn = paramqo.rC();
        break;
      case 24: 
        fo = paramqo.rC();
      }
    }
  }
  
  public void a(qp paramqp)
  {
    if (level != 1) {
      paramqp.t(1, level);
    }
    if (fn != 0) {
      paramqp.t(2, fn);
    }
    if (fo != 0) {
      paramqp.t(3, fo);
    }
    super.a(paramqp);
  }
  
  public a b()
  {
    level = 1;
    fn = 0;
    fo = 0;
    ayW = null;
    azh = -1;
    return this;
  }
  
  protected int c()
  {
    int j = super.c();
    int i = j;
    if (level != 1) {
      i = j + qp.v(1, level);
    }
    j = i;
    if (fn != 0) {
      j = i + qp.v(2, fn);
    }
    i = j;
    if (fo != 0) {
      i = j + qp.v(3, fo);
    }
    return i;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof a));
          paramObject = (a)paramObject;
          bool1 = bool2;
        } while (level != level);
        bool1 = bool2;
      } while (fn != fn);
      bool1 = bool2;
    } while (fo != fo);
    return a((qq)paramObject);
  }
  
  public int hashCode()
  {
    return (((level + 527) * 31 + fn) * 31 + fo) * 31 + rQ();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */