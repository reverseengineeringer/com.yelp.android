package com.google.android.gms.internal;

public final class c$g
  extends qq<g>
{
  private static volatile g[] fU;
  public int[] fV;
  public int[] fW;
  public int[] fX;
  public int[] fY;
  public int[] fZ;
  public int[] ga;
  public int[] gb;
  public int[] gc;
  public int[] gd;
  public int[] ge;
  
  public c$g()
  {
    m();
  }
  
  public static g[] l()
  {
    if (fU == null) {}
    synchronized (qu.azg)
    {
      if (fU == null) {
        fU = new g[0];
      }
      return fU;
    }
  }
  
  public void a(qp paramqp)
  {
    int j = 0;
    int i;
    if ((fV != null) && (fV.length > 0))
    {
      i = 0;
      while (i < fV.length)
      {
        paramqp.t(1, fV[i]);
        i += 1;
      }
    }
    if ((fW != null) && (fW.length > 0))
    {
      i = 0;
      while (i < fW.length)
      {
        paramqp.t(2, fW[i]);
        i += 1;
      }
    }
    if ((fX != null) && (fX.length > 0))
    {
      i = 0;
      while (i < fX.length)
      {
        paramqp.t(3, fX[i]);
        i += 1;
      }
    }
    if ((fY != null) && (fY.length > 0))
    {
      i = 0;
      while (i < fY.length)
      {
        paramqp.t(4, fY[i]);
        i += 1;
      }
    }
    if ((fZ != null) && (fZ.length > 0))
    {
      i = 0;
      while (i < fZ.length)
      {
        paramqp.t(5, fZ[i]);
        i += 1;
      }
    }
    if ((ga != null) && (ga.length > 0))
    {
      i = 0;
      while (i < ga.length)
      {
        paramqp.t(6, ga[i]);
        i += 1;
      }
    }
    if ((gb != null) && (gb.length > 0))
    {
      i = 0;
      while (i < gb.length)
      {
        paramqp.t(7, gb[i]);
        i += 1;
      }
    }
    if ((gc != null) && (gc.length > 0))
    {
      i = 0;
      while (i < gc.length)
      {
        paramqp.t(8, gc[i]);
        i += 1;
      }
    }
    if ((gd != null) && (gd.length > 0))
    {
      i = 0;
      while (i < gd.length)
      {
        paramqp.t(9, gd[i]);
        i += 1;
      }
    }
    if ((ge != null) && (ge.length > 0))
    {
      i = j;
      while (i < ge.length)
      {
        paramqp.t(10, ge[i]);
        i += 1;
      }
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int m = 0;
    int k = super.c();
    int i;
    if ((fV != null) && (fV.length > 0))
    {
      i = 0;
      j = 0;
      while (i < fV.length)
      {
        j += qp.gZ(fV[i]);
        i += 1;
      }
    }
    for (int j = k + j + fV.length * 1;; j = k)
    {
      i = j;
      if (fW != null)
      {
        i = j;
        if (fW.length > 0)
        {
          i = 0;
          k = 0;
          while (i < fW.length)
          {
            k += qp.gZ(fW[i]);
            i += 1;
          }
          i = j + k + fW.length * 1;
        }
      }
      j = i;
      if (fX != null)
      {
        j = i;
        if (fX.length > 0)
        {
          j = 0;
          k = 0;
          while (j < fX.length)
          {
            k += qp.gZ(fX[j]);
            j += 1;
          }
          j = i + k + fX.length * 1;
        }
      }
      i = j;
      if (fY != null)
      {
        i = j;
        if (fY.length > 0)
        {
          i = 0;
          k = 0;
          while (i < fY.length)
          {
            k += qp.gZ(fY[i]);
            i += 1;
          }
          i = j + k + fY.length * 1;
        }
      }
      j = i;
      if (fZ != null)
      {
        j = i;
        if (fZ.length > 0)
        {
          j = 0;
          k = 0;
          while (j < fZ.length)
          {
            k += qp.gZ(fZ[j]);
            j += 1;
          }
          j = i + k + fZ.length * 1;
        }
      }
      i = j;
      if (ga != null)
      {
        i = j;
        if (ga.length > 0)
        {
          i = 0;
          k = 0;
          while (i < ga.length)
          {
            k += qp.gZ(ga[i]);
            i += 1;
          }
          i = j + k + ga.length * 1;
        }
      }
      j = i;
      if (gb != null)
      {
        j = i;
        if (gb.length > 0)
        {
          j = 0;
          k = 0;
          while (j < gb.length)
          {
            k += qp.gZ(gb[j]);
            j += 1;
          }
          j = i + k + gb.length * 1;
        }
      }
      i = j;
      if (gc != null)
      {
        i = j;
        if (gc.length > 0)
        {
          i = 0;
          k = 0;
          while (i < gc.length)
          {
            k += qp.gZ(gc[i]);
            i += 1;
          }
          i = j + k + gc.length * 1;
        }
      }
      j = i;
      if (gd != null)
      {
        j = i;
        if (gd.length > 0)
        {
          j = 0;
          k = 0;
          while (j < gd.length)
          {
            k += qp.gZ(gd[j]);
            j += 1;
          }
          j = i + k + gd.length * 1;
        }
      }
      i = j;
      if (ge != null)
      {
        i = j;
        if (ge.length > 0)
        {
          k = 0;
          i = m;
          while (i < ge.length)
          {
            k += qp.gZ(ge[i]);
            i += 1;
          }
          i = j + k + ge.length * 1;
        }
      }
      return i;
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
                    do
                    {
                      do
                      {
                        do
                        {
                          return bool1;
                          bool1 = bool2;
                        } while (!(paramObject instanceof g));
                        paramObject = (g)paramObject;
                        bool1 = bool2;
                      } while (!qu.equals(fV, fV));
                      bool1 = bool2;
                    } while (!qu.equals(fW, fW));
                    bool1 = bool2;
                  } while (!qu.equals(fX, fX));
                  bool1 = bool2;
                } while (!qu.equals(fY, fY));
                bool1 = bool2;
              } while (!qu.equals(fZ, fZ));
              bool1 = bool2;
            } while (!qu.equals(ga, ga));
            bool1 = bool2;
          } while (!qu.equals(gb, gb));
          bool1 = bool2;
        } while (!qu.equals(gc, gc));
        bool1 = bool2;
      } while (!qu.equals(gd, gd));
      bool1 = bool2;
    } while (!qu.equals(ge, ge));
    return a((qq)paramObject);
  }
  
  public g h(qo paramqo)
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
        if (fV == null) {}
        for (i = 0;; i = fV.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fV, 0, arrayOfInt, 0, i);
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
        fV = arrayOfInt;
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
        if (fV == null) {}
        for (i = 0;; i = fV.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fV, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        fV = arrayOfInt;
        paramqo.gT(k);
        break;
      case 16: 
        j = qz.b(paramqo, 16);
        if (fW == null) {}
        for (i = 0;; i = fW.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fW, 0, arrayOfInt, 0, i);
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
        fW = arrayOfInt;
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
        if (fW == null) {}
        for (i = 0;; i = fW.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fW, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        fW = arrayOfInt;
        paramqo.gT(k);
        break;
      case 24: 
        j = qz.b(paramqo, 24);
        if (fX == null) {}
        for (i = 0;; i = fX.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fX, 0, arrayOfInt, 0, i);
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
        fX = arrayOfInt;
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
        if (fX == null) {}
        for (i = 0;; i = fX.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fX, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        fX = arrayOfInt;
        paramqo.gT(k);
        break;
      case 32: 
        j = qz.b(paramqo, 32);
        if (fY == null) {}
        for (i = 0;; i = fY.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fY, 0, arrayOfInt, 0, i);
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
        fY = arrayOfInt;
        break;
      case 34: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (fY == null) {}
        for (i = 0;; i = fY.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fY, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        fY = arrayOfInt;
        paramqo.gT(k);
        break;
      case 40: 
        j = qz.b(paramqo, 40);
        if (fZ == null) {}
        for (i = 0;; i = fZ.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fZ, 0, arrayOfInt, 0, i);
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
        fZ = arrayOfInt;
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
        if (fZ == null) {}
        for (i = 0;; i = fZ.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fZ, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        fZ = arrayOfInt;
        paramqo.gT(k);
        break;
      case 48: 
        j = qz.b(paramqo, 48);
        if (ga == null) {}
        for (i = 0;; i = ga.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(ga, 0, arrayOfInt, 0, i);
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
        ga = arrayOfInt;
        break;
      case 50: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (ga == null) {}
        for (i = 0;; i = ga.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(ga, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        ga = arrayOfInt;
        paramqo.gT(k);
        break;
      case 56: 
        j = qz.b(paramqo, 56);
        if (gb == null) {}
        for (i = 0;; i = gb.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gb, 0, arrayOfInt, 0, i);
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
        gb = arrayOfInt;
        break;
      case 58: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (gb == null) {}
        for (i = 0;; i = gb.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gb, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        gb = arrayOfInt;
        paramqo.gT(k);
        break;
      case 64: 
        j = qz.b(paramqo, 64);
        if (gc == null) {}
        for (i = 0;; i = gc.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gc, 0, arrayOfInt, 0, i);
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
        gc = arrayOfInt;
        break;
      case 66: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (gc == null) {}
        for (i = 0;; i = gc.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gc, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        gc = arrayOfInt;
        paramqo.gT(k);
        break;
      case 72: 
        j = qz.b(paramqo, 72);
        if (gd == null) {}
        for (i = 0;; i = gd.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gd, 0, arrayOfInt, 0, i);
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
        gd = arrayOfInt;
        break;
      case 74: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (gd == null) {}
        for (i = 0;; i = gd.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gd, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        gd = arrayOfInt;
        paramqo.gT(k);
        break;
      case 80: 
        j = qz.b(paramqo, 80);
        if (ge == null) {}
        for (i = 0;; i = ge.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(ge, 0, arrayOfInt, 0, i);
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
        ge = arrayOfInt;
        break;
      case 82: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (ge == null) {}
        for (i = 0;; i = ge.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(ge, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        ge = arrayOfInt;
        paramqo.gT(k);
      }
    }
  }
  
  public int hashCode()
  {
    return ((((((((((qu.hashCode(fV) + 527) * 31 + qu.hashCode(fW)) * 31 + qu.hashCode(fX)) * 31 + qu.hashCode(fY)) * 31 + qu.hashCode(fZ)) * 31 + qu.hashCode(ga)) * 31 + qu.hashCode(gb)) * 31 + qu.hashCode(gc)) * 31 + qu.hashCode(gd)) * 31 + qu.hashCode(ge)) * 31 + rQ();
  }
  
  public g m()
  {
    fV = qz.azj;
    fW = qz.azj;
    fX = qz.azj;
    fY = qz.azj;
    fZ = qz.azj;
    ga = qz.azj;
    gb = qz.azj;
    gc = qz.azj;
    gd = qz.azj;
    ge = qz.azj;
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */