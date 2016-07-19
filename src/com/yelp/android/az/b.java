package com.yelp.android.az;

import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.lp;
import com.google.android.gms.internal.lq;
import com.google.android.gms.internal.lt;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;

public abstract interface b
{
  public static final class a
    extends lq
  {
    public Long A;
    public String B;
    public Long C;
    public Long D;
    public Long E;
    public b.b F;
    public Long G;
    public Long H;
    public Long I;
    public Long J;
    public a[] K;
    public Long L;
    public String M;
    public Integer N;
    public Boolean O;
    public String P;
    public Long Q;
    public b.c R;
    public String a;
    public String b;
    public Long c;
    public Long d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public Long k;
    public Long l;
    public String m;
    public Long n;
    public Long o;
    public Long p;
    public Long q;
    public Long r;
    public Long s;
    public Long t;
    public Long u;
    public Long v;
    public String w;
    public String x;
    public Long y;
    public Long z;
    
    public a()
    {
      a();
    }
    
    public a a()
    {
      a = null;
      b = null;
      c = null;
      d = null;
      e = null;
      f = null;
      g = null;
      h = null;
      i = null;
      j = null;
      k = null;
      l = null;
      m = null;
      n = null;
      o = null;
      p = null;
      q = null;
      r = null;
      s = null;
      t = null;
      u = null;
      v = null;
      w = null;
      x = null;
      y = null;
      z = null;
      A = null;
      B = null;
      C = null;
      D = null;
      E = null;
      F = null;
      G = null;
      H = null;
      I = null;
      J = null;
      K = a.a();
      L = null;
      M = null;
      N = null;
      O = null;
      P = null;
      Q = null;
      R = null;
      S = -1;
      return this;
    }
    
    public a a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i1 = paramlk.a();
        switch (i1)
        {
        default: 
          if (lt.a(paramlk, i1)) {}
          break;
        case 0: 
          return this;
        case 10: 
          a = paramlk.h();
          break;
        case 18: 
          b = paramlk.h();
          break;
        case 24: 
          c = Long.valueOf(paramlk.e());
          break;
        case 32: 
          d = Long.valueOf(paramlk.e());
          break;
        case 40: 
          e = Long.valueOf(paramlk.e());
          break;
        case 48: 
          f = Long.valueOf(paramlk.e());
          break;
        case 56: 
          g = Long.valueOf(paramlk.e());
          break;
        case 64: 
          h = Long.valueOf(paramlk.e());
          break;
        case 72: 
          i = Long.valueOf(paramlk.e());
          break;
        case 80: 
          j = Long.valueOf(paramlk.e());
          break;
        case 88: 
          k = Long.valueOf(paramlk.e());
          break;
        case 96: 
          l = Long.valueOf(paramlk.e());
          break;
        case 106: 
          m = paramlk.h();
          break;
        case 112: 
          n = Long.valueOf(paramlk.e());
          break;
        case 120: 
          o = Long.valueOf(paramlk.e());
          break;
        case 128: 
          p = Long.valueOf(paramlk.e());
          break;
        case 136: 
          q = Long.valueOf(paramlk.e());
          break;
        case 144: 
          r = Long.valueOf(paramlk.e());
          break;
        case 152: 
          s = Long.valueOf(paramlk.e());
          break;
        case 160: 
          t = Long.valueOf(paramlk.e());
          break;
        case 168: 
          L = Long.valueOf(paramlk.e());
          break;
        case 176: 
          u = Long.valueOf(paramlk.e());
          break;
        case 184: 
          v = Long.valueOf(paramlk.e());
          break;
        case 194: 
          M = paramlk.h();
          break;
        case 200: 
          Q = Long.valueOf(paramlk.e());
          break;
        case 208: 
          i1 = paramlk.f();
          switch (i1)
          {
          default: 
            break;
          case 0: 
          case 1: 
          case 2: 
          case 3: 
          case 4: 
          case 5: 
          case 6: 
            N = Integer.valueOf(i1);
          }
          break;
        case 218: 
          w = paramlk.h();
          break;
        case 224: 
          O = Boolean.valueOf(paramlk.g());
          break;
        case 234: 
          x = paramlk.h();
          break;
        case 242: 
          P = paramlk.h();
          break;
        case 248: 
          y = Long.valueOf(paramlk.e());
          break;
        case 256: 
          z = Long.valueOf(paramlk.e());
          break;
        case 264: 
          A = Long.valueOf(paramlk.e());
          break;
        case 274: 
          B = paramlk.h();
          break;
        case 280: 
          C = Long.valueOf(paramlk.e());
          break;
        case 288: 
          D = Long.valueOf(paramlk.e());
          break;
        case 296: 
          E = Long.valueOf(paramlk.e());
          break;
        case 306: 
          if (F == null) {
            F = new b.b();
          }
          paramlk.a(F);
          break;
        case 312: 
          G = Long.valueOf(paramlk.e());
          break;
        case 320: 
          H = Long.valueOf(paramlk.e());
          break;
        case 328: 
          I = Long.valueOf(paramlk.e());
          break;
        case 336: 
          J = Long.valueOf(paramlk.e());
          break;
        case 346: 
          int i2 = lt.b(paramlk, 346);
          if (K == null) {}
          a[] arrayOfa;
          for (i1 = 0;; i1 = K.length)
          {
            arrayOfa = new a[i2 + i1];
            i2 = i1;
            if (i1 != 0)
            {
              System.arraycopy(K, 0, arrayOfa, 0, i1);
              i2 = i1;
            }
            while (i2 < arrayOfa.length - 1)
            {
              arrayOfa[i2] = new a();
              paramlk.a(arrayOfa[i2]);
              paramlk.a();
              i2 += 1;
            }
          }
          arrayOfa[i2] = new a();
          paramlk.a(arrayOfa[i2]);
          K = arrayOfa;
          break;
        case 1610: 
          if (R == null) {
            R = new b.c();
          }
          paramlk.a(R);
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != null) {
        paramzzsn.a(1, a);
      }
      if (b != null) {
        paramzzsn.a(2, b);
      }
      if (c != null) {
        paramzzsn.b(3, c.longValue());
      }
      if (d != null) {
        paramzzsn.b(4, d.longValue());
      }
      if (e != null) {
        paramzzsn.b(5, e.longValue());
      }
      if (f != null) {
        paramzzsn.b(6, f.longValue());
      }
      if (g != null) {
        paramzzsn.b(7, g.longValue());
      }
      if (h != null) {
        paramzzsn.b(8, h.longValue());
      }
      if (i != null) {
        paramzzsn.b(9, i.longValue());
      }
      if (j != null) {
        paramzzsn.b(10, j.longValue());
      }
      if (k != null) {
        paramzzsn.b(11, k.longValue());
      }
      if (l != null) {
        paramzzsn.b(12, l.longValue());
      }
      if (m != null) {
        paramzzsn.a(13, m);
      }
      if (n != null) {
        paramzzsn.b(14, n.longValue());
      }
      if (o != null) {
        paramzzsn.b(15, o.longValue());
      }
      if (p != null) {
        paramzzsn.b(16, p.longValue());
      }
      if (q != null) {
        paramzzsn.b(17, q.longValue());
      }
      if (r != null) {
        paramzzsn.b(18, r.longValue());
      }
      if (s != null) {
        paramzzsn.b(19, s.longValue());
      }
      if (t != null) {
        paramzzsn.b(20, t.longValue());
      }
      if (L != null) {
        paramzzsn.b(21, L.longValue());
      }
      if (u != null) {
        paramzzsn.b(22, u.longValue());
      }
      if (v != null) {
        paramzzsn.b(23, v.longValue());
      }
      if (M != null) {
        paramzzsn.a(24, M);
      }
      if (Q != null) {
        paramzzsn.b(25, Q.longValue());
      }
      if (N != null) {
        paramzzsn.a(26, N.intValue());
      }
      if (w != null) {
        paramzzsn.a(27, w);
      }
      if (O != null) {
        paramzzsn.a(28, O.booleanValue());
      }
      if (x != null) {
        paramzzsn.a(29, x);
      }
      if (P != null) {
        paramzzsn.a(30, P);
      }
      if (y != null) {
        paramzzsn.b(31, y.longValue());
      }
      if (z != null) {
        paramzzsn.b(32, z.longValue());
      }
      if (A != null) {
        paramzzsn.b(33, A.longValue());
      }
      if (B != null) {
        paramzzsn.a(34, B);
      }
      if (C != null) {
        paramzzsn.b(35, C.longValue());
      }
      if (D != null) {
        paramzzsn.b(36, D.longValue());
      }
      if (E != null) {
        paramzzsn.b(37, E.longValue());
      }
      if (F != null) {
        paramzzsn.a(38, F);
      }
      if (G != null) {
        paramzzsn.b(39, G.longValue());
      }
      if (H != null) {
        paramzzsn.b(40, H.longValue());
      }
      if (I != null) {
        paramzzsn.b(41, I.longValue());
      }
      if (J != null) {
        paramzzsn.b(42, J.longValue());
      }
      if ((K != null) && (K.length > 0))
      {
        int i1 = 0;
        while (i1 < K.length)
        {
          a locala = K[i1];
          if (locala != null) {
            paramzzsn.a(43, locala);
          }
          i1 += 1;
        }
      }
      if (R != null) {
        paramzzsn.a(201, R);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int i2 = super.b();
      int i1 = i2;
      if (a != null) {
        i1 = i2 + zzsn.b(1, a);
      }
      i2 = i1;
      if (b != null) {
        i2 = i1 + zzsn.b(2, b);
      }
      i1 = i2;
      if (c != null) {
        i1 = i2 + zzsn.d(3, c.longValue());
      }
      i2 = i1;
      if (d != null) {
        i2 = i1 + zzsn.d(4, d.longValue());
      }
      i1 = i2;
      if (e != null) {
        i1 = i2 + zzsn.d(5, e.longValue());
      }
      i2 = i1;
      if (f != null) {
        i2 = i1 + zzsn.d(6, f.longValue());
      }
      i1 = i2;
      if (g != null) {
        i1 = i2 + zzsn.d(7, g.longValue());
      }
      i2 = i1;
      if (h != null) {
        i2 = i1 + zzsn.d(8, h.longValue());
      }
      i1 = i2;
      if (i != null) {
        i1 = i2 + zzsn.d(9, i.longValue());
      }
      i2 = i1;
      if (j != null) {
        i2 = i1 + zzsn.d(10, j.longValue());
      }
      i1 = i2;
      if (k != null) {
        i1 = i2 + zzsn.d(11, k.longValue());
      }
      i2 = i1;
      if (l != null) {
        i2 = i1 + zzsn.d(12, l.longValue());
      }
      i1 = i2;
      if (m != null) {
        i1 = i2 + zzsn.b(13, m);
      }
      i2 = i1;
      if (n != null) {
        i2 = i1 + zzsn.d(14, n.longValue());
      }
      i1 = i2;
      if (o != null) {
        i1 = i2 + zzsn.d(15, o.longValue());
      }
      i2 = i1;
      if (p != null) {
        i2 = i1 + zzsn.d(16, p.longValue());
      }
      i1 = i2;
      if (q != null) {
        i1 = i2 + zzsn.d(17, q.longValue());
      }
      i2 = i1;
      if (r != null) {
        i2 = i1 + zzsn.d(18, r.longValue());
      }
      i1 = i2;
      if (s != null) {
        i1 = i2 + zzsn.d(19, s.longValue());
      }
      i2 = i1;
      if (t != null) {
        i2 = i1 + zzsn.d(20, t.longValue());
      }
      i1 = i2;
      if (L != null) {
        i1 = i2 + zzsn.d(21, L.longValue());
      }
      i2 = i1;
      if (u != null) {
        i2 = i1 + zzsn.d(22, u.longValue());
      }
      i1 = i2;
      if (v != null) {
        i1 = i2 + zzsn.d(23, v.longValue());
      }
      i2 = i1;
      if (M != null) {
        i2 = i1 + zzsn.b(24, M);
      }
      i1 = i2;
      if (Q != null) {
        i1 = i2 + zzsn.d(25, Q.longValue());
      }
      i2 = i1;
      if (N != null) {
        i2 = i1 + zzsn.b(26, N.intValue());
      }
      i1 = i2;
      if (w != null) {
        i1 = i2 + zzsn.b(27, w);
      }
      i2 = i1;
      if (O != null) {
        i2 = i1 + zzsn.b(28, O.booleanValue());
      }
      i1 = i2;
      if (x != null) {
        i1 = i2 + zzsn.b(29, x);
      }
      i2 = i1;
      if (P != null) {
        i2 = i1 + zzsn.b(30, P);
      }
      i1 = i2;
      if (y != null) {
        i1 = i2 + zzsn.d(31, y.longValue());
      }
      i2 = i1;
      if (z != null) {
        i2 = i1 + zzsn.d(32, z.longValue());
      }
      i1 = i2;
      if (A != null) {
        i1 = i2 + zzsn.d(33, A.longValue());
      }
      i2 = i1;
      if (B != null) {
        i2 = i1 + zzsn.b(34, B);
      }
      i1 = i2;
      if (C != null) {
        i1 = i2 + zzsn.d(35, C.longValue());
      }
      i2 = i1;
      if (D != null) {
        i2 = i1 + zzsn.d(36, D.longValue());
      }
      i1 = i2;
      if (E != null) {
        i1 = i2 + zzsn.d(37, E.longValue());
      }
      i2 = i1;
      if (F != null) {
        i2 = i1 + zzsn.c(38, F);
      }
      i1 = i2;
      if (G != null) {
        i1 = i2 + zzsn.d(39, G.longValue());
      }
      i2 = i1;
      if (H != null) {
        i2 = i1 + zzsn.d(40, H.longValue());
      }
      int i3 = i2;
      if (I != null) {
        i3 = i2 + zzsn.d(41, I.longValue());
      }
      i1 = i3;
      if (J != null) {
        i1 = i3 + zzsn.d(42, J.longValue());
      }
      i2 = i1;
      if (K != null)
      {
        i2 = i1;
        if (K.length > 0)
        {
          i2 = 0;
          while (i2 < K.length)
          {
            a locala = K[i2];
            i3 = i1;
            if (locala != null) {
              i3 = i1 + zzsn.c(43, locala);
            }
            i2 += 1;
            i1 = i3;
          }
          i2 = i1;
        }
      }
      i1 = i2;
      if (R != null) {
        i1 = i2 + zzsn.c(201, R);
      }
      return i1;
    }
    
    public static final class a
      extends lq
    {
      private static volatile a[] c;
      public Long a;
      public Long b;
      
      public a()
      {
        c();
      }
      
      public static a[] a()
      {
        if (c == null) {}
        synchronized (lp.a)
        {
          if (c == null) {
            c = new a[0];
          }
          return c;
        }
      }
      
      public a a(lk paramlk)
        throws IOException
      {
        for (;;)
        {
          int i = paramlk.a();
          switch (i)
          {
          default: 
            if (lt.a(paramlk, i)) {}
            break;
          case 0: 
            return this;
          case 8: 
            a = Long.valueOf(paramlk.e());
            break;
          case 16: 
            b = Long.valueOf(paramlk.e());
          }
        }
      }
      
      public void a(zzsn paramzzsn)
        throws IOException
      {
        if (a != null) {
          paramzzsn.b(1, a.longValue());
        }
        if (b != null) {
          paramzzsn.b(2, b.longValue());
        }
        super.a(paramzzsn);
      }
      
      protected int b()
      {
        int j = super.b();
        int i = j;
        if (a != null) {
          i = j + zzsn.d(1, a.longValue());
        }
        j = i;
        if (b != null) {
          j = i + zzsn.d(2, b.longValue());
        }
        return j;
      }
      
      public a c()
      {
        a = null;
        b = null;
        S = -1;
        return this;
      }
    }
  }
  
  public static final class b
    extends lq
  {
    public Long a;
    public Integer b;
    public Boolean c;
    public Integer d;
    
    public b()
    {
      a();
    }
    
    public b a()
    {
      a = null;
      b = null;
      c = null;
      d = null;
      S = -1;
      return this;
    }
    
    public b a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (lt.a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 8: 
          a = Long.valueOf(paramlk.e());
          break;
        case 16: 
          i = paramlk.f();
          switch (i)
          {
          default: 
            break;
          case 0: 
          case 1: 
          case 2: 
          case 3: 
            b = Integer.valueOf(i);
          }
          break;
        case 24: 
          c = Boolean.valueOf(paramlk.g());
          break;
        case 32: 
          i = paramlk.f();
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
          case 18: 
          case 19: 
          case 20: 
          case 21: 
          case 22: 
          case 23: 
          case 24: 
          case 25: 
          case 26: 
          case 27: 
          case 28: 
          case 29: 
          case 30: 
          case 31: 
            d = Integer.valueOf(i);
          }
          break;
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != null) {
        paramzzsn.b(1, a.longValue());
      }
      if (b != null) {
        paramzzsn.a(2, b.intValue());
      }
      if (c != null) {
        paramzzsn.a(3, c.booleanValue());
      }
      if (d != null) {
        paramzzsn.a(4, d.intValue());
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int j = super.b();
      int i = j;
      if (a != null) {
        i = j + zzsn.d(1, a.longValue());
      }
      j = i;
      if (b != null) {
        j = i + zzsn.b(2, b.intValue());
      }
      i = j;
      if (c != null) {
        i = j + zzsn.b(3, c.booleanValue());
      }
      j = i;
      if (d != null) {
        j = i + zzsn.b(4, d.intValue());
      }
      return j;
    }
  }
  
  public static final class c
    extends lq
  {
    public Long a;
    public String b;
    public byte[] c;
    
    public c()
    {
      a();
    }
    
    public c a()
    {
      a = null;
      b = null;
      c = null;
      S = -1;
      return this;
    }
    
    public c a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (lt.a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 8: 
          a = Long.valueOf(paramlk.e());
          break;
        case 26: 
          b = paramlk.h();
          break;
        case 34: 
          c = paramlk.i();
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != null) {
        paramzzsn.b(1, a.longValue());
      }
      if (b != null) {
        paramzzsn.a(3, b);
      }
      if (c != null) {
        paramzzsn.a(4, c);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int j = super.b();
      int i = j;
      if (a != null) {
        i = j + zzsn.d(1, a.longValue());
      }
      j = i;
      if (b != null) {
        j = i + zzsn.b(3, b);
      }
      i = j;
      if (c != null) {
        i = j + zzsn.b(4, c);
      }
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.az.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */