package com.google.android.gms.internal;

public final class c$c
  extends qq<c>
{
  private static volatile c[] fu;
  public String fv;
  public long fw;
  public long fx;
  public boolean fy;
  public long fz;
  
  public c$c()
  {
    g();
  }
  
  public static c[] f()
  {
    if (fu == null) {}
    synchronized (qu.azg)
    {
      if (fu == null) {
        fu = new c[0];
      }
      return fu;
    }
  }
  
  public void a(qp paramqp)
  {
    if (!fv.equals("")) {
      paramqp.b(1, fv);
    }
    if (fw != 0L) {
      paramqp.b(2, fw);
    }
    if (fx != 2147483647L) {
      paramqp.b(3, fx);
    }
    if (fy) {
      paramqp.b(4, fy);
    }
    if (fz != 0L) {
      paramqp.b(5, fz);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int j = super.c();
    int i = j;
    if (!fv.equals("")) {
      i = j + qp.j(1, fv);
    }
    j = i;
    if (fw != 0L) {
      j = i + qp.d(2, fw);
    }
    i = j;
    if (fx != 2147483647L) {
      i = j + qp.d(3, fx);
    }
    j = i;
    if (fy) {
      j = i + qp.c(4, fy);
    }
    i = j;
    if (fz != 0L) {
      i = j + qp.d(5, fz);
    }
    return i;
  }
  
  public c d(qo paramqo)
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
        fv = paramqo.readString();
        break;
      case 16: 
        fw = paramqo.rB();
        break;
      case 24: 
        fx = paramqo.rB();
        break;
      case 32: 
        fy = paramqo.rD();
        break;
      case 40: 
        fz = paramqo.rB();
      }
    }
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
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof c));
      paramObject = (c)paramObject;
      if (fv != null) {
        break;
      }
      bool1 = bool2;
    } while (fv != null);
    while (fv.equals(fv))
    {
      bool1 = bool2;
      if (fw != fw) {
        break;
      }
      bool1 = bool2;
      if (fx != fx) {
        break;
      }
      bool1 = bool2;
      if (fy != fy) {
        break;
      }
      bool1 = bool2;
      if (fz != fz) {
        break;
      }
      return a((qq)paramObject);
    }
    return false;
  }
  
  public c g()
  {
    fv = "";
    fw = 0L;
    fx = 2147483647L;
    fy = false;
    fz = 0L;
    ayW = null;
    azh = -1;
    return this;
  }
  
  public int hashCode()
  {
    int i;
    int k;
    int m;
    if (fv == null)
    {
      i = 0;
      k = (int)(fw ^ fw >>> 32);
      m = (int)(fx ^ fx >>> 32);
      if (!fy) {
        break label107;
      }
    }
    label107:
    for (int j = 1231;; j = 1237)
    {
      return ((j + (((i + 527) * 31 + k) * 31 + m) * 31) * 31 + (int)(fz ^ fz >>> 32)) * 31 + rQ();
      i = fv.hashCode();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */