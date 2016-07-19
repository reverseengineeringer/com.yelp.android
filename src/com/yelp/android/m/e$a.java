package com.yelp.android.m;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.r.a;
import com.yelp.android.r.a.a;
import java.lang.ref.WeakReference;

public class e$a
  extends a
  implements f.a
{
  private final Context b;
  private final android.support.v7.internal.view.menu.f c;
  private a.a d;
  private WeakReference<View> e;
  
  public e$a(e parame, Context paramContext, a.a parama)
  {
    b = paramContext;
    d = parama;
    c = new android.support.v7.internal.view.menu.f(paramContext).a(1);
    c.a(this);
  }
  
  public MenuInflater a()
  {
    return new com.yelp.android.p.e(b);
  }
  
  public void a(int paramInt)
  {
    b(e.i(a).getResources().getString(paramInt));
  }
  
  public void a(android.support.v7.internal.view.menu.f paramf)
  {
    if (d == null) {
      return;
    }
    d();
    e.g(a).a();
  }
  
  public void a(View paramView)
  {
    e.g(a).setCustomView(paramView);
    e = new WeakReference(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    e.g(a).setSubtitle(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    e.g(a).setTitleOptional(paramBoolean);
  }
  
  public boolean a(android.support.v7.internal.view.menu.f paramf, MenuItem paramMenuItem)
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
    a(e.i(a).getResources().getString(paramInt));
  }
  
  public void b(CharSequence paramCharSequence)
  {
    e.g(a).setTitle(paramCharSequence);
  }
  
  public void c()
  {
    if (a.a != this) {
      return;
    }
    if (!e.a(e.e(a), e.f(a), false))
    {
      a.b = this;
      a.c = d;
    }
    for (;;)
    {
      d = null;
      a.l(false);
      e.g(a).b();
      e.h(a).a().sendAccessibilityEvent(32);
      e.d(a).setHideOnContentScrollEnabled(a.d);
      a.a = null;
      return;
      d.a(this);
    }
  }
  
  public void d()
  {
    if (a.a != this) {
      return;
    }
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
    return e.g(a).getTitle();
  }
  
  public CharSequence g()
  {
    return e.g(a).getSubtitle();
  }
  
  public boolean h()
  {
    return e.g(a).d();
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
 * Qualified Name:     com.yelp.android.m.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */