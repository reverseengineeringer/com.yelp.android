package com.yelp.android.i;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.internal.view.menu.j;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.ah;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.l.e;
import com.yelp.android.m.a;
import com.yelp.android.m.b;
import java.lang.ref.WeakReference;

public class m
  extends a
  implements j
{
  private final Context b;
  private final android.support.v7.internal.view.menu.i c;
  private b d;
  private WeakReference<View> e;
  
  public m(i parami, Context paramContext, b paramb)
  {
    b = paramContext;
    d = paramb;
    c = new android.support.v7.internal.view.menu.i(paramContext).a(1);
    c.a(this);
  }
  
  public MenuInflater a()
  {
    return new e(b);
  }
  
  public void a(int paramInt)
  {
    b(i.k(a).getResources().getString(paramInt));
  }
  
  public void a(android.support.v7.internal.view.menu.i parami)
  {
    if (d == null) {
      return;
    }
    d();
    i.i(a).a();
  }
  
  public void a(View paramView)
  {
    i.i(a).setCustomView(paramView);
    e = new WeakReference(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    i.i(a).setSubtitle(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    i.i(a).setTitleOptional(paramBoolean);
  }
  
  public boolean a(android.support.v7.internal.view.menu.i parami, MenuItem paramMenuItem)
  {
    if (d != null) {
      return d.a(this, paramMenuItem);
    }
    return false;
  }
  
  public Menu b()
  {
    return c;
  }
  
  public void b(int paramInt)
  {
    a(i.k(a).getResources().getString(paramInt));
  }
  
  public void b(CharSequence paramCharSequence)
  {
    i.i(a).setTitle(paramCharSequence);
  }
  
  public void c()
  {
    if (a.a != this) {
      return;
    }
    if (!i.a(i.g(a), i.h(a), false))
    {
      a.b = this;
      a.c = d;
    }
    for (;;)
    {
      d = null;
      a.l(false);
      i.i(a).b();
      i.j(a).a().sendAccessibilityEvent(32);
      i.f(a).setHideOnContentScrollEnabled(a.d);
      a.a = null;
      return;
      d.a(this);
    }
  }
  
  public void d()
  {
    c.g();
    try
    {
      d.b(this, c);
      return;
    }
    finally
    {
      c.h();
    }
  }
  
  public boolean e()
  {
    c.g();
    try
    {
      boolean bool = d.a(this, c);
      return bool;
    }
    finally
    {
      c.h();
    }
  }
  
  public CharSequence f()
  {
    return i.i(a).getTitle();
  }
  
  public CharSequence g()
  {
    return i.i(a).getSubtitle();
  }
  
  public boolean h()
  {
    return i.i(a).d();
  }
  
  public View i()
  {
    if (e != null) {
      return (View)e.get();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.i.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */