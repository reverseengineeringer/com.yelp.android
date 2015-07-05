package com.google.android.gms.internal;

public final class c$h
  extends qq<h>
{
  public static final qr<d.a, h> gf = qr.a(11, h.class, 810);
  private static final h[] gg = new h[0];
  public int[] gh;
  public int[] gi;
  public int[] gj;
  public int gk;
  public int[] gl;
  public int gm;
  public int gn;
  
  public c$h()
  {
    n();
  }
  
  public void a(qp paramqp)
  {
    int j = 0;
    int i;
    if ((gh != null) && (gh.length > 0))
    {
      i = 0;
      while (i < gh.length)
      {
        paramqp.t(1, gh[i]);
        i += 1;
      }
    }
    if ((gi != null) && (gi.length > 0))
    {
      i = 0;
      while (i < gi.length)
      {
        paramqp.t(2, gi[i]);
        i += 1;
      }
    }
    if ((gj != null) && (gj.length > 0))
    {
      i = 0;
      while (i < gj.length)
      {
        paramqp.t(3, gj[i]);
        i += 1;
      }
    }
    if (gk != 0) {
      paramqp.t(4, gk);
    }
    if ((gl != null) && (gl.length > 0))
    {
      i = j;
      while (i < gl.length)
      {
        paramqp.t(5, gl[i]);
        i += 1;
      }
    }
    if (gm != 0) {
      paramqp.t(6, gm);
    }
    if (gn != 0) {
      paramqp.t(7, gn);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int m = 0;
    int k = super.c();
    int i;
    if ((gh != null) && (gh.length > 0))
    {
      i = 0;
      j = 0;
      while (i < gh.length)
      {
        j += qp.gZ(gh[i]);
        i += 1;
      }
    }
    for (int j = k + j + gh.length * 1;; j = k)
    {
      i = j;
      if (gi != null)
      {
        i = j;
        if (gi.length > 0)
        {
          i = 0;
          k = 0;
          while (i < gi.length)
          {
            k += qp.gZ(gi[i]);
            i += 1;
          }
          i = j + k + gi.length * 1;
        }
      }
      j = i;
      if (gj != null)
      {
        j = i;
        if (gj.length > 0)
        {
          j = 0;
          k = 0;
          while (j < gj.length)
          {
            k += qp.gZ(gj[j]);
            j += 1;
          }
          j = i + k + gj.length * 1;
        }
      }
      i = j;
      if (gk != 0) {
        i = j + qp.v(4, gk);
      }
      j = i;
      if (gl != null)
      {
        j = i;
        if (gl.length > 0)
        {
          k = 0;
          j = m;
          while (j < gl.length)
          {
            k += qp.gZ(gl[j]);
            j += 1;
          }
          j = i + k + gl.length * 1;
        }
      }
      i = j;
      if (gm != 0) {
        i = j + qp.v(6, gm);
      }
      j = i;
      if (gn != 0) {
        j = i + qp.v(7, gn);
      }
      return j;
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
        do
        {
          do
          {
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
                  } while (!(paramObject instanceof h));
                  paramObject = (h)paramObject;
                  bool1 = bool2;
                } while (!qu.equals(gh, gh));
                bool1 = bool2;
              } while (!qu.equals(gi, gi));
              bool1 = bool2;
            } while (!qu.equals(gj, gj));
            bool1 = bool2;
          } while (gk != gk);
          bool1 = bool2;
        } while (!qu.equals(gl, gl));
        bool1 = bool2;
      } while (gm != gm);
      bool1 = bool2;
    } while (gn != gn);
    return a((qq)paramObject);
  }
  
  public int hashCode()
  {
    return (((((((qu.hashCode(gh) + 527) * 31 + qu.hashCode(gi)) * 31 + qu.hashCode(gj)) * 31 + gk) * 31 + qu.hashCode(gl)) * 31 + gm) * 31 + gn) * 31 + rQ();
  }
  
  public h i(qo paramqo)
  {
    for (;;)
    {
      int i = paramqo.rz();
      int j;
      int[] arrayOfInt;
      int k;
      switch (i)
      {
      default: 
        if (a(paramqo, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        j = qz.b(paramqo, 8);
        if (gh == null) {}
        for (i = 0;; i = gh.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gh, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length - 1)
          {
            arrayOfInt[j] = paramqo.rC();
            paramqo.rz();
            j += 1;
          }
        }
        arrayOfInt[j] = paramqo.rC();
        gh = arrayOfInt;
        break;
      case 10: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (gh == null) {}
        for (i = 0;; i = gh.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gh, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        gh = arrayOfInt;
        paramqo.gT(k);
        break;
      case 16: 
        j = qz.b(paramqo, 16);
        if (gi == null) {}
        for (i = 0;; i = gi.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gi, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length - 1)
          {
            arrayOfInt[j] = paramqo.rC();
            paramqo.rz();
            j += 1;
          }
        }
        arrayOfInt[j] = paramqo.rC();
        gi = arrayOfInt;
        break;
      case 18: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (gi == null) {}
        for (i = 0;; i = gi.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gi, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        gi = arrayOfInt;
        paramqo.gT(k);
        break;
      case 24: 
        j = qz.b(paramqo, 24);
        if (gj == null) {}
        for (i = 0;; i = gj.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gj, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length - 1)
          {
            arrayOfInt[j] = paramqo.rC();
            paramqo.rz();
            j += 1;
          }
        }
        arrayOfInt[j] = paramqo.rC();
        gj = arrayOfInt;
        break;
      case 26: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (gj == null) {}
        for (i = 0;; i = gj.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gj, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        gj = arrayOfInt;
        paramqo.gT(k);
        break;
      case 32: 
        gk = paramqo.rC();
        break;
      case 40: 
        j = qz.b(paramqo, 40);
        if (gl == null) {}
        for (i = 0;; i = gl.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gl, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length - 1)
          {
            arrayOfInt[j] = paramqo.rC();
            paramqo.rz();
            j += 1;
          }
        }
        arrayOfInt[j] = paramqo.rC();
        gl = arrayOfInt;
        break;
      case 42: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (gl == null) {}
        for (i = 0;; i = gl.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gl, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        gl = arrayOfInt;
        paramqo.gT(k);
        break;
      case 48: 
        gm = paramqo.rC();
        break;
      case 56: 
        gn = paramqo.rC();
      }
    }
  }
  
  public h n()
  {
    gh = qz.azj;
    gi = qz.azj;
    gj = qz.azj;
    gk = 0;
    gl = qz.azj;
    gm = 0;
    gn = 0;
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */