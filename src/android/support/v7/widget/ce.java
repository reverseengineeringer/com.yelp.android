package android.support.v7.widget;

import android.util.Log;
import android.view.View;

public abstract class ce
{
  public final View a;
  int b = -1;
  int c = -1;
  long d = -1L;
  int e = -1;
  int f = -1;
  ce g = null;
  ce h = null;
  RecyclerView i;
  private int j;
  private int k = 0;
  private bv l = null;
  
  public ce(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("itemView may not be null");
    }
    a = paramView;
  }
  
  private boolean u()
  {
    return (j & 0x10) != 0;
  }
  
  private boolean v()
  {
    return ((j & 0x10) == 0) && (android.support.v4.view.ce.c(a));
  }
  
  void a()
  {
    c = -1;
    f = -1;
  }
  
  void a(int paramInt)
  {
    j |= paramInt;
  }
  
  void a(int paramInt1, int paramInt2)
  {
    j = (j & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a(8);
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
  
  void a(bv parambv)
  {
    l = parambv;
  }
  
  public final void a(boolean paramBoolean)
  {
    int m;
    if (paramBoolean)
    {
      m = k - 1;
      k = m;
      if (k >= 0) {
        break label64;
      }
      k = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
    }
    label64:
    do
    {
      return;
      m = k + 1;
      break;
      if ((!paramBoolean) && (k == 1))
      {
        j |= 0x10;
        return;
      }
    } while ((!paramBoolean) || (k != 0));
    j &= 0xFFFFFFEF;
  }
  
  void b()
  {
    if (c == -1) {
      c = b;
    }
  }
  
  boolean c()
  {
    return (j & 0x80) != 0;
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
    return l != null;
  }
  
  void h()
  {
    l.d(this);
  }
  
  boolean i()
  {
    return (j & 0x20) != 0;
  }
  
  void j()
  {
    j &= 0xFFFFFFDF;
  }
  
  void k()
  {
    j &= 0xFEFF;
  }
  
  boolean l()
  {
    return (j & 0x4) != 0;
  }
  
  boolean m()
  {
    return (j & 0x2) != 0;
  }
  
  boolean n()
  {
    return (j & 0x40) != 0;
  }
  
  boolean o()
  {
    return (j & 0x1) != 0;
  }
  
  boolean p()
  {
    return (j & 0x8) != 0;
  }
  
  boolean q()
  {
    return (j & 0x100) != 0;
  }
  
  boolean r()
  {
    return ((j & 0x200) != 0) || (l());
  }
  
  void s()
  {
    j = 0;
    b = -1;
    c = -1;
    d = -1L;
    f = -1;
    k = 0;
    g = null;
    h = null;
  }
  
  public final boolean t()
  {
    return ((j & 0x10) == 0) && (!android.support.v4.view.ce.c(a));
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
    if (!t()) {
      localStringBuilder.append(" not recyclable(" + k + ")");
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
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */