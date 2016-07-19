package android.support.v7.widget;

import android.support.v4.view.ai;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class RecyclerView$u
{
  private static final List<Object> m = Collections.EMPTY_LIST;
  public final View a;
  int b = -1;
  int c = -1;
  long d = -1L;
  int e = -1;
  int f = -1;
  u g = null;
  u h = null;
  List<Object> i = null;
  List<Object> j = null;
  RecyclerView k;
  private int l;
  private int n = 0;
  private RecyclerView.n o = null;
  private int p = 0;
  
  public RecyclerView$u(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("itemView may not be null");
    }
    a = paramView;
  }
  
  private boolean A()
  {
    return ((l & 0x10) == 0) && (ai.c(a));
  }
  
  private void w()
  {
    if (i == null)
    {
      i = new ArrayList();
      j = Collections.unmodifiableList(i);
    }
  }
  
  private void x()
  {
    p = ai.e(a);
    ai.c(a, 4);
  }
  
  private void y()
  {
    ai.c(a, p);
    p = 0;
  }
  
  private boolean z()
  {
    return (l & 0x10) != 0;
  }
  
  void a()
  {
    c = -1;
    f = -1;
  }
  
  void a(int paramInt1, int paramInt2)
  {
    l = (l & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    b(8);
    a(paramInt2, paramBoolean);
    b = paramInt1;
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    if (c == -1) {
      c = b;
    }
    if (f == -1) {
      f = b;
    }
    if (paramBoolean) {
      f += paramInt;
    }
    b += paramInt;
    if (a.getLayoutParams() != null) {
      a.getLayoutParams()).c = true;
    }
  }
  
  void a(RecyclerView.n paramn)
  {
    o = paramn;
  }
  
  void a(Object paramObject)
  {
    if (paramObject == null) {
      b(1024);
    }
    while ((l & 0x400) != 0) {
      return;
    }
    w();
    i.add(paramObject);
  }
  
  public final void a(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean)
    {
      i1 = n - 1;
      n = i1;
      if (n >= 0) {
        break label64;
      }
      n = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
    }
    label64:
    do
    {
      return;
      i1 = n + 1;
      break;
      if ((!paramBoolean) && (n == 1))
      {
        l |= 0x10;
        return;
      }
    } while ((!paramBoolean) || (n != 0));
    l &= 0xFFFFFFEF;
  }
  
  boolean a(int paramInt)
  {
    return (l & paramInt) != 0;
  }
  
  void b()
  {
    if (c == -1) {
      c = b;
    }
  }
  
  void b(int paramInt)
  {
    l |= paramInt;
  }
  
  boolean c()
  {
    return (l & 0x80) != 0;
  }
  
  public final int d()
  {
    if (f == -1) {
      return b;
    }
    return f;
  }
  
  public final long e()
  {
    return d;
  }
  
  public final int f()
  {
    return e;
  }
  
  boolean g()
  {
    return o != null;
  }
  
  void h()
  {
    o.d(this);
  }
  
  boolean i()
  {
    return (l & 0x20) != 0;
  }
  
  void j()
  {
    l &= 0xFFFFFFDF;
  }
  
  void k()
  {
    l &= 0xFEFF;
  }
  
  boolean l()
  {
    return (l & 0x4) != 0;
  }
  
  boolean m()
  {
    return (l & 0x2) != 0;
  }
  
  boolean n()
  {
    return (l & 0x40) != 0;
  }
  
  boolean o()
  {
    return (l & 0x1) != 0;
  }
  
  boolean p()
  {
    return (l & 0x8) != 0;
  }
  
  boolean q()
  {
    return (l & 0x100) != 0;
  }
  
  boolean r()
  {
    return ((l & 0x200) != 0) || (l());
  }
  
  void s()
  {
    if (i != null) {
      i.clear();
    }
    l &= 0xFBFF;
  }
  
  List<Object> t()
  {
    if ((l & 0x400) == 0)
    {
      if ((i == null) || (i.size() == 0)) {
        return m;
      }
      return j;
    }
    return m;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + b + " id=" + d + ", oldPos=" + c + ", pLpos:" + f);
    if (g()) {
      localStringBuilder.append(" scrap");
    }
    if (l()) {
      localStringBuilder.append(" invalid");
    }
    if (!o()) {
      localStringBuilder.append(" unbound");
    }
    if (m()) {
      localStringBuilder.append(" update");
    }
    if (p()) {
      localStringBuilder.append(" removed");
    }
    if (c()) {
      localStringBuilder.append(" ignored");
    }
    if (n()) {
      localStringBuilder.append(" changed");
    }
    if (q()) {
      localStringBuilder.append(" tmpDetached");
    }
    if (!v()) {
      localStringBuilder.append(" not recyclable(" + n + ")");
    }
    if (r()) {
      localStringBuilder.append("undefined adapter position");
    }
    if (a.getParent() == null) {
      localStringBuilder.append(" no parent");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  void u()
  {
    l = 0;
    b = -1;
    c = -1;
    d = -1L;
    f = -1;
    n = 0;
    g = null;
    h = null;
    s();
    p = 0;
  }
  
  public final boolean v()
  {
    return ((l & 0x10) == 0) && (!ai.c(a));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */