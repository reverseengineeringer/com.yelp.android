package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class lu$d
  extends ll<d>
{
  public long a;
  public long b;
  public long c;
  public String d;
  public int e;
  public int f;
  public boolean g;
  public lu.e[] h;
  public lu.b i;
  public byte[] j;
  public byte[] k;
  public byte[] l;
  public lu.a n;
  public String o;
  public long p;
  public lu.c q;
  public byte[] r;
  public int s;
  public int[] t;
  public long u;
  
  public lu$d()
  {
    a();
  }
  
  public d a()
  {
    a = 0L;
    b = 0L;
    c = 0L;
    d = "";
    e = 0;
    f = 0;
    g = false;
    h = lu.e.a();
    i = null;
    j = lt.h;
    k = lt.h;
    l = lt.h;
    n = null;
    o = "";
    p = 180000L;
    q = null;
    r = lt.h;
    s = 0;
    t = lt.a;
    u = 0L;
    m = null;
    S = -1;
    return this;
  }
  
  public d a(lk paramlk)
    throws IOException
  {
    for (;;)
    {
      int m = paramlk.a();
      int i1;
      Object localObject;
      switch (m)
      {
      default: 
        if (a(paramlk, m)) {}
        break;
      case 0: 
        return this;
      case 8: 
        a = paramlk.e();
        break;
      case 18: 
        d = paramlk.h();
        break;
      case 26: 
        i1 = lt.b(paramlk, 26);
        if (h == null) {}
        for (m = 0;; m = h.length)
        {
          localObject = new lu.e[i1 + m];
          i1 = m;
          if (m != 0)
          {
            System.arraycopy(h, 0, localObject, 0, m);
            i1 = m;
          }
          while (i1 < localObject.length - 1)
          {
            localObject[i1] = new lu.e();
            paramlk.a(localObject[i1]);
            paramlk.a();
            i1 += 1;
          }
        }
        localObject[i1] = new lu.e();
        paramlk.a(localObject[i1]);
        h = ((lu.e[])localObject);
        break;
      case 50: 
        j = paramlk.i();
        break;
      case 58: 
        if (n == null) {
          n = new lu.a();
        }
        paramlk.a(n);
        break;
      case 66: 
        k = paramlk.i();
        break;
      case 74: 
        if (i == null) {
          i = new lu.b();
        }
        paramlk.a(i);
        break;
      case 80: 
        g = paramlk.g();
        break;
      case 88: 
        e = paramlk.f();
        break;
      case 96: 
        f = paramlk.f();
        break;
      case 106: 
        l = paramlk.i();
        break;
      case 114: 
        o = paramlk.h();
        break;
      case 120: 
        p = paramlk.j();
        break;
      case 130: 
        if (q == null) {
          q = new lu.c();
        }
        paramlk.a(q);
        break;
      case 136: 
        b = paramlk.e();
        break;
      case 146: 
        r = paramlk.i();
        break;
      case 152: 
        m = paramlk.f();
        switch (m)
        {
        default: 
          break;
        case 0: 
        case 1: 
        case 2: 
          s = m;
        }
        break;
      case 160: 
        i1 = lt.b(paramlk, 160);
        if (t == null) {}
        for (m = 0;; m = t.length)
        {
          localObject = new int[i1 + m];
          i1 = m;
          if (m != 0)
          {
            System.arraycopy(t, 0, localObject, 0, m);
            i1 = m;
          }
          while (i1 < localObject.length - 1)
          {
            localObject[i1] = paramlk.f();
            paramlk.a();
            i1 += 1;
          }
        }
        localObject[i1] = paramlk.f();
        t = ((int[])localObject);
        break;
      case 162: 
        int i2 = paramlk.c(paramlk.k());
        m = paramlk.q();
        i1 = 0;
        while (paramlk.o() > 0)
        {
          paramlk.f();
          i1 += 1;
        }
        paramlk.e(m);
        if (t == null) {}
        for (m = 0;; m = t.length)
        {
          localObject = new int[i1 + m];
          i1 = m;
          if (m != 0)
          {
            System.arraycopy(t, 0, localObject, 0, m);
            i1 = m;
          }
          while (i1 < localObject.length)
          {
            localObject[i1] = paramlk.f();
            i1 += 1;
          }
        }
        t = ((int[])localObject);
        paramlk.d(i2);
        break;
      case 168: 
        c = paramlk.e();
        break;
      case 176: 
        u = paramlk.e();
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    int i1 = 0;
    if (a != 0L) {
      paramzzsn.b(1, a);
    }
    if (!d.equals("")) {
      paramzzsn.a(2, d);
    }
    int m;
    if ((h != null) && (h.length > 0))
    {
      m = 0;
      while (m < h.length)
      {
        lu.e locale = h[m];
        if (locale != null) {
          paramzzsn.a(3, locale);
        }
        m += 1;
      }
    }
    if (!Arrays.equals(j, lt.h)) {
      paramzzsn.a(6, j);
    }
    if (n != null) {
      paramzzsn.a(7, n);
    }
    if (!Arrays.equals(k, lt.h)) {
      paramzzsn.a(8, k);
    }
    if (i != null) {
      paramzzsn.a(9, i);
    }
    if (g) {
      paramzzsn.a(10, g);
    }
    if (e != 0) {
      paramzzsn.a(11, e);
    }
    if (f != 0) {
      paramzzsn.a(12, f);
    }
    if (!Arrays.equals(l, lt.h)) {
      paramzzsn.a(13, l);
    }
    if (!o.equals("")) {
      paramzzsn.a(14, o);
    }
    if (p != 180000L) {
      paramzzsn.c(15, p);
    }
    if (q != null) {
      paramzzsn.a(16, q);
    }
    if (b != 0L) {
      paramzzsn.b(17, b);
    }
    if (!Arrays.equals(r, lt.h)) {
      paramzzsn.a(18, r);
    }
    if (s != 0) {
      paramzzsn.a(19, s);
    }
    if ((t != null) && (t.length > 0))
    {
      m = i1;
      while (m < t.length)
      {
        paramzzsn.a(20, t[m]);
        m += 1;
      }
    }
    if (c != 0L) {
      paramzzsn.b(21, c);
    }
    if (u != 0L) {
      paramzzsn.b(22, u);
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int i3 = 0;
    int m = super.b();
    int i1 = m;
    if (a != 0L) {
      i1 = m + zzsn.d(1, a);
    }
    m = i1;
    if (!d.equals("")) {
      m = i1 + zzsn.b(2, d);
    }
    i1 = m;
    if (h != null)
    {
      i1 = m;
      if (h.length > 0)
      {
        i1 = 0;
        while (i1 < h.length)
        {
          lu.e locale = h[i1];
          i2 = m;
          if (locale != null) {
            i2 = m + zzsn.c(3, locale);
          }
          i1 += 1;
          m = i2;
        }
        i1 = m;
      }
    }
    m = i1;
    if (!Arrays.equals(j, lt.h)) {
      m = i1 + zzsn.b(6, j);
    }
    i1 = m;
    if (n != null) {
      i1 = m + zzsn.c(7, n);
    }
    m = i1;
    if (!Arrays.equals(k, lt.h)) {
      m = i1 + zzsn.b(8, k);
    }
    i1 = m;
    if (i != null) {
      i1 = m + zzsn.c(9, i);
    }
    m = i1;
    if (g) {
      m = i1 + zzsn.b(10, g);
    }
    i1 = m;
    if (e != 0) {
      i1 = m + zzsn.b(11, e);
    }
    m = i1;
    if (f != 0) {
      m = i1 + zzsn.b(12, f);
    }
    i1 = m;
    if (!Arrays.equals(l, lt.h)) {
      i1 = m + zzsn.b(13, l);
    }
    m = i1;
    if (!o.equals("")) {
      m = i1 + zzsn.b(14, o);
    }
    i1 = m;
    if (p != 180000L) {
      i1 = m + zzsn.e(15, p);
    }
    m = i1;
    if (q != null) {
      m = i1 + zzsn.c(16, q);
    }
    i1 = m;
    if (b != 0L) {
      i1 = m + zzsn.d(17, b);
    }
    int i2 = i1;
    if (!Arrays.equals(r, lt.h)) {
      i2 = i1 + zzsn.b(18, r);
    }
    m = i2;
    if (s != 0) {
      m = i2 + zzsn.b(19, s);
    }
    i1 = m;
    if (t != null)
    {
      i1 = m;
      if (t.length > 0)
      {
        i2 = 0;
        i1 = i3;
        while (i1 < t.length)
        {
          i2 += zzsn.b(t[i1]);
          i1 += 1;
        }
        i1 = m + i2 + t.length * 2;
      }
    }
    m = i1;
    if (c != 0L) {
      m = i1 + zzsn.d(21, c);
    }
    i1 = m;
    if (u != 0L) {
      i1 = m + zzsn.d(22, u);
    }
    return i1;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    label83:
    label154:
    label218:
    label234:
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
                                do
                                {
                                  do
                                  {
                                    do
                                    {
                                      return bool1;
                                      bool1 = bool2;
                                    } while (!(paramObject instanceof d));
                                    paramObject = (d)paramObject;
                                    bool1 = bool2;
                                  } while (a != a);
                                  bool1 = bool2;
                                } while (b != b);
                                bool1 = bool2;
                              } while (c != c);
                              if (d != null) {
                                break;
                              }
                              bool1 = bool2;
                            } while (d != null);
                            bool1 = bool2;
                          } while (e != e);
                          bool1 = bool2;
                        } while (f != f);
                        bool1 = bool2;
                      } while (g != g);
                      bool1 = bool2;
                    } while (!lp.a(h, h));
                    if (i != null) {
                      break label377;
                    }
                    bool1 = bool2;
                  } while (i != null);
                  bool1 = bool2;
                } while (!Arrays.equals(j, j));
                bool1 = bool2;
              } while (!Arrays.equals(k, k));
              bool1 = bool2;
            } while (!Arrays.equals(l, l));
            if (n != null) {
              break label393;
            }
            bool1 = bool2;
          } while (n != null);
          if (o != null) {
            break label409;
          }
          bool1 = bool2;
        } while (o != null);
        bool1 = bool2;
      } while (p != p);
      if (q != null) {
        break label425;
      }
      bool1 = bool2;
    } while (q != null);
    label377:
    label393:
    label409:
    label425:
    while (q.equals(q))
    {
      bool1 = bool2;
      if (!Arrays.equals(r, r)) {
        break;
      }
      bool1 = bool2;
      if (s != s) {
        break;
      }
      bool1 = bool2;
      if (!lp.a(t, t)) {
        break;
      }
      bool1 = bool2;
      if (u != u) {
        break;
      }
      if ((m != null) && (!m.b())) {
        break label441;
      }
      if (m != null)
      {
        bool1 = bool2;
        if (!m.b()) {
          break;
        }
      }
      return true;
      if (d.equals(d)) {
        break label83;
      }
      return false;
      if (i.equals(i)) {
        break label154;
      }
      return false;
      if (n.equals(n)) {
        break label218;
      }
      return false;
      if (o.equals(o)) {
        break label234;
      }
      return false;
    }
    return false;
    label441:
    return m.equals(m);
  }
  
  public int hashCode()
  {
    int i7 = 0;
    int i8 = getClass().getName().hashCode();
    int i9 = (int)(a ^ a >>> 32);
    int i10 = (int)(b ^ b >>> 32);
    int i11 = (int)(c ^ c >>> 32);
    int m;
    int i12;
    int i13;
    int i1;
    label92:
    int i14;
    int i2;
    label110:
    int i15;
    int i16;
    int i17;
    int i3;
    label147:
    int i4;
    label157:
    int i18;
    int i5;
    label182:
    int i19;
    int i20;
    int i21;
    int i22;
    if (d == null)
    {
      m = 0;
      i12 = e;
      i13 = f;
      if (!g) {
        break label387;
      }
      i1 = 1231;
      i14 = lp.a(h);
      if (i != null) {
        break label394;
      }
      i2 = 0;
      i15 = Arrays.hashCode(j);
      i16 = Arrays.hashCode(k);
      i17 = Arrays.hashCode(l);
      if (n != null) {
        break label405;
      }
      i3 = 0;
      if (o != null) {
        break label417;
      }
      i4 = 0;
      i18 = (int)(p ^ p >>> 32);
      if (q != null) {
        break label429;
      }
      i5 = 0;
      i19 = Arrays.hashCode(r);
      i20 = s;
      i21 = lp.a(t);
      i22 = (int)(u ^ u >>> 32);
      i6 = i7;
      if (this.m != null) {
        if (!this.m.b()) {
          break label441;
        }
      }
    }
    label387:
    label394:
    label405:
    label417:
    label429:
    label441:
    for (int i6 = i7;; i6 = this.m.hashCode())
    {
      return (((((i5 + ((i4 + (i3 + ((((i2 + ((i1 + (((m + ((((i8 + 527) * 31 + i9) * 31 + i10) * 31 + i11) * 31) * 31 + i12) * 31 + i13) * 31) * 31 + i14) * 31) * 31 + i15) * 31 + i16) * 31 + i17) * 31) * 31) * 31 + i18) * 31) * 31 + i19) * 31 + i20) * 31 + i21) * 31 + i22) * 31 + i6;
      m = d.hashCode();
      break;
      i1 = 1237;
      break label92;
      i2 = i.hashCode();
      break label110;
      i3 = n.hashCode();
      break label147;
      i4 = o.hashCode();
      break label157;
      i5 = q.hashCode();
      break label182;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lu.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */