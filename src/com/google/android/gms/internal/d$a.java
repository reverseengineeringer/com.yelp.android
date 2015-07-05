package com.google.android.gms.internal;

public final class d$a
  extends qq<a>
{
  private static volatile a[] gu;
  public String gA;
  public long gB;
  public boolean gC;
  public a[] gD;
  public int[] gE;
  public boolean gF;
  public String gv;
  public a[] gw;
  public a[] gx;
  public a[] gy;
  public String gz;
  public int type;
  
  public d$a()
  {
    s();
  }
  
  public static a[] r()
  {
    if (gu == null) {}
    synchronized (qu.azg)
    {
      if (gu == null) {
        gu = new a[0];
      }
      return gu;
    }
  }
  
  public void a(qp paramqp)
  {
    int j = 0;
    paramqp.t(1, type);
    if (!gv.equals("")) {
      paramqp.b(2, gv);
    }
    int i;
    a locala;
    if ((gw != null) && (gw.length > 0))
    {
      i = 0;
      while (i < gw.length)
      {
        locala = gw[i];
        if (locala != null) {
          paramqp.a(3, locala);
        }
        i += 1;
      }
    }
    if ((gx != null) && (gx.length > 0))
    {
      i = 0;
      while (i < gx.length)
      {
        locala = gx[i];
        if (locala != null) {
          paramqp.a(4, locala);
        }
        i += 1;
      }
    }
    if ((gy != null) && (gy.length > 0))
    {
      i = 0;
      while (i < gy.length)
      {
        locala = gy[i];
        if (locala != null) {
          paramqp.a(5, locala);
        }
        i += 1;
      }
    }
    if (!gz.equals("")) {
      paramqp.b(6, gz);
    }
    if (!gA.equals("")) {
      paramqp.b(7, gA);
    }
    if (gB != 0L) {
      paramqp.b(8, gB);
    }
    if (gF) {
      paramqp.b(9, gF);
    }
    if ((gE != null) && (gE.length > 0))
    {
      i = 0;
      while (i < gE.length)
      {
        paramqp.t(10, gE[i]);
        i += 1;
      }
    }
    if ((gD != null) && (gD.length > 0))
    {
      i = j;
      while (i < gD.length)
      {
        locala = gD[i];
        if (locala != null) {
          paramqp.a(11, locala);
        }
        i += 1;
      }
    }
    if (gC) {
      paramqp.b(12, gC);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int m = 0;
    int j = super.c() + qp.v(1, type);
    int i = j;
    if (!gv.equals("")) {
      i = j + qp.j(2, gv);
    }
    j = i;
    a locala;
    int k;
    if (gw != null)
    {
      j = i;
      if (gw.length > 0)
      {
        j = 0;
        while (j < gw.length)
        {
          locala = gw[j];
          k = i;
          if (locala != null) {
            k = i + qp.c(3, locala);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (gx != null)
    {
      i = j;
      if (gx.length > 0)
      {
        i = j;
        j = 0;
        while (j < gx.length)
        {
          locala = gx[j];
          k = i;
          if (locala != null) {
            k = i + qp.c(4, locala);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (gy != null)
    {
      j = i;
      if (gy.length > 0)
      {
        j = 0;
        while (j < gy.length)
        {
          locala = gy[j];
          k = i;
          if (locala != null) {
            k = i + qp.c(5, locala);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (!gz.equals("")) {
      i = j + qp.j(6, gz);
    }
    j = i;
    if (!gA.equals("")) {
      j = i + qp.j(7, gA);
    }
    i = j;
    if (gB != 0L) {
      i = j + qp.d(8, gB);
    }
    j = i;
    if (gF) {
      j = i + qp.c(9, gF);
    }
    i = j;
    if (gE != null)
    {
      i = j;
      if (gE.length > 0)
      {
        i = 0;
        k = 0;
        while (i < gE.length)
        {
          k += qp.gZ(gE[i]);
          i += 1;
        }
        i = j + k + gE.length * 1;
      }
    }
    j = i;
    if (gD != null)
    {
      j = i;
      if (gD.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= gD.length) {
            break;
          }
          locala = gD[k];
          j = i;
          if (locala != null) {
            j = i + qp.c(11, locala);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (gC) {
      i = j + qp.c(12, gC);
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
    label54:
    label118:
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
                  } while (!(paramObject instanceof a));
                  paramObject = (a)paramObject;
                  bool1 = bool2;
                } while (type != type);
                if (gv != null) {
                  break;
                }
                bool1 = bool2;
              } while (gv != null);
              bool1 = bool2;
            } while (!qu.equals(gw, gw));
            bool1 = bool2;
          } while (!qu.equals(gx, gx));
          bool1 = bool2;
        } while (!qu.equals(gy, gy));
        if (gz != null) {
          break label228;
        }
        bool1 = bool2;
      } while (gz != null);
      if (gA != null) {
        break label244;
      }
      bool1 = bool2;
    } while (gA != null);
    label228:
    label244:
    while (gA.equals(gA))
    {
      bool1 = bool2;
      if (gB != gB) {
        break;
      }
      bool1 = bool2;
      if (gC != gC) {
        break;
      }
      bool1 = bool2;
      if (!qu.equals(gD, gD)) {
        break;
      }
      bool1 = bool2;
      if (!qu.equals(gE, gE)) {
        break;
      }
      bool1 = bool2;
      if (gF != gF) {
        break;
      }
      return a((qq)paramObject);
      if (gv.equals(gv)) {
        break label54;
      }
      return false;
      if (gz.equals(gz)) {
        break label118;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int n = 1231;
    int k = 0;
    int i1 = type;
    int i;
    int i2;
    int i3;
    int i4;
    int j;
    label58:
    label65:
    int i5;
    int m;
    label92:
    int i6;
    int i7;
    if (gv == null)
    {
      i = 0;
      i2 = qu.hashCode(gw);
      i3 = qu.hashCode(gx);
      i4 = qu.hashCode(gy);
      if (gz != null) {
        break label206;
      }
      j = 0;
      if (gA != null) {
        break label217;
      }
      i5 = (int)(gB ^ gB >>> 32);
      if (!gC) {
        break label228;
      }
      m = 1231;
      i6 = qu.hashCode(gD);
      i7 = qu.hashCode(gE);
      if (!gF) {
        break label236;
      }
    }
    for (;;)
    {
      return ((((m + (((j + ((((i + (i1 + 527) * 31) * 31 + i2) * 31 + i3) * 31 + i4) * 31) * 31 + k) * 31 + i5) * 31) * 31 + i6) * 31 + i7) * 31 + n) * 31 + rQ();
      i = gv.hashCode();
      break;
      label206:
      j = gz.hashCode();
      break label58;
      label217:
      k = gA.hashCode();
      break label65;
      label228:
      m = 1237;
      break label92;
      label236:
      n = 1237;
    }
  }
  
  public a l(qo paramqo)
  {
    for (;;)
    {
      int i = paramqo.rz();
      int j;
      Object localObject;
      int k;
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
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
          type = i;
        }
        break;
      case 18: 
        gv = paramqo.readString();
        break;
      case 26: 
        j = qz.b(paramqo, 26);
        if (gw == null) {}
        for (i = 0;; i = gw.length)
        {
          localObject = new a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gw, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new a();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new a();
        paramqo.a(localObject[j]);
        gw = ((a[])localObject);
        break;
      case 34: 
        j = qz.b(paramqo, 34);
        if (gx == null) {}
        for (i = 0;; i = gx.length)
        {
          localObject = new a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gx, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new a();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new a();
        paramqo.a(localObject[j]);
        gx = ((a[])localObject);
        break;
      case 42: 
        j = qz.b(paramqo, 42);
        if (gy == null) {}
        for (i = 0;; i = gy.length)
        {
          localObject = new a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gy, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new a();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new a();
        paramqo.a(localObject[j]);
        gy = ((a[])localObject);
        break;
      case 50: 
        gz = paramqo.readString();
        break;
      case 58: 
        gA = paramqo.readString();
        break;
      case 64: 
        gB = paramqo.rB();
        break;
      case 72: 
        gF = paramqo.rD();
        break;
      case 80: 
        int m = qz.b(paramqo, 80);
        localObject = new int[m];
        j = 0;
        i = 0;
        if (j < m)
        {
          if (j != 0) {
            paramqo.rz();
          }
          int n = paramqo.rC();
          switch (n)
          {
          }
          for (;;)
          {
            j += 1;
            break;
            k = i + 1;
            localObject[i] = n;
            i = k;
          }
        }
        if (i != 0)
        {
          if (gE == null) {}
          for (j = 0;; j = gE.length)
          {
            if ((j != 0) || (i != localObject.length)) {
              break label810;
            }
            gE = ((int[])localObject);
            break;
          }
          int[] arrayOfInt = new int[j + i];
          if (j != 0) {
            System.arraycopy(gE, 0, arrayOfInt, 0, j);
          }
          System.arraycopy(localObject, 0, arrayOfInt, j, i);
          gE = arrayOfInt;
        }
        break;
      case 82: 
        k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0) {
          switch (paramqo.rC())
          {
          default: 
            break;
          case 1: 
          case 2: 
          case 3: 
          case 4: 
          case 5: 
          case 6: 
          case 7: 
          case 8: 
          case 9: 
          case 10: 
          case 11: 
          case 12: 
          case 13: 
          case 14: 
          case 15: 
          case 16: 
          case 17: 
            j += 1;
          }
        }
        if (j != 0)
        {
          paramqo.gU(i);
          if (gE == null) {}
          for (i = 0;; i = gE.length)
          {
            localObject = new int[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(gE, 0, localObject, 0, i);
              j = i;
            }
            while (paramqo.rL() > 0)
            {
              i = paramqo.rC();
              switch (i)
              {
              default: 
                break;
              case 1: 
              case 2: 
              case 3: 
              case 4: 
              case 5: 
              case 6: 
              case 7: 
              case 8: 
              case 9: 
              case 10: 
              case 11: 
              case 12: 
              case 13: 
              case 14: 
              case 15: 
              case 16: 
              case 17: 
                localObject[j] = i;
                j += 1;
              }
            }
          }
          gE = ((int[])localObject);
        }
        paramqo.gT(k);
        break;
      case 90: 
        j = qz.b(paramqo, 90);
        if (gD == null) {}
        for (i = 0;; i = gD.length)
        {
          localObject = new a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(gD, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new a();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new a();
        paramqo.a(localObject[j]);
        gD = ((a[])localObject);
        break;
      case 96: 
        label810:
        gC = paramqo.rD();
      }
    }
  }
  
  public a s()
  {
    type = 1;
    gv = "";
    gw = r();
    gx = r();
    gy = r();
    gz = "";
    gA = "";
    gB = 0L;
    gC = false;
    gD = r();
    gE = qz.azj;
    gF = false;
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */