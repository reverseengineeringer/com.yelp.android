package com.google.android.gms.internal;

public final class c$j
  extends qq<j>
{
  public c.i[] gr;
  public c.f gs;
  public String gt;
  
  public c$j()
  {
    q();
  }
  
  public static j b(byte[] paramArrayOfByte)
  {
    return (j)qw.a(new j(), paramArrayOfByte);
  }
  
  public void a(qp paramqp)
  {
    if ((gr != null) && (gr.length > 0))
    {
      int i = 0;
      while (i < gr.length)
      {
        c.i locali = gr[i];
        if (locali != null) {
          paramqp.a(1, locali);
        }
        i += 1;
      }
    }
    if (gs != null) {
      paramqp.a(2, gs);
    }
    if (!gt.equals("")) {
      paramqp.b(3, gt);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int i = super.c();
    int j = i;
    if (gr != null)
    {
      j = i;
      if (gr.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= gr.length) {
            break;
          }
          c.i locali = gr[k];
          j = i;
          if (locali != null) {
            j = i + qp.c(1, locali);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (gs != null) {
      i = j + qp.c(2, gs);
    }
    j = i;
    if (!gt.equals("")) {
      j = i + qp.j(3, gt);
    }
    return j;
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
          } while (!(paramObject instanceof j));
          paramObject = (j)paramObject;
          bool1 = bool2;
        } while (!qu.equals(gr, gr));
        if (gs != null) {
          break;
        }
        bool1 = bool2;
      } while (gs != null);
      if (gt != null) {
        break label95;
      }
      bool1 = bool2;
    } while (gt != null);
    label95:
    while (gt.equals(gt))
    {
      return a((qq)paramObject);
      if (gs.equals(gs)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = qu.hashCode(gr);
    int i;
    if (gs == null)
    {
      i = 0;
      if (gt != null) {
        break label61;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + rQ();
      i = gs.hashCode();
      break;
      label61:
      j = gt.hashCode();
    }
  }
  
  public j k(qo paramqo)
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
        int j = qz.b(paramqo, 10);
        if (gr == null) {}
        c.i[] arrayOfi;
        for (i = 0;; i = gr.length)
        {
          arrayOfi = new c.i[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gr, 0, arrayOfi, 0, i);
            j = i;
          }
          while (j < arrayOfi.length - 1)
          {
            arrayOfi[j] = new c.i();
            paramqo.a(arrayOfi[j]);
            paramqo.rz();
            j += 1;
          }
        }
        arrayOfi[j] = new c.i();
        paramqo.a(arrayOfi[j]);
        gr = arrayOfi;
        break;
      case 18: 
        if (gs == null) {
          gs = new c.f();
        }
        paramqo.a(gs);
        break;
      case 26: 
        gt = paramqo.readString();
      }
    }
  }
  
  public j q()
  {
    gr = c.i.o();
    gs = null;
    gt = "";
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */