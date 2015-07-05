package com.google.android.gms.internal;

import java.util.Arrays;

public final class ra$c
  extends qq<c>
{
  public ra.d[] azA;
  public ra.b azB;
  public byte[] azC;
  public byte[] azD;
  public byte[] azE;
  public ra.a azF;
  public String azG;
  public long azH;
  public long azw;
  public int azx;
  public int azy;
  public boolean azz;
  public String tag;
  
  public ra$c()
  {
    sc();
  }
  
  public c A(qo paramqo)
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
        azw = paramqo.rB();
        break;
      case 18: 
        tag = paramqo.readString();
        break;
      case 26: 
        int j = qz.b(paramqo, 26);
        if (azA == null) {}
        ra.d[] arrayOfd;
        for (i = 0;; i = azA.length)
        {
          arrayOfd = new ra.d[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(azA, 0, arrayOfd, 0, i);
            j = i;
          }
          while (j < arrayOfd.length - 1)
          {
            arrayOfd[j] = new ra.d();
            paramqo.a(arrayOfd[j]);
            paramqo.rz();
            j += 1;
          }
        }
        arrayOfd[j] = new ra.d();
        paramqo.a(arrayOfd[j]);
        azA = arrayOfd;
        break;
      case 50: 
        azC = paramqo.readBytes();
        break;
      case 58: 
        if (azF == null) {
          azF = new ra.a();
        }
        paramqo.a(azF);
        break;
      case 66: 
        azD = paramqo.readBytes();
        break;
      case 74: 
        if (azB == null) {
          azB = new ra.b();
        }
        paramqo.a(azB);
        break;
      case 80: 
        azz = paramqo.rD();
        break;
      case 88: 
        azx = paramqo.rC();
        break;
      case 96: 
        azy = paramqo.rC();
        break;
      case 106: 
        azE = paramqo.readBytes();
        break;
      case 114: 
        azG = paramqo.readString();
        break;
      case 120: 
        azH = paramqo.rF();
      }
    }
  }
  
  public void a(qp paramqp)
  {
    if (azw != 0L) {
      paramqp.b(1, azw);
    }
    if (!tag.equals("")) {
      paramqp.b(2, tag);
    }
    if ((azA != null) && (azA.length > 0))
    {
      int i = 0;
      while (i < azA.length)
      {
        ra.d locald = azA[i];
        if (locald != null) {
          paramqp.a(3, locald);
        }
        i += 1;
      }
    }
    if (!Arrays.equals(azC, qz.azq)) {
      paramqp.a(6, azC);
    }
    if (azF != null) {
      paramqp.a(7, azF);
    }
    if (!Arrays.equals(azD, qz.azq)) {
      paramqp.a(8, azD);
    }
    if (azB != null) {
      paramqp.a(9, azB);
    }
    if (azz) {
      paramqp.b(10, azz);
    }
    if (azx != 0) {
      paramqp.t(11, azx);
    }
    if (azy != 0) {
      paramqp.t(12, azy);
    }
    if (!Arrays.equals(azE, qz.azq)) {
      paramqp.a(13, azE);
    }
    if (!azG.equals("")) {
      paramqp.b(14, azG);
    }
    if (azH != 0L) {
      paramqp.c(15, azH);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int i = super.c();
    int j = i;
    if (azw != 0L) {
      j = i + qp.d(1, azw);
    }
    i = j;
    if (!tag.equals("")) {
      i = j + qp.j(2, tag);
    }
    j = i;
    if (azA != null)
    {
      j = i;
      if (azA.length > 0)
      {
        j = 0;
        while (j < azA.length)
        {
          ra.d locald = azA[j];
          int k = i;
          if (locald != null) {
            k = i + qp.c(3, locald);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (!Arrays.equals(azC, qz.azq)) {
      i = j + qp.b(6, azC);
    }
    j = i;
    if (azF != null) {
      j = i + qp.c(7, azF);
    }
    i = j;
    if (!Arrays.equals(azD, qz.azq)) {
      i = j + qp.b(8, azD);
    }
    j = i;
    if (azB != null) {
      j = i + qp.c(9, azB);
    }
    i = j;
    if (azz) {
      i = j + qp.c(10, azz);
    }
    j = i;
    if (azx != 0) {
      j = i + qp.v(11, azx);
    }
    i = j;
    if (azy != 0) {
      i = j + qp.v(12, azy);
    }
    j = i;
    if (!Arrays.equals(azE, qz.azq)) {
      j = i + qp.b(13, azE);
    }
    i = j;
    if (!azG.equals("")) {
      i = j + qp.j(14, azG);
    }
    j = i;
    if (azH != 0L) {
      j = i + qp.e(15, azH);
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
    label55:
    label126:
    label190:
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
                          do
                          {
                            do
                            {
                              return bool1;
                              bool1 = bool2;
                            } while (!(paramObject instanceof c));
                            paramObject = (c)paramObject;
                            bool1 = bool2;
                          } while (azw != azw);
                          if (tag != null) {
                            break;
                          }
                          bool1 = bool2;
                        } while (tag != null);
                        bool1 = bool2;
                      } while (azx != azx);
                      bool1 = bool2;
                    } while (azy != azy);
                    bool1 = bool2;
                  } while (azz != azz);
                  bool1 = bool2;
                } while (!qu.equals(azA, azA));
                if (azB != null) {
                  break label242;
                }
                bool1 = bool2;
              } while (azB != null);
              bool1 = bool2;
            } while (!Arrays.equals(azC, azC));
            bool1 = bool2;
          } while (!Arrays.equals(azD, azD));
          bool1 = bool2;
        } while (!Arrays.equals(azE, azE));
        if (azF != null) {
          break label258;
        }
        bool1 = bool2;
      } while (azF != null);
      if (azG != null) {
        break label274;
      }
      bool1 = bool2;
    } while (azG != null);
    label242:
    label258:
    label274:
    while (azG.equals(azG))
    {
      bool1 = bool2;
      if (azH != azH) {
        break;
      }
      return a((qq)paramObject);
      if (tag.equals(tag)) {
        break label55;
      }
      return false;
      if (azB.equals(azB)) {
        break label126;
      }
      return false;
      if (azF.equals(azF)) {
        break label190;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int n = 0;
    int i1 = (int)(azw ^ azw >>> 32);
    int i;
    int i2;
    int i3;
    int j;
    label50:
    int i4;
    int k;
    label68:
    int i5;
    int i6;
    int i7;
    int m;
    if (tag == null)
    {
      i = 0;
      i2 = azx;
      i3 = azy;
      if (!azz) {
        break label218;
      }
      j = 1231;
      i4 = qu.hashCode(azA);
      if (azB != null) {
        break label225;
      }
      k = 0;
      i5 = Arrays.hashCode(azC);
      i6 = Arrays.hashCode(azD);
      i7 = Arrays.hashCode(azE);
      if (azF != null) {
        break label236;
      }
      m = 0;
      label105:
      if (azG != null) {
        break label248;
      }
    }
    for (;;)
    {
      return (((m + ((((k + ((j + (((i + (i1 + 527) * 31) * 31 + i2) * 31 + i3) * 31) * 31 + i4) * 31) * 31 + i5) * 31 + i6) * 31 + i7) * 31) * 31 + n) * 31 + (int)(azH ^ azH >>> 32)) * 31 + rQ();
      i = tag.hashCode();
      break;
      label218:
      j = 1237;
      break label50;
      label225:
      k = azB.hashCode();
      break label68;
      label236:
      m = azF.hashCode();
      break label105;
      label248:
      n = azG.hashCode();
    }
  }
  
  public c sc()
  {
    azw = 0L;
    tag = "";
    azx = 0;
    azy = 0;
    azz = false;
    azA = ra.d.sd();
    azB = null;
    azC = qz.azq;
    azD = qz.azq;
    azE = qz.azq;
    azF = null;
    azG = "";
    azH = 0L;
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ra.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */