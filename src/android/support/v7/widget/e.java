package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

class e
{
  final b a;
  final a b;
  final List<View> c;
  
  e(b paramb)
  {
    a = paramb;
    b = new a();
    c = new ArrayList();
  }
  
  private int e(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = a.a();
    int i = paramInt;
    for (;;)
    {
      if (i >= j) {
        break label72;
      }
      int k = paramInt - (i - b.e(i));
      if (k == 0) {
        for (;;)
        {
          paramInt = i;
          if (!b.c(i)) {
            break;
          }
          i += 1;
        }
      }
      i += k;
    }
    label72:
    return -1;
  }
  
  private void f(View paramView)
  {
    c.add(paramView);
    a.c(paramView);
  }
  
  private boolean g(View paramView)
  {
    if (c.remove(paramView))
    {
      a.d(paramView);
      return true;
    }
    return false;
  }
  
  View a(int paramInt1, int paramInt2)
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)c.get(i);
      RecyclerView.u localu = a.b(localView);
      if ((localu.d() == paramInt1) && (!localu.l()) && ((paramInt2 == -1) || (localu.f() == paramInt2))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  void a()
  {
    b.a();
    int i = c.size() - 1;
    while (i >= 0)
    {
      a.d((View)c.get(i));
      c.remove(i);
      i -= 1;
    }
    a.b();
  }
  
  void a(int paramInt)
  {
    paramInt = e(paramInt);
    View localView = a.b(paramInt);
    if (localView == null) {
      return;
    }
    if (b.d(paramInt)) {
      g(localView);
    }
    a.a(paramInt);
  }
  
  void a(View paramView)
  {
    int i = a.a(paramView);
    if (i < 0) {
      return;
    }
    if (b.d(i)) {
      g(paramView);
    }
    a.a(i);
  }
  
  void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = a.a();; paramInt = e(paramInt))
    {
      b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        f(paramView);
      }
      a.a(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = a.a();; paramInt = e(paramInt))
    {
      b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        f(paramView);
      }
      a.a(paramView, paramInt);
      return;
    }
  }
  
  void a(View paramView, boolean paramBoolean)
  {
    a(paramView, -1, paramBoolean);
  }
  
  int b()
  {
    return a.a() - c.size();
  }
  
  int b(View paramView)
  {
    int i = a.a(paramView);
    if (i == -1) {}
    while (b.c(i)) {
      return -1;
    }
    return i - b.e(i);
  }
  
  View b(int paramInt)
  {
    paramInt = e(paramInt);
    return a.b(paramInt);
  }
  
  int c()
  {
    return a.a();
  }
  
  View c(int paramInt)
  {
    return a.b(paramInt);
  }
  
  boolean c(View paramView)
  {
    return c.contains(paramView);
  }
  
  void d(int paramInt)
  {
    paramInt = e(paramInt);
    b.d(paramInt);
    a.c(paramInt);
  }
  
  void d(View paramView)
  {
    int i = a.a(paramView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView);
    }
    b.a(i);
    f(paramView);
  }
  
  boolean e(View paramView)
  {
    int i = a.a(paramView);
    if (i == -1)
    {
      if (g(paramView)) {}
      return true;
    }
    if (b.c(i))
    {
      b.d(i);
      if (!g(paramView)) {}
      a.a(i);
      return true;
    }
    return false;
  }
  
  public String toString()
  {
    return b.toString() + ", hidden list:" + c.size();
  }
  
  static class a
  {
    long a = 0L;
    a b;
    
    private void b()
    {
      if (b == null) {
        b = new a();
      }
    }
    
    void a()
    {
      a = 0L;
      if (b != null) {
        b.a();
      }
    }
    
    void a(int paramInt)
    {
      if (paramInt >= 64)
      {
        b();
        b.a(paramInt - 64);
        return;
      }
      a |= 1L << paramInt;
    }
    
    void a(int paramInt, boolean paramBoolean)
    {
      if (paramInt >= 64)
      {
        b();
        b.a(paramInt - 64, paramBoolean);
      }
      label113:
      label119:
      for (;;)
      {
        return;
        boolean bool;
        if ((a & 0x8000000000000000) != 0L)
        {
          bool = true;
          long l1 = (1L << paramInt) - 1L;
          long l2 = a;
          a = (((l1 ^ 0xFFFFFFFFFFFFFFFF) & a) << 1 | l2 & l1);
          if (!paramBoolean) {
            break label113;
          }
          a(paramInt);
        }
        for (;;)
        {
          if ((!bool) && (b == null)) {
            break label119;
          }
          b();
          b.a(0, bool);
          return;
          bool = false;
          break;
          b(paramInt);
        }
      }
    }
    
    void b(int paramInt)
    {
      if (paramInt >= 64)
      {
        if (b != null) {
          b.b(paramInt - 64);
        }
        return;
      }
      a &= (1L << paramInt ^ 0xFFFFFFFFFFFFFFFF);
    }
    
    boolean c(int paramInt)
    {
      if (paramInt >= 64)
      {
        b();
        return b.c(paramInt - 64);
      }
      return (a & 1L << paramInt) != 0L;
    }
    
    boolean d(int paramInt)
    {
      boolean bool2;
      if (paramInt >= 64)
      {
        b();
        bool2 = b.d(paramInt - 64);
        return bool2;
      }
      long l1 = 1L << paramInt;
      if ((a & l1) != 0L) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        a &= (l1 ^ 0xFFFFFFFFFFFFFFFF);
        l1 -= 1L;
        long l2 = a;
        a = (Long.rotateRight((l1 ^ 0xFFFFFFFFFFFFFFFF) & a, 1) | l2 & l1);
        bool2 = bool1;
        if (b == null) {
          break;
        }
        if (b.c(0)) {
          a(63);
        }
        b.d(0);
        return bool1;
      }
    }
    
    int e(int paramInt)
    {
      if (b == null)
      {
        if (paramInt >= 64) {
          return Long.bitCount(a);
        }
        return Long.bitCount(a & (1L << paramInt) - 1L);
      }
      if (paramInt < 64) {
        return Long.bitCount(a & (1L << paramInt) - 1L);
      }
      return b.e(paramInt - 64) + Long.bitCount(a);
    }
    
    public String toString()
    {
      if (b == null) {
        return Long.toBinaryString(a);
      }
      return b.toString() + "xx" + Long.toBinaryString(a);
    }
  }
  
  static abstract interface b
  {
    public abstract int a();
    
    public abstract int a(View paramView);
    
    public abstract void a(int paramInt);
    
    public abstract void a(View paramView, int paramInt);
    
    public abstract void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams);
    
    public abstract RecyclerView.u b(View paramView);
    
    public abstract View b(int paramInt);
    
    public abstract void b();
    
    public abstract void c(int paramInt);
    
    public abstract void c(View paramView);
    
    public abstract void d(View paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */