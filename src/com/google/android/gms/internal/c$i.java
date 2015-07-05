package com.google.android.gms.internal;

public final class c$i
  extends qq<i>
{
  private static volatile i[] go;
  public d.a gp;
  public c.d gq;
  public String name;
  
  public c$i()
  {
    p();
  }
  
  public static i[] o()
  {
    if (go == null) {}
    synchronized (qu.azg)
    {
      if (go == null) {
        go = new i[0];
      }
      return go;
    }
  }
  
  public void a(qp paramqp)
  {
    if (!name.equals("")) {
      paramqp.b(1, name);
    }
    if (gp != null) {
      paramqp.a(2, gp);
    }
    if (gq != null) {
      paramqp.a(3, gq);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int j = super.c();
    int i = j;
    if (!name.equals("")) {
      i = j + qp.j(1, name);
    }
    j = i;
    if (gp != null) {
      j = i + qp.c(2, gp);
    }
    i = j;
    if (gq != null) {
      i = j + qp.c(3, gq);
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
    label57:
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
          } while (!(paramObject instanceof i));
          paramObject = (i)paramObject;
          if (name != null) {
            break;
          }
          bool1 = bool2;
        } while (name != null);
        if (gp != null) {
          break label95;
        }
        bool1 = bool2;
      } while (gp != null);
      if (gq != null) {
        break label111;
      }
      bool1 = bool2;
    } while (gq != null);
    label95:
    label111:
    while (gq.equals(gq))
    {
      return a((qq)paramObject);
      if (name.equals(name)) {
        break;
      }
      return false;
      if (gp.equals(gp)) {
        break label57;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int k = 0;
    int i;
    int j;
    if (name == null)
    {
      i = 0;
      if (gp != null) {
        break label62;
      }
      j = 0;
      label20:
      if (gq != null) {
        break label73;
      }
    }
    for (;;)
    {
      return ((j + (i + 527) * 31) * 31 + k) * 31 + rQ();
      i = name.hashCode();
      break;
      label62:
      j = gp.hashCode();
      break label20;
      label73:
      k = gq.hashCode();
    }
  }
  
  public i j(qo paramqo)
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
      case 10: 
        name = paramqo.readString();
        break;
      case 18: 
        if (gp == null) {
          gp = new d.a();
        }
        paramqo.a(gp);
        break;
      case 26: 
        if (gq == null) {
          gq = new c.d();
        }
        paramqo.a(gq);
      }
    }
  }
  
  public i p()
  {
    name = "";
    gp = null;
    gq = null;
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */