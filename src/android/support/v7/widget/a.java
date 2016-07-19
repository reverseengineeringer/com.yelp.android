package android.support.v7.widget;

import com.yelp.android.g.h.b;
import java.util.ArrayList;
import java.util.List;

class a
  implements h.a
{
  final ArrayList<b> a = new ArrayList();
  final ArrayList<b> b = new ArrayList();
  final a c;
  Runnable d;
  final boolean e;
  final h f;
  private com.yelp.android.g.h.a<b> g = new h.b(30);
  
  a(a parama)
  {
    this(parama, false);
  }
  
  a(a parama, boolean paramBoolean)
  {
    c = parama;
    e = paramBoolean;
    f = new h(this);
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    int j = b.size() - 1;
    b localb;
    if (j >= 0)
    {
      localb = (b)b.get(j);
      int k;
      int i;
      if (a == 3) {
        if (b < d)
        {
          k = b;
          i = d;
          label65:
          if ((paramInt1 < k) || (paramInt1 > i)) {
            break label198;
          }
          if (k != b) {
            break label155;
          }
          if (paramInt2 != 0) {
            break label135;
          }
          d += 1;
          label102:
          paramInt1 += 1;
          label106:
          i = paramInt1;
        }
      }
      for (;;)
      {
        j -= 1;
        paramInt1 = i;
        break;
        k = d;
        i = b;
        break label65;
        label135:
        if (paramInt2 != 1) {
          break label102;
        }
        d -= 1;
        break label102;
        label155:
        if (paramInt2 == 0) {
          b += 1;
        }
        for (;;)
        {
          paramInt1 -= 1;
          break;
          if (paramInt2 == 1) {
            b -= 1;
          }
        }
        label198:
        if (paramInt1 < b)
        {
          if (paramInt2 == 0)
          {
            b += 1;
            d += 1;
            break label106;
          }
          if (paramInt2 == 1)
          {
            b -= 1;
            d -= 1;
          }
        }
        break label106;
        if (b <= paramInt1)
        {
          if (a == 0)
          {
            i = paramInt1 - d;
          }
          else
          {
            i = paramInt1;
            if (a == 1) {
              i = paramInt1 + d;
            }
          }
        }
        else if (paramInt2 == 0)
        {
          b += 1;
          i = paramInt1;
        }
        else
        {
          i = paramInt1;
          if (paramInt2 == 1)
          {
            b -= 1;
            i = paramInt1;
          }
        }
      }
    }
    paramInt2 = b.size() - 1;
    if (paramInt2 >= 0)
    {
      localb = (b)b.get(paramInt2);
      if (a == 3) {
        if ((d == b) || (d < 0))
        {
          b.remove(paramInt2);
          a(localb);
        }
      }
      for (;;)
      {
        paramInt2 -= 1;
        break;
        if (d <= 0)
        {
          b.remove(paramInt2);
          a(localb);
        }
      }
    }
    return paramInt1;
  }
  
  private void b(b paramb)
  {
    g(paramb);
  }
  
  private boolean b(int paramInt)
  {
    int k = b.size();
    int i = 0;
    while (i < k)
    {
      b localb = (b)b.get(i);
      if (a == 3)
      {
        if (a(d, i + 1) == paramInt) {
          return true;
        }
      }
      else if (a == 0)
      {
        int m = b;
        int n = d;
        int j = b;
        while (j < m + n)
        {
          if (a(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void c(b paramb)
  {
    int i2 = b;
    int k = b + d;
    int j = -1;
    int i = b;
    int n = 0;
    if (i < k) {
      if ((c.a(i) != null) || (b(i)))
      {
        if (j != 0) {
          break label216;
        }
        e(a(1, i2, n, null));
      }
    }
    label97:
    label211:
    label216:
    for (int m = 1;; m = 0)
    {
      j = 1;
      if (m != 0)
      {
        m = i - n;
        i = k - n;
        k = 1;
        n = k;
        k = i;
        i = m + 1;
        break;
        if (j != 1) {
          break label211;
        }
        g(a(1, i2, n, null));
      }
      for (j = 1;; j = 0)
      {
        int i1 = 0;
        m = j;
        j = i1;
        break;
        n += 1;
        m = i;
        i = k;
        k = n;
        break label97;
        b localb = paramb;
        if (n != d)
        {
          a(paramb);
          localb = a(1, i2, n, null);
        }
        if (j == 0)
        {
          e(localb);
          return;
        }
        g(localb);
        return;
      }
    }
  }
  
  private void d(b paramb)
  {
    int k = b;
    int i2 = b;
    int i3 = d;
    int i = b;
    int i1 = -1;
    int j = 0;
    if (i < i2 + i3)
    {
      int m;
      int n;
      if ((c.a(i) != null) || (b(i)))
      {
        m = j;
        n = k;
        if (i1 == 0)
        {
          e(a(2, k, j, c));
          m = 0;
          n = i;
        }
        k = n;
      }
      for (j = 1;; j = 0)
      {
        i += 1;
        m += 1;
        i1 = j;
        j = m;
        break;
        m = j;
        n = k;
        if (i1 == 1)
        {
          g(a(2, k, j, c));
          m = 0;
          n = i;
        }
        k = n;
      }
    }
    Object localObject = paramb;
    if (j != d)
    {
      localObject = c;
      a(paramb);
      localObject = a(2, k, j, localObject);
    }
    if (i1 == 0)
    {
      e((b)localObject);
      return;
    }
    g((b)localObject);
  }
  
  private void e(b paramb)
  {
    if ((a == 0) || (a == 3)) {
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }
    int i1 = b(b, a);
    int j = b;
    int k;
    int n;
    int m;
    label108:
    int i2;
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("op should be remove or update." + paramb);
    case 2: 
      k = 1;
      n = 1;
      m = 1;
      if (m >= d) {
        break label290;
      }
      i2 = b(b + k * m, a);
      switch (a)
      {
      default: 
        i = 0;
        label166:
        if (i == 0) {}
        break;
      }
      break;
    }
    for (int i = n + 1;; i = n)
    {
      m += 1;
      n = i;
      break label108;
      k = 0;
      break;
      if (i2 == i1 + 1)
      {
        i = 1;
        break label166;
      }
      i = 0;
      break label166;
      if (i2 == i1)
      {
        i = 1;
        break label166;
      }
      i = 0;
      break label166;
      localObject = a(a, i1, n, c);
      a((b)localObject, j);
      a((b)localObject);
      i = j;
      if (a == 2) {
        i = j + n;
      }
      n = 1;
      i1 = i2;
      j = i;
    }
    label290:
    Object localObject = c;
    a(paramb);
    if (n > 0)
    {
      paramb = a(a, i1, n, localObject);
      a(paramb, j);
      a(paramb);
    }
  }
  
  private void f(b paramb)
  {
    g(paramb);
  }
  
  private void g(b paramb)
  {
    b.add(paramb);
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("Unknown update op type for " + paramb);
    case 0: 
      c.c(b, d);
      return;
    case 3: 
      c.d(b, d);
      return;
    case 1: 
      c.b(b, d);
      return;
    }
    c.a(b, d, c);
  }
  
  int a(int paramInt)
  {
    return a(paramInt, 0);
  }
  
  int a(int paramInt1, int paramInt2)
  {
    int k = b.size();
    int j = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt2;
    b localb;
    if (j < k)
    {
      localb = (b)b.get(j);
      if (a == 3) {
        if (b == paramInt2) {
          paramInt1 = d;
        }
      }
    }
    for (;;)
    {
      j += 1;
      paramInt2 = paramInt1;
      break;
      int i = paramInt2;
      if (b < paramInt2) {
        i = paramInt2 - 1;
      }
      paramInt1 = i;
      if (d <= i)
      {
        paramInt1 = i + 1;
        continue;
        paramInt1 = paramInt2;
        if (b <= paramInt2) {
          if (a == 1)
          {
            if (paramInt2 < b + d)
            {
              paramInt1 = -1;
              return paramInt1;
            }
            paramInt1 = paramInt2 - d;
          }
          else
          {
            paramInt1 = paramInt2;
            if (a == 0) {
              paramInt1 = paramInt2 + d;
            }
          }
        }
      }
    }
  }
  
  public b a(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    b localb = (b)g.a();
    if (localb == null) {
      return new b(paramInt1, paramInt2, paramInt3, paramObject);
    }
    a = paramInt1;
    b = paramInt2;
    d = paramInt3;
    c = paramObject;
    return localb;
  }
  
  void a()
  {
    a(a);
    a(b);
  }
  
  public void a(b paramb)
  {
    if (!e)
    {
      c = null;
      g.a(paramb);
    }
  }
  
  void a(b paramb, int paramInt)
  {
    c.a(paramb);
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 1: 
      c.a(paramInt, d);
      return;
    }
    c.a(paramInt, d, c);
  }
  
  void a(List<b> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      a((b)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  void b()
  {
    f.a(a);
    int j = a.size();
    int i = 0;
    if (i < j)
    {
      b localb = (b)a.get(i);
      switch (a)
      {
      }
      for (;;)
      {
        if (d != null) {
          d.run();
        }
        i += 1;
        break;
        f(localb);
        continue;
        c(localb);
        continue;
        d(localb);
        continue;
        b(localb);
      }
    }
    a.clear();
  }
  
  void c()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      c.b((b)b.get(i));
      i += 1;
    }
    a(b);
  }
  
  boolean d()
  {
    return a.size() > 0;
  }
  
  void e()
  {
    c();
    int j = a.size();
    int i = 0;
    if (i < j)
    {
      b localb = (b)a.get(i);
      switch (a)
      {
      }
      for (;;)
      {
        if (d != null) {
          d.run();
        }
        i += 1;
        break;
        c.b(localb);
        c.c(b, d);
        continue;
        c.b(localb);
        c.a(b, d);
        continue;
        c.b(localb);
        c.a(b, d, c);
        continue;
        c.b(localb);
        c.d(b, d);
      }
    }
    a(a);
  }
  
  static abstract interface a
  {
    public abstract RecyclerView.u a(int paramInt);
    
    public abstract void a(int paramInt1, int paramInt2);
    
    public abstract void a(int paramInt1, int paramInt2, Object paramObject);
    
    public abstract void a(a.b paramb);
    
    public abstract void b(int paramInt1, int paramInt2);
    
    public abstract void b(a.b paramb);
    
    public abstract void c(int paramInt1, int paramInt2);
    
    public abstract void d(int paramInt1, int paramInt2);
  }
  
  static class b
  {
    int a;
    int b;
    Object c;
    int d;
    
    b(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
    {
      a = paramInt1;
      b = paramInt2;
      d = paramInt3;
      c = paramObject;
    }
    
    String a()
    {
      switch (a)
      {
      default: 
        return "??";
      case 0: 
        return "add";
      case 1: 
        return "rm";
      case 2: 
        return "up";
      }
      return "mv";
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        do
        {
          do
          {
            return true;
            if ((paramObject == null) || (getClass() != paramObject.getClass())) {
              return false;
            }
            paramObject = (b)paramObject;
            if (a != a) {
              return false;
            }
          } while ((a == 3) && (Math.abs(d - b) == 1) && (d == b) && (b == d));
          if (d != d) {
            return false;
          }
          if (b != b) {
            return false;
          }
          if (c == null) {
            break;
          }
        } while (c.equals(c));
        return false;
      } while (c == null);
      return false;
    }
    
    public int hashCode()
    {
      return (a * 31 + b) * 31 + d;
    }
    
    public String toString()
    {
      return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + b + "c:" + d + ",p:" + c + "]";
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */