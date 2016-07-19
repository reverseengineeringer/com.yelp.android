package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public abstract interface lu
{
  public static final class a
    extends ll<a>
  {
    public String[] a;
    public String[] b;
    public int[] c;
    public long[] d;
    
    public a()
    {
      a();
    }
    
    public a a()
    {
      a = lt.f;
      b = lt.f;
      c = lt.a;
      d = lt.b;
      m = null;
      S = -1;
      return this;
    }
    
    public a a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        int j;
        Object localObject;
        int k;
        switch (i)
        {
        default: 
          if (a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 10: 
          j = lt.b(paramlk, 10);
          if (a == null) {}
          for (i = 0;; i = a.length)
          {
            localObject = new String[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(a, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = paramlk.h();
              paramlk.a();
              j += 1;
            }
          }
          localObject[j] = paramlk.h();
          a = ((String[])localObject);
          break;
        case 18: 
          j = lt.b(paramlk, 18);
          if (b == null) {}
          for (i = 0;; i = b.length)
          {
            localObject = new String[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(b, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = paramlk.h();
              paramlk.a();
              j += 1;
            }
          }
          localObject[j] = paramlk.h();
          b = ((String[])localObject);
          break;
        case 24: 
          j = lt.b(paramlk, 24);
          if (c == null) {}
          for (i = 0;; i = c.length)
          {
            localObject = new int[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(c, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = paramlk.f();
              paramlk.a();
              j += 1;
            }
          }
          localObject[j] = paramlk.f();
          c = ((int[])localObject);
          break;
        case 26: 
          k = paramlk.c(paramlk.k());
          i = paramlk.q();
          j = 0;
          while (paramlk.o() > 0)
          {
            paramlk.f();
            j += 1;
          }
          paramlk.e(i);
          if (c == null) {}
          for (i = 0;; i = c.length)
          {
            localObject = new int[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(c, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length)
            {
              localObject[j] = paramlk.f();
              j += 1;
            }
          }
          c = ((int[])localObject);
          paramlk.d(k);
          break;
        case 32: 
          j = lt.b(paramlk, 32);
          if (d == null) {}
          for (i = 0;; i = d.length)
          {
            localObject = new long[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(d, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = paramlk.e();
              paramlk.a();
              j += 1;
            }
          }
          localObject[j] = paramlk.e();
          d = ((long[])localObject);
          break;
        case 34: 
          k = paramlk.c(paramlk.k());
          i = paramlk.q();
          j = 0;
          while (paramlk.o() > 0)
          {
            paramlk.e();
            j += 1;
          }
          paramlk.e(i);
          if (d == null) {}
          for (i = 0;; i = d.length)
          {
            localObject = new long[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(d, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length)
            {
              localObject[j] = paramlk.e();
              j += 1;
            }
          }
          d = ((long[])localObject);
          paramlk.d(k);
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      int j = 0;
      int i;
      String str;
      if ((a != null) && (a.length > 0))
      {
        i = 0;
        while (i < a.length)
        {
          str = a[i];
          if (str != null) {
            paramzzsn.a(1, str);
          }
          i += 1;
        }
      }
      if ((b != null) && (b.length > 0))
      {
        i = 0;
        while (i < b.length)
        {
          str = b[i];
          if (str != null) {
            paramzzsn.a(2, str);
          }
          i += 1;
        }
      }
      if ((c != null) && (c.length > 0))
      {
        i = 0;
        while (i < c.length)
        {
          paramzzsn.a(3, c[i]);
          i += 1;
        }
      }
      if ((d != null) && (d.length > 0))
      {
        i = j;
        while (i < d.length)
        {
          paramzzsn.b(4, d[i]);
          i += 1;
        }
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int i2 = 0;
      int i1 = super.b();
      int j;
      int k;
      String str;
      int n;
      int m;
      if ((a != null) && (a.length > 0))
      {
        i = 0;
        j = 0;
        for (k = 0; i < a.length; k = m)
        {
          str = a[i];
          n = j;
          m = k;
          if (str != null)
          {
            m = k + 1;
            n = j + zzsn.b(str);
          }
          i += 1;
          j = n;
        }
      }
      for (int i = i1 + j + k * 1;; i = i1)
      {
        j = i;
        if (b != null)
        {
          j = i;
          if (b.length > 0)
          {
            j = 0;
            k = 0;
            for (m = 0; j < b.length; m = n)
            {
              str = b[j];
              i1 = k;
              n = m;
              if (str != null)
              {
                n = m + 1;
                i1 = k + zzsn.b(str);
              }
              j += 1;
              k = i1;
            }
            j = i + k + m * 1;
          }
        }
        i = j;
        if (c != null)
        {
          i = j;
          if (c.length > 0)
          {
            i = 0;
            k = 0;
            while (i < c.length)
            {
              k += zzsn.b(c[i]);
              i += 1;
            }
            i = j + k + c.length * 1;
          }
        }
        j = i;
        if (d != null)
        {
          j = i;
          if (d.length > 0)
          {
            k = 0;
            j = i2;
            while (j < d.length)
            {
              k += zzsn.e(d[j]);
              j += 1;
            }
            j = i + k + d.length * 1;
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
              } while (!lp.a(a, a));
              bool1 = bool2;
            } while (!lp.a(b, b));
            bool1 = bool2;
          } while (!lp.a(c, c));
          bool1 = bool2;
        } while (!lp.a(d, d));
        if ((m != null) && (!m.b())) {
          break label127;
        }
        if (m == null) {
          break;
        }
        bool1 = bool2;
      } while (!m.b());
      return true;
      label127:
      return m.equals(m);
    }
    
    public int hashCode()
    {
      int j = getClass().getName().hashCode();
      int k = lp.a(a);
      int m = lp.a(b);
      int n = lp.a(c);
      int i1 = lp.a(d);
      if ((this.m == null) || (this.m.b())) {}
      for (int i = 0;; i = this.m.hashCode()) {
        return i + (((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31;
      }
    }
  }
  
  public static final class b
    extends ll<b>
  {
    public int a;
    public String b;
    public String c;
    
    public b()
    {
      a();
    }
    
    public b a()
    {
      a = 0;
      b = "";
      c = "";
      m = null;
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
          if (a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 8: 
          i = paramlk.f();
          switch (i)
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
            a = i;
          }
          break;
        case 18: 
          b = paramlk.h();
          break;
        case 26: 
          c = paramlk.h();
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != 0) {
        paramzzsn.a(1, a);
      }
      if (!b.equals("")) {
        paramzzsn.a(2, b);
      }
      if (!c.equals("")) {
        paramzzsn.a(3, c);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int j = super.b();
      int i = j;
      if (a != 0) {
        i = j + zzsn.b(1, a);
      }
      j = i;
      if (!b.equals("")) {
        j = i + zzsn.b(2, b);
      }
      i = j;
      if (!c.equals("")) {
        i = j + zzsn.b(3, c);
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
            } while (!(paramObject instanceof b));
            paramObject = (b)paramObject;
            bool1 = bool2;
          } while (a != a);
          if (b != null) {
            break;
          }
          bool1 = bool2;
        } while (b != null);
        if (c != null) {
          break label124;
        }
        bool1 = bool2;
      } while (c != null);
      for (;;)
      {
        if ((m == null) || (m.b()))
        {
          if (m != null)
          {
            bool1 = bool2;
            if (!m.b()) {
              break;
            }
          }
          return true;
          if (b.equals(b)) {
            break label54;
          }
          return false;
          label124:
          if (!c.equals(c)) {
            return false;
          }
        }
      }
      return m.equals(m);
    }
    
    public int hashCode()
    {
      int m = 0;
      int n = getClass().getName().hashCode();
      int i1 = a;
      int i;
      int j;
      if (b == null)
      {
        i = 0;
        if (c != null) {
          break label101;
        }
        j = 0;
        label39:
        k = m;
        if (this.m != null) {
          if (!this.m.b()) {
            break label112;
          }
        }
      }
      label101:
      label112:
      for (int k = m;; k = this.m.hashCode())
      {
        return (j + (i + ((n + 527) * 31 + i1) * 31) * 31) * 31 + k;
        i = b.hashCode();
        break;
        j = c.hashCode();
        break label39;
      }
    }
  }
  
  public static final class c
    extends ll<c>
  {
    public byte[] a;
    public byte[][] b;
    public boolean c;
    
    public c()
    {
      a();
    }
    
    public c a()
    {
      a = lt.h;
      b = lt.g;
      c = false;
      m = null;
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
          if (a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 10: 
          a = paramlk.i();
          break;
        case 18: 
          int j = lt.b(paramlk, 18);
          if (b == null) {}
          byte[][] arrayOfByte;
          for (i = 0;; i = b.length)
          {
            arrayOfByte = new byte[j + i][];
            j = i;
            if (i != 0)
            {
              System.arraycopy(b, 0, arrayOfByte, 0, i);
              j = i;
            }
            while (j < arrayOfByte.length - 1)
            {
              arrayOfByte[j] = paramlk.i();
              paramlk.a();
              j += 1;
            }
          }
          arrayOfByte[j] = paramlk.i();
          b = arrayOfByte;
          break;
        case 24: 
          c = paramlk.g();
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (!Arrays.equals(a, lt.h)) {
        paramzzsn.a(1, a);
      }
      if ((b != null) && (b.length > 0))
      {
        int i = 0;
        while (i < b.length)
        {
          byte[] arrayOfByte = b[i];
          if (arrayOfByte != null) {
            paramzzsn.a(2, arrayOfByte);
          }
          i += 1;
        }
      }
      if (c) {
        paramzzsn.a(3, c);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int n = 0;
      int j = super.b();
      int i = j;
      if (!Arrays.equals(a, lt.h)) {
        i = j + zzsn.b(1, a);
      }
      j = i;
      if (b != null)
      {
        j = i;
        if (b.length > 0)
        {
          int k = 0;
          int m = 0;
          j = n;
          while (j < b.length)
          {
            byte[] arrayOfByte = b[j];
            int i1 = k;
            n = m;
            if (arrayOfByte != null)
            {
              n = m + 1;
              i1 = k + zzsn.c(arrayOfByte);
            }
            j += 1;
            k = i1;
            m = n;
          }
          j = i + k + m * 1;
        }
      }
      i = j;
      if (c) {
        i = j + zzsn.b(3, c);
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
            } while (!Arrays.equals(a, a));
            bool1 = bool2;
          } while (!lp.a(b, b));
          bool1 = bool2;
        } while (c != c);
        if ((m != null) && (!m.b())) {
          break label108;
        }
        if (m == null) {
          break;
        }
        bool1 = bool2;
      } while (!m.b());
      return true;
      label108:
      return m.equals(m);
    }
    
    public int hashCode()
    {
      int k = getClass().getName().hashCode();
      int m = Arrays.hashCode(a);
      int n = lp.a(b);
      int i;
      if (c)
      {
        i = 1231;
        if ((this.m != null) && (!this.m.b())) {
          break label94;
        }
      }
      label94:
      for (int j = 0;; j = this.m.hashCode())
      {
        return j + (i + (((k + 527) * 31 + m) * 31 + n) * 31) * 31;
        i = 1237;
        break;
      }
    }
  }
  
  public static final class d
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
    
    public d()
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
  
  public static final class e
    extends ll<e>
  {
    private static volatile e[] c;
    public String a;
    public String b;
    
    public e()
    {
      c();
    }
    
    public static e[] a()
    {
      if (c == null) {}
      synchronized (lp.a)
      {
        if (c == null) {
          c = new e[0];
        }
        return c;
      }
    }
    
    public e a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 10: 
          a = paramlk.h();
          break;
        case 18: 
          b = paramlk.h();
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (!a.equals("")) {
        paramzzsn.a(1, a);
      }
      if (!b.equals("")) {
        paramzzsn.a(2, b);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int j = super.b();
      int i = j;
      if (!a.equals("")) {
        i = j + zzsn.b(1, a);
      }
      j = i;
      if (!b.equals("")) {
        j = i + zzsn.b(2, b);
      }
      return j;
    }
    
    public e c()
    {
      a = "";
      b = "";
      m = null;
      S = -1;
      return this;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (paramObject == this) {
        bool1 = true;
      }
      label41:
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof e));
          paramObject = (e)paramObject;
          if (a != null) {
            break;
          }
          bool1 = bool2;
        } while (a != null);
        if (b != null) {
          break label111;
        }
        bool1 = bool2;
      } while (b != null);
      for (;;)
      {
        if ((m == null) || (m.b()))
        {
          if (m != null)
          {
            bool1 = bool2;
            if (!m.b()) {
              break;
            }
          }
          return true;
          if (a.equals(a)) {
            break label41;
          }
          return false;
          label111:
          if (!b.equals(b)) {
            return false;
          }
        }
      }
      return m.equals(m);
    }
    
    public int hashCode()
    {
      int m = 0;
      int n = getClass().getName().hashCode();
      int i;
      int j;
      if (a == null)
      {
        i = 0;
        if (b != null) {
          break label89;
        }
        j = 0;
        label33:
        k = m;
        if (this.m != null) {
          if (!this.m.b()) {
            break label100;
          }
        }
      }
      label89:
      label100:
      for (int k = m;; k = this.m.hashCode())
      {
        return (j + (i + (n + 527) * 31) * 31) * 31 + k;
        i = a.hashCode();
        break;
        j = b.hashCode();
        break label33;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */