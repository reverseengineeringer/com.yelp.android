package com.yelp.android.h;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;

public class c
{
  private static final e a = new j();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22)
    {
      a = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new b();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new i();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      a = new h();
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new g();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new f();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new d();
      return;
    }
  }
  
  public c(Object paramObject)
  {
    b = paramObject;
  }
  
  public static c a(c paramc)
  {
    return a(a.a(b));
  }
  
  static c a(Object paramObject)
  {
    if (paramObject != null) {
      return new c(paramObject);
    }
    return null;
  }
  
  private static String c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "ACTION_UNKNOWN";
    case 1: 
      return "ACTION_FOCUS";
    case 2: 
      return "ACTION_CLEAR_FOCUS";
    case 4: 
      return "ACTION_SELECT";
    case 8: 
      return "ACTION_CLEAR_SELECTION";
    case 16: 
      return "ACTION_CLICK";
    case 32: 
      return "ACTION_LONG_CLICK";
    case 64: 
      return "ACTION_ACCESSIBILITY_FOCUS";
    case 128: 
      return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
    case 256: 
      return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
    case 512: 
      return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
    case 1024: 
      return "ACTION_NEXT_HTML_ELEMENT";
    case 2048: 
      return "ACTION_PREVIOUS_HTML_ELEMENT";
    case 4096: 
      return "ACTION_SCROLL_FORWARD";
    case 8192: 
      return "ACTION_SCROLL_BACKWARD";
    case 65536: 
      return "ACTION_CUT";
    case 16384: 
      return "ACTION_COPY";
    case 32768: 
      return "ACTION_PASTE";
    }
    return "ACTION_SET_SELECTION";
  }
  
  public Object a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public void a(Rect paramRect)
  {
    a.a(b, paramRect);
  }
  
  public void a(View paramView)
  {
    a.c(b, paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.d(b, paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    a.c(b, paramBoolean);
  }
  
  public boolean a(a parama)
  {
    return a.a(b, a.a(parama));
  }
  
  public int b()
  {
    return a.b(b);
  }
  
  public void b(int paramInt)
  {
    a.b(b, paramInt);
  }
  
  public void b(Rect paramRect)
  {
    a.c(b, paramRect);
  }
  
  public void b(View paramView)
  {
    a.a(b, paramView);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.b(b, paramCharSequence);
  }
  
  public void b(Object paramObject)
  {
    a.b(b, a);
  }
  
  public void b(boolean paramBoolean)
  {
    a.d(b, paramBoolean);
  }
  
  public int c()
  {
    return a.r(b);
  }
  
  public void c(Rect paramRect)
  {
    a.b(b, paramRect);
  }
  
  public void c(View paramView)
  {
    a.b(b, paramView);
  }
  
  public void c(CharSequence paramCharSequence)
  {
    a.e(b, paramCharSequence);
  }
  
  public void c(Object paramObject)
  {
    a.c(b, l.a((l)paramObject));
  }
  
  public void c(boolean paramBoolean)
  {
    a.h(b, paramBoolean);
  }
  
  public void d(Rect paramRect)
  {
    a.d(b, paramRect);
  }
  
  public void d(View paramView)
  {
    a.d(b, paramView);
  }
  
  public void d(CharSequence paramCharSequence)
  {
    a.c(b, paramCharSequence);
  }
  
  public void d(boolean paramBoolean)
  {
    a.i(b, paramBoolean);
  }
  
  public boolean d()
  {
    return a.g(b);
  }
  
  public void e(CharSequence paramCharSequence)
  {
    a.a(b, paramCharSequence);
  }
  
  public void e(boolean paramBoolean)
  {
    a.g(b, paramBoolean);
  }
  
  public boolean e()
  {
    return a.h(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (c)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public void f(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public boolean f()
  {
    return a.k(b);
  }
  
  public void g(boolean paramBoolean)
  {
    a.e(b, paramBoolean);
  }
  
  public boolean g()
  {
    return a.l(b);
  }
  
  public void h(boolean paramBoolean)
  {
    a.b(b, paramBoolean);
  }
  
  public boolean h()
  {
    return a.s(b);
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
  
  public void i(boolean paramBoolean)
  {
    a.f(b, paramBoolean);
  }
  
  public boolean i()
  {
    return a.t(b);
  }
  
  public void j(boolean paramBoolean)
  {
    a.j(b, paramBoolean);
  }
  
  public boolean j()
  {
    return a.p(b);
  }
  
  public boolean k()
  {
    return a.i(b);
  }
  
  public boolean l()
  {
    return a.m(b);
  }
  
  public boolean m()
  {
    return a.j(b);
  }
  
  public boolean n()
  {
    return a.n(b);
  }
  
  public boolean o()
  {
    return a.o(b);
  }
  
  public CharSequence p()
  {
    return a.e(b);
  }
  
  public CharSequence q()
  {
    return a.c(b);
  }
  
  public CharSequence r()
  {
    return a.f(b);
  }
  
  public CharSequence s()
  {
    return a.d(b);
  }
  
  public void t()
  {
    a.q(b);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Rect localRect = new Rect();
    a(localRect);
    localStringBuilder.append("; boundsInParent: " + localRect);
    c(localRect);
    localStringBuilder.append("; boundsInScreen: " + localRect);
    localStringBuilder.append("; packageName: ").append(p());
    localStringBuilder.append("; className: ").append(q());
    localStringBuilder.append("; text: ").append(r());
    localStringBuilder.append("; contentDescription: ").append(s());
    localStringBuilder.append("; viewId: ").append(u());
    localStringBuilder.append("; checkable: ").append(d());
    localStringBuilder.append("; checked: ").append(e());
    localStringBuilder.append("; focusable: ").append(f());
    localStringBuilder.append("; focused: ").append(g());
    localStringBuilder.append("; selected: ").append(j());
    localStringBuilder.append("; clickable: ").append(k());
    localStringBuilder.append("; longClickable: ").append(l());
    localStringBuilder.append("; enabled: ").append(m());
    localStringBuilder.append("; password: ").append(n());
    localStringBuilder.append("; scrollable: " + o());
    localStringBuilder.append("; [");
    int i = b();
    while (i != 0)
    {
      int k = 1 << Integer.numberOfTrailingZeros(i);
      int j = i & (k ^ 0xFFFFFFFF);
      localStringBuilder.append(c(k));
      i = j;
      if (j != 0)
      {
        localStringBuilder.append(", ");
        i = j;
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public String u()
  {
    return a.u(b);
  }
  
  public static class a
  {
    public static final a a = new a(1, null);
    public static final a b = new a(2, null);
    public static final a c = new a(4, null);
    public static final a d = new a(8, null);
    public static final a e = new a(16, null);
    public static final a f = new a(32, null);
    public static final a g = new a(64, null);
    public static final a h = new a(128, null);
    public static final a i = new a(256, null);
    public static final a j = new a(512, null);
    public static final a k = new a(1024, null);
    public static final a l = new a(2048, null);
    public static final a m = new a(4096, null);
    public static final a n = new a(8192, null);
    public static final a o = new a(16384, null);
    public static final a p = new a(32768, null);
    public static final a q = new a(65536, null);
    public static final a r = new a(131072, null);
    public static final a s = new a(262144, null);
    public static final a t = new a(524288, null);
    public static final a u = new a(1048576, null);
    public static final a v = new a(2097152, null);
    private final Object w;
    
    public a(int paramInt, CharSequence paramCharSequence)
    {
      this(c.v().a(paramInt, paramCharSequence));
    }
    
    private a(Object paramObject)
    {
      w = paramObject;
    }
  }
  
  static class b
    extends c.i
  {
    public Object a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
    {
      return d.a(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2);
    }
    
    public Object a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return d.a(paramInt1, paramInt2, paramBoolean, paramInt3);
    }
    
    public Object a(int paramInt, CharSequence paramCharSequence)
    {
      return d.a(paramInt, paramCharSequence);
    }
    
    public void a(Object paramObject, CharSequence paramCharSequence)
    {
      d.a(paramObject, paramCharSequence);
    }
    
    public boolean a(Object paramObject1, Object paramObject2)
    {
      return d.a(paramObject1, paramObject2);
    }
  }
  
  static class c
    extends c.b
  {}
  
  static class d
    extends c.j
  {
    public Object a(Object paramObject)
    {
      return e.a(paramObject);
    }
    
    public void a(Object paramObject, int paramInt)
    {
      e.a(paramObject, paramInt);
    }
    
    public void a(Object paramObject, Rect paramRect)
    {
      e.a(paramObject, paramRect);
    }
    
    public void a(Object paramObject, View paramView)
    {
      e.a(paramObject, paramView);
    }
    
    public void a(Object paramObject, boolean paramBoolean)
    {
      e.a(paramObject, paramBoolean);
    }
    
    public int b(Object paramObject)
    {
      return e.b(paramObject);
    }
    
    public void b(Object paramObject, Rect paramRect)
    {
      e.b(paramObject, paramRect);
    }
    
    public void b(Object paramObject, View paramView)
    {
      e.b(paramObject, paramView);
    }
    
    public void b(Object paramObject, CharSequence paramCharSequence)
    {
      e.a(paramObject, paramCharSequence);
    }
    
    public void b(Object paramObject, boolean paramBoolean)
    {
      e.b(paramObject, paramBoolean);
    }
    
    public CharSequence c(Object paramObject)
    {
      return e.c(paramObject);
    }
    
    public void c(Object paramObject, Rect paramRect)
    {
      e.c(paramObject, paramRect);
    }
    
    public void c(Object paramObject, View paramView)
    {
      e.c(paramObject, paramView);
    }
    
    public void c(Object paramObject, CharSequence paramCharSequence)
    {
      e.b(paramObject, paramCharSequence);
    }
    
    public void c(Object paramObject, boolean paramBoolean)
    {
      e.c(paramObject, paramBoolean);
    }
    
    public CharSequence d(Object paramObject)
    {
      return e.d(paramObject);
    }
    
    public void d(Object paramObject, Rect paramRect)
    {
      e.d(paramObject, paramRect);
    }
    
    public void d(Object paramObject, CharSequence paramCharSequence)
    {
      e.c(paramObject, paramCharSequence);
    }
    
    public void d(Object paramObject, boolean paramBoolean)
    {
      e.d(paramObject, paramBoolean);
    }
    
    public CharSequence e(Object paramObject)
    {
      return e.e(paramObject);
    }
    
    public void e(Object paramObject, CharSequence paramCharSequence)
    {
      e.d(paramObject, paramCharSequence);
    }
    
    public void e(Object paramObject, boolean paramBoolean)
    {
      e.e(paramObject, paramBoolean);
    }
    
    public CharSequence f(Object paramObject)
    {
      return e.f(paramObject);
    }
    
    public void f(Object paramObject, boolean paramBoolean)
    {
      e.f(paramObject, paramBoolean);
    }
    
    public void g(Object paramObject, boolean paramBoolean)
    {
      e.g(paramObject, paramBoolean);
    }
    
    public boolean g(Object paramObject)
    {
      return e.g(paramObject);
    }
    
    public boolean h(Object paramObject)
    {
      return e.h(paramObject);
    }
    
    public boolean i(Object paramObject)
    {
      return e.i(paramObject);
    }
    
    public boolean j(Object paramObject)
    {
      return e.j(paramObject);
    }
    
    public boolean k(Object paramObject)
    {
      return e.k(paramObject);
    }
    
    public boolean l(Object paramObject)
    {
      return e.l(paramObject);
    }
    
    public boolean m(Object paramObject)
    {
      return e.m(paramObject);
    }
    
    public boolean n(Object paramObject)
    {
      return e.n(paramObject);
    }
    
    public boolean o(Object paramObject)
    {
      return e.o(paramObject);
    }
    
    public boolean p(Object paramObject)
    {
      return e.p(paramObject);
    }
    
    public void q(Object paramObject)
    {
      e.q(paramObject);
    }
  }
  
  static abstract interface e
  {
    public abstract Object a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2);
    
    public abstract Object a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3);
    
    public abstract Object a(int paramInt, CharSequence paramCharSequence);
    
    public abstract Object a(Object paramObject);
    
    public abstract void a(Object paramObject, int paramInt);
    
    public abstract void a(Object paramObject, Rect paramRect);
    
    public abstract void a(Object paramObject, View paramView);
    
    public abstract void a(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void a(Object paramObject, boolean paramBoolean);
    
    public abstract boolean a(Object paramObject1, Object paramObject2);
    
    public abstract int b(Object paramObject);
    
    public abstract void b(Object paramObject, int paramInt);
    
    public abstract void b(Object paramObject, Rect paramRect);
    
    public abstract void b(Object paramObject, View paramView);
    
    public abstract void b(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void b(Object paramObject1, Object paramObject2);
    
    public abstract void b(Object paramObject, boolean paramBoolean);
    
    public abstract CharSequence c(Object paramObject);
    
    public abstract void c(Object paramObject, Rect paramRect);
    
    public abstract void c(Object paramObject, View paramView);
    
    public abstract void c(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void c(Object paramObject1, Object paramObject2);
    
    public abstract void c(Object paramObject, boolean paramBoolean);
    
    public abstract CharSequence d(Object paramObject);
    
    public abstract void d(Object paramObject, Rect paramRect);
    
    public abstract void d(Object paramObject, View paramView);
    
    public abstract void d(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void d(Object paramObject, boolean paramBoolean);
    
    public abstract CharSequence e(Object paramObject);
    
    public abstract void e(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void e(Object paramObject, boolean paramBoolean);
    
    public abstract CharSequence f(Object paramObject);
    
    public abstract void f(Object paramObject, boolean paramBoolean);
    
    public abstract void g(Object paramObject, boolean paramBoolean);
    
    public abstract boolean g(Object paramObject);
    
    public abstract void h(Object paramObject, boolean paramBoolean);
    
    public abstract boolean h(Object paramObject);
    
    public abstract void i(Object paramObject, boolean paramBoolean);
    
    public abstract boolean i(Object paramObject);
    
    public abstract void j(Object paramObject, boolean paramBoolean);
    
    public abstract boolean j(Object paramObject);
    
    public abstract boolean k(Object paramObject);
    
    public abstract boolean l(Object paramObject);
    
    public abstract boolean m(Object paramObject);
    
    public abstract boolean n(Object paramObject);
    
    public abstract boolean o(Object paramObject);
    
    public abstract boolean p(Object paramObject);
    
    public abstract void q(Object paramObject);
    
    public abstract int r(Object paramObject);
    
    public abstract boolean s(Object paramObject);
    
    public abstract boolean t(Object paramObject);
    
    public abstract String u(Object paramObject);
  }
  
  static class f
    extends c.d
  {
    public void b(Object paramObject, int paramInt)
    {
      f.a(paramObject, paramInt);
    }
    
    public void h(Object paramObject, boolean paramBoolean)
    {
      f.a(paramObject, paramBoolean);
    }
    
    public void i(Object paramObject, boolean paramBoolean)
    {
      f.b(paramObject, paramBoolean);
    }
    
    public int r(Object paramObject)
    {
      return f.b(paramObject);
    }
    
    public boolean s(Object paramObject)
    {
      return f.a(paramObject);
    }
    
    public boolean t(Object paramObject)
    {
      return f.c(paramObject);
    }
  }
  
  static class g
    extends c.f
  {
    public void d(Object paramObject, View paramView)
    {
      g.a(paramObject, paramView);
    }
  }
  
  static class h
    extends c.g
  {
    public String u(Object paramObject)
    {
      return h.a(paramObject);
    }
  }
  
  static class i
    extends c.h
  {
    public Object a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
    {
      return i.a(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1);
    }
    
    public Object a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return i.a(paramInt1, paramInt2, paramBoolean, paramInt3);
    }
    
    public void b(Object paramObject1, Object paramObject2)
    {
      i.a(paramObject1, paramObject2);
    }
    
    public void c(Object paramObject1, Object paramObject2)
    {
      i.b(paramObject1, paramObject2);
    }
    
    public void j(Object paramObject, boolean paramBoolean)
    {
      i.a(paramObject, paramBoolean);
    }
  }
  
  static class j
    implements c.e
  {
    public Object a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
    {
      return null;
    }
    
    public Object a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return null;
    }
    
    public Object a(int paramInt, CharSequence paramCharSequence)
    {
      return null;
    }
    
    public Object a(Object paramObject)
    {
      return null;
    }
    
    public void a(Object paramObject, int paramInt) {}
    
    public void a(Object paramObject, Rect paramRect) {}
    
    public void a(Object paramObject, View paramView) {}
    
    public void a(Object paramObject, CharSequence paramCharSequence) {}
    
    public void a(Object paramObject, boolean paramBoolean) {}
    
    public boolean a(Object paramObject1, Object paramObject2)
    {
      return false;
    }
    
    public int b(Object paramObject)
    {
      return 0;
    }
    
    public void b(Object paramObject, int paramInt) {}
    
    public void b(Object paramObject, Rect paramRect) {}
    
    public void b(Object paramObject, View paramView) {}
    
    public void b(Object paramObject, CharSequence paramCharSequence) {}
    
    public void b(Object paramObject1, Object paramObject2) {}
    
    public void b(Object paramObject, boolean paramBoolean) {}
    
    public CharSequence c(Object paramObject)
    {
      return null;
    }
    
    public void c(Object paramObject, Rect paramRect) {}
    
    public void c(Object paramObject, View paramView) {}
    
    public void c(Object paramObject, CharSequence paramCharSequence) {}
    
    public void c(Object paramObject1, Object paramObject2) {}
    
    public void c(Object paramObject, boolean paramBoolean) {}
    
    public CharSequence d(Object paramObject)
    {
      return null;
    }
    
    public void d(Object paramObject, Rect paramRect) {}
    
    public void d(Object paramObject, View paramView) {}
    
    public void d(Object paramObject, CharSequence paramCharSequence) {}
    
    public void d(Object paramObject, boolean paramBoolean) {}
    
    public CharSequence e(Object paramObject)
    {
      return null;
    }
    
    public void e(Object paramObject, CharSequence paramCharSequence) {}
    
    public void e(Object paramObject, boolean paramBoolean) {}
    
    public CharSequence f(Object paramObject)
    {
      return null;
    }
    
    public void f(Object paramObject, boolean paramBoolean) {}
    
    public void g(Object paramObject, boolean paramBoolean) {}
    
    public boolean g(Object paramObject)
    {
      return false;
    }
    
    public void h(Object paramObject, boolean paramBoolean) {}
    
    public boolean h(Object paramObject)
    {
      return false;
    }
    
    public void i(Object paramObject, boolean paramBoolean) {}
    
    public boolean i(Object paramObject)
    {
      return false;
    }
    
    public void j(Object paramObject, boolean paramBoolean) {}
    
    public boolean j(Object paramObject)
    {
      return false;
    }
    
    public boolean k(Object paramObject)
    {
      return false;
    }
    
    public boolean l(Object paramObject)
    {
      return false;
    }
    
    public boolean m(Object paramObject)
    {
      return false;
    }
    
    public boolean n(Object paramObject)
    {
      return false;
    }
    
    public boolean o(Object paramObject)
    {
      return false;
    }
    
    public boolean p(Object paramObject)
    {
      return false;
    }
    
    public void q(Object paramObject) {}
    
    public int r(Object paramObject)
    {
      return 0;
    }
    
    public boolean s(Object paramObject)
    {
      return false;
    }
    
    public boolean t(Object paramObject)
    {
      return false;
    }
    
    public String u(Object paramObject)
    {
      return null;
    }
  }
  
  public static class k
  {
    final Object a;
    
    private k(Object paramObject)
    {
      a = paramObject;
    }
    
    public static k a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return new k(c.v().a(paramInt1, paramInt2, paramBoolean, paramInt3));
    }
  }
  
  public static class l
  {
    private final Object a;
    
    private l(Object paramObject)
    {
      a = paramObject;
    }
    
    public static l a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
    {
      return new l(c.v().a(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.h.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */