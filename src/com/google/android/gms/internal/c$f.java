package com.google.android.gms.internal;

public final class c$f
  extends qq<f>
{
  public String[] fE;
  public String[] fF;
  public d.a[] fG;
  public c.e[] fH;
  public c.b[] fI;
  public c.b[] fJ;
  public c.b[] fK;
  public c.g[] fL;
  public String fM;
  public String fN;
  public String fO;
  public c.a fP;
  public float fQ;
  public boolean fR;
  public String[] fS;
  public int fT;
  public String version;
  
  public c$f()
  {
    k();
  }
  
  public static f a(byte[] paramArrayOfByte)
  {
    return (f)qw.a(new f(), paramArrayOfByte);
  }
  
  public void a(qp paramqp)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((fF != null) && (fF.length > 0))
    {
      i = 0;
      while (i < fF.length)
      {
        localObject = fF[i];
        if (localObject != null) {
          paramqp.b(1, (String)localObject);
        }
        i += 1;
      }
    }
    if ((fG != null) && (fG.length > 0))
    {
      i = 0;
      while (i < fG.length)
      {
        localObject = fG[i];
        if (localObject != null) {
          paramqp.a(2, (qw)localObject);
        }
        i += 1;
      }
    }
    if ((fH != null) && (fH.length > 0))
    {
      i = 0;
      while (i < fH.length)
      {
        localObject = fH[i];
        if (localObject != null) {
          paramqp.a(3, (qw)localObject);
        }
        i += 1;
      }
    }
    if ((fI != null) && (fI.length > 0))
    {
      i = 0;
      while (i < fI.length)
      {
        localObject = fI[i];
        if (localObject != null) {
          paramqp.a(4, (qw)localObject);
        }
        i += 1;
      }
    }
    if ((fJ != null) && (fJ.length > 0))
    {
      i = 0;
      while (i < fJ.length)
      {
        localObject = fJ[i];
        if (localObject != null) {
          paramqp.a(5, (qw)localObject);
        }
        i += 1;
      }
    }
    if ((fK != null) && (fK.length > 0))
    {
      i = 0;
      while (i < fK.length)
      {
        localObject = fK[i];
        if (localObject != null) {
          paramqp.a(6, (qw)localObject);
        }
        i += 1;
      }
    }
    if ((fL != null) && (fL.length > 0))
    {
      i = 0;
      while (i < fL.length)
      {
        localObject = fL[i];
        if (localObject != null) {
          paramqp.a(7, (qw)localObject);
        }
        i += 1;
      }
    }
    if (!fM.equals("")) {
      paramqp.b(9, fM);
    }
    if (!fN.equals("")) {
      paramqp.b(10, fN);
    }
    if (!fO.equals("0")) {
      paramqp.b(12, fO);
    }
    if (!version.equals("")) {
      paramqp.b(13, version);
    }
    if (fP != null) {
      paramqp.a(14, fP);
    }
    if (Float.floatToIntBits(fQ) != Float.floatToIntBits(0.0F)) {
      paramqp.b(15, fQ);
    }
    if ((fS != null) && (fS.length > 0))
    {
      i = 0;
      while (i < fS.length)
      {
        localObject = fS[i];
        if (localObject != null) {
          paramqp.b(16, (String)localObject);
        }
        i += 1;
      }
    }
    if (fT != 0) {
      paramqp.t(17, fT);
    }
    if (fR) {
      paramqp.b(18, fR);
    }
    if ((fE != null) && (fE.length > 0))
    {
      i = j;
      while (i < fE.length)
      {
        localObject = fE[i];
        if (localObject != null) {
          paramqp.b(19, (String)localObject);
        }
        i += 1;
      }
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int i2 = 0;
    int i1 = super.c();
    int i;
    int k;
    Object localObject;
    int n;
    int m;
    if ((fF != null) && (fF.length > 0))
    {
      i = 0;
      j = 0;
      for (k = 0; i < fF.length; k = m)
      {
        localObject = fF[i];
        n = j;
        m = k;
        if (localObject != null)
        {
          m = k + 1;
          n = j + qp.dk((String)localObject);
        }
        i += 1;
        j = n;
      }
    }
    for (int j = i1 + j + k * 1;; j = i1)
    {
      i = j;
      if (fG != null)
      {
        i = j;
        if (fG.length > 0)
        {
          i = j;
          j = 0;
          while (j < fG.length)
          {
            localObject = fG[j];
            k = i;
            if (localObject != null) {
              k = i + qp.c(2, (qw)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      j = i;
      if (fH != null)
      {
        j = i;
        if (fH.length > 0)
        {
          j = 0;
          while (j < fH.length)
          {
            localObject = fH[j];
            k = i;
            if (localObject != null) {
              k = i + qp.c(3, (qw)localObject);
            }
            j += 1;
            i = k;
          }
          j = i;
        }
      }
      i = j;
      if (fI != null)
      {
        i = j;
        if (fI.length > 0)
        {
          i = j;
          j = 0;
          while (j < fI.length)
          {
            localObject = fI[j];
            k = i;
            if (localObject != null) {
              k = i + qp.c(4, (qw)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      j = i;
      if (fJ != null)
      {
        j = i;
        if (fJ.length > 0)
        {
          j = 0;
          while (j < fJ.length)
          {
            localObject = fJ[j];
            k = i;
            if (localObject != null) {
              k = i + qp.c(5, (qw)localObject);
            }
            j += 1;
            i = k;
          }
          j = i;
        }
      }
      i = j;
      if (fK != null)
      {
        i = j;
        if (fK.length > 0)
        {
          i = j;
          j = 0;
          while (j < fK.length)
          {
            localObject = fK[j];
            k = i;
            if (localObject != null) {
              k = i + qp.c(6, (qw)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      j = i;
      if (fL != null)
      {
        j = i;
        if (fL.length > 0)
        {
          j = 0;
          while (j < fL.length)
          {
            localObject = fL[j];
            k = i;
            if (localObject != null) {
              k = i + qp.c(7, (qw)localObject);
            }
            j += 1;
            i = k;
          }
          j = i;
        }
      }
      i = j;
      if (!fM.equals("")) {
        i = j + qp.j(9, fM);
      }
      j = i;
      if (!fN.equals("")) {
        j = i + qp.j(10, fN);
      }
      i = j;
      if (!fO.equals("0")) {
        i = j + qp.j(12, fO);
      }
      j = i;
      if (!version.equals("")) {
        j = i + qp.j(13, version);
      }
      k = j;
      if (fP != null) {
        k = j + qp.c(14, fP);
      }
      i = k;
      if (Float.floatToIntBits(fQ) != Float.floatToIntBits(0.0F)) {
        i = k + qp.c(15, fQ);
      }
      j = i;
      if (fS != null)
      {
        j = i;
        if (fS.length > 0)
        {
          j = 0;
          k = 0;
          for (m = 0; j < fS.length; m = n)
          {
            localObject = fS[j];
            i1 = k;
            n = m;
            if (localObject != null)
            {
              n = m + 1;
              i1 = k + qp.dk((String)localObject);
            }
            j += 1;
            k = i1;
          }
          j = i + k + m * 2;
        }
      }
      k = j;
      if (fT != 0) {
        k = j + qp.v(17, fT);
      }
      i = k;
      if (fR) {
        i = k + qp.c(18, fR);
      }
      j = i;
      if (fE != null)
      {
        j = i;
        if (fE.length > 0)
        {
          k = 0;
          m = 0;
          j = i2;
          while (j < fE.length)
          {
            localObject = fE[j];
            i1 = k;
            n = m;
            if (localObject != null)
            {
              n = m + 1;
              i1 = k + qp.dk((String)localObject);
            }
            j += 1;
            k = i1;
            m = n;
          }
          j = i + k + m * 2;
        }
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
    label169:
    label185:
    label201:
    label217:
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
                              do
                              {
                                return bool1;
                                bool1 = bool2;
                              } while (!(paramObject instanceof f));
                              paramObject = (f)paramObject;
                              bool1 = bool2;
                            } while (!qu.equals(fE, fE));
                            bool1 = bool2;
                          } while (!qu.equals(fF, fF));
                          bool1 = bool2;
                        } while (!qu.equals(fG, fG));
                        bool1 = bool2;
                      } while (!qu.equals(fH, fH));
                      bool1 = bool2;
                    } while (!qu.equals(fI, fI));
                    bool1 = bool2;
                  } while (!qu.equals(fJ, fJ));
                  bool1 = bool2;
                } while (!qu.equals(fK, fK));
                bool1 = bool2;
              } while (!qu.equals(fL, fL));
              if (fM != null) {
                break;
              }
              bool1 = bool2;
            } while (fM != null);
            if (fN != null) {
              break label316;
            }
            bool1 = bool2;
          } while (fN != null);
          if (fO != null) {
            break label332;
          }
          bool1 = bool2;
        } while (fO != null);
        if (version != null) {
          break label348;
        }
        bool1 = bool2;
      } while (version != null);
      if (fP != null) {
        break label364;
      }
      bool1 = bool2;
    } while (fP != null);
    label316:
    label332:
    label348:
    label364:
    while (fP.equals(fP))
    {
      bool1 = bool2;
      if (Float.floatToIntBits(fQ) != Float.floatToIntBits(fQ)) {
        break;
      }
      bool1 = bool2;
      if (fR != fR) {
        break;
      }
      bool1 = bool2;
      if (!qu.equals(fS, fS)) {
        break;
      }
      bool1 = bool2;
      if (fT != fT) {
        break;
      }
      return a((qq)paramObject);
      if (fM.equals(fM)) {
        break label169;
      }
      return false;
      if (fN.equals(fN)) {
        break label185;
      }
      return false;
      if (fO.equals(fO)) {
        break label201;
      }
      return false;
      if (version.equals(version)) {
        break label217;
      }
      return false;
    }
    return false;
  }
  
  public f g(qo paramqo)
  {
    for (;;)
    {
      int i = paramqo.rz();
      int j;
      Object localObject;
      switch (i)
      {
      default: 
        if (a(paramqo, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        j = qz.b(paramqo, 10);
        if (fF == null) {}
        for (i = 0;; i = fF.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fF, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramqo.readString();
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = paramqo.readString();
        fF = ((String[])localObject);
        break;
      case 18: 
        j = qz.b(paramqo, 18);
        if (fG == null) {}
        for (i = 0;; i = fG.length)
        {
          localObject = new d.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fG, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new d.a();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new d.a();
        paramqo.a(localObject[j]);
        fG = ((d.a[])localObject);
        break;
      case 26: 
        j = qz.b(paramqo, 26);
        if (fH == null) {}
        for (i = 0;; i = fH.length)
        {
          localObject = new c.e[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fH, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.e();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new c.e();
        paramqo.a(localObject[j]);
        fH = ((c.e[])localObject);
        break;
      case 34: 
        j = qz.b(paramqo, 34);
        if (fI == null) {}
        for (i = 0;; i = fI.length)
        {
          localObject = new c.b[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fI, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.b();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new c.b();
        paramqo.a(localObject[j]);
        fI = ((c.b[])localObject);
        break;
      case 42: 
        j = qz.b(paramqo, 42);
        if (fJ == null) {}
        for (i = 0;; i = fJ.length)
        {
          localObject = new c.b[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fJ, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.b();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new c.b();
        paramqo.a(localObject[j]);
        fJ = ((c.b[])localObject);
        break;
      case 50: 
        j = qz.b(paramqo, 50);
        if (fK == null) {}
        for (i = 0;; i = fK.length)
        {
          localObject = new c.b[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fK, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.b();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new c.b();
        paramqo.a(localObject[j]);
        fK = ((c.b[])localObject);
        break;
      case 58: 
        j = qz.b(paramqo, 58);
        if (fL == null) {}
        for (i = 0;; i = fL.length)
        {
          localObject = new c.g[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fL, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.g();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new c.g();
        paramqo.a(localObject[j]);
        fL = ((c.g[])localObject);
        break;
      case 74: 
        fM = paramqo.readString();
        break;
      case 82: 
        fN = paramqo.readString();
        break;
      case 98: 
        fO = paramqo.readString();
        break;
      case 106: 
        version = paramqo.readString();
        break;
      case 114: 
        if (fP == null) {
          fP = new c.a();
        }
        paramqo.a(fP);
        break;
      case 125: 
        fQ = paramqo.readFloat();
        break;
      case 130: 
        j = qz.b(paramqo, 130);
        if (fS == null) {}
        for (i = 0;; i = fS.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fS, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramqo.readString();
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = paramqo.readString();
        fS = ((String[])localObject);
        break;
      case 136: 
        fT = paramqo.rC();
        break;
      case 144: 
        fR = paramqo.rD();
        break;
      case 154: 
        j = qz.b(paramqo, 154);
        if (fE == null) {}
        for (i = 0;; i = fE.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fE, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramqo.readString();
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = paramqo.readString();
        fE = ((String[])localObject);
      }
    }
  }
  
  public int hashCode()
  {
    int n = 0;
    int i2 = qu.hashCode(fE);
    int i3 = qu.hashCode(fF);
    int i4 = qu.hashCode(fG);
    int i5 = qu.hashCode(fH);
    int i6 = qu.hashCode(fI);
    int i7 = qu.hashCode(fJ);
    int i8 = qu.hashCode(fK);
    int i9 = qu.hashCode(fL);
    int i;
    int j;
    label93:
    int k;
    label102:
    int m;
    label112:
    label119:
    int i10;
    if (fM == null)
    {
      i = 0;
      if (fN != null) {
        break label266;
      }
      j = 0;
      if (fO != null) {
        break label277;
      }
      k = 0;
      if (version != null) {
        break label288;
      }
      m = 0;
      if (fP != null) {
        break label300;
      }
      i10 = Float.floatToIntBits(fQ);
      if (!fR) {
        break label312;
      }
    }
    label266:
    label277:
    label288:
    label300:
    label312:
    for (int i1 = 1231;; i1 = 1237)
    {
      return (((i1 + (((m + (k + (j + (i + ((((((((i2 + 527) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i9) * 31) * 31) * 31) * 31) * 31 + n) * 31 + i10) * 31) * 31 + qu.hashCode(fS)) * 31 + fT) * 31 + rQ();
      i = fM.hashCode();
      break;
      j = fN.hashCode();
      break label93;
      k = fO.hashCode();
      break label102;
      m = version.hashCode();
      break label112;
      n = fP.hashCode();
      break label119;
    }
  }
  
  public f k()
  {
    fE = qz.azo;
    fF = qz.azo;
    fG = d.a.r();
    fH = c.e.i();
    fI = c.b.d();
    fJ = c.b.d();
    fK = c.b.d();
    fL = c.g.l();
    fM = "";
    fN = "";
    fO = "0";
    version = "";
    fP = null;
    fQ = 0.0F;
    fR = false;
    fS = qz.azo;
    fT = 0;
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */