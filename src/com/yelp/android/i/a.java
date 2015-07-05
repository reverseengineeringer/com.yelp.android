package com.yelp.android.i;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ce;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBar.LayoutParams;
import android.support.v7.internal.widget.ah;
import android.support.v7.internal.widget.bh;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.dj;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ListAdapter;
import com.yelp.android.g.k;
import java.util.ArrayList;

public class a
  extends ActionBar
{
  private ah a;
  private boolean b;
  private h c;
  private boolean d;
  private boolean e;
  private ArrayList<android.support.v7.app.a> f = new ArrayList();
  private Window g;
  private android.support.v7.internal.view.menu.g h;
  private final Runnable i = new b(this);
  private final dj j = new c(this);
  
  public a(Toolbar paramToolbar, CharSequence paramCharSequence, Window paramWindow, h paramh)
  {
    a = new bh(paramToolbar, false);
    c = new g(this, paramh);
    a.a(c);
    paramToolbar.setOnMenuItemClickListener(j);
    a.a(paramCharSequence);
    g = paramWindow;
  }
  
  private View a(Menu paramMenu)
  {
    b(paramMenu);
    if ((paramMenu == null) || (h == null)) {}
    while (h.a().getCount() <= 0) {
      return null;
    }
    return (View)h.a(a.a());
  }
  
  private void b(Menu paramMenu)
  {
    Object localObject;
    Resources.Theme localTheme;
    if ((h == null) && ((paramMenu instanceof android.support.v7.internal.view.menu.i)))
    {
      paramMenu = (android.support.v7.internal.view.menu.i)paramMenu;
      localObject = a.b();
      TypedValue localTypedValue = new TypedValue();
      localTheme = ((Context)localObject).getResources().newTheme();
      localTheme.setTo(((Context)localObject).getTheme());
      localTheme.resolveAttribute(com.yelp.android.g.b.panelMenuListTheme, localTypedValue, true);
      if (resourceId == 0) {
        break label141;
      }
      localTheme.applyStyle(resourceId, true);
    }
    for (;;)
    {
      localObject = new ContextThemeWrapper((Context)localObject, 0);
      ((Context)localObject).getTheme().setTo(localTheme);
      h = new android.support.v7.internal.view.menu.g((Context)localObject, com.yelp.android.g.i.abc_list_menu_item_layout);
      h.a(new f(this, null));
      paramMenu.a(h);
      return;
      label141:
      localTheme.applyStyle(k.Theme_AppCompat_CompactMenu, true);
    }
  }
  
  private Menu k()
  {
    if (!d)
    {
      a.a(new d(this, null), new e(this, null));
      d = true;
    }
    return a.t();
  }
  
  public View a()
  {
    return a.r();
  }
  
  public com.yelp.android.m.a a(com.yelp.android.m.b paramb)
  {
    return c.a(paramb);
  }
  
  public void a(float paramFloat)
  {
    ce.f(a.a(), paramFloat);
  }
  
  public void a(int paramInt)
  {
    a(LayoutInflater.from(a.b()).inflate(paramInt, a.a(), false));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int k = a.p();
    a.c(k & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public void a(Configuration paramConfiguration)
  {
    super.a(paramConfiguration);
  }
  
  public void a(Drawable paramDrawable)
  {
    a.c(paramDrawable);
  }
  
  public void a(android.support.v7.app.a parama)
  {
    f.add(parama);
  }
  
  public void a(View paramView)
  {
    a(paramView, new ActionBar.LayoutParams(-2, -2));
  }
  
  public void a(View paramView, ActionBar.LayoutParams paramLayoutParams)
  {
    paramView.setLayoutParams(paramLayoutParams);
    a.a(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.b(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int k = 4;; k = 0)
    {
      a(k, 4);
      return;
    }
  }
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    Menu localMenu = k();
    if (localMenu != null) {
      bool = localMenu.performShortcut(paramInt, paramKeyEvent, 0);
    }
    return bool;
  }
  
  public int b()
  {
    return a.p();
  }
  
  public void b(int paramInt)
  {
    ah localah = a;
    if (paramInt != 0) {}
    for (CharSequence localCharSequence = a.b().getText(paramInt);; localCharSequence = null)
    {
      localah.b(localCharSequence);
      return;
    }
  }
  
  public void b(Drawable paramDrawable)
  {
    a.b(paramDrawable);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.a(paramCharSequence);
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int k = 8;; k = 0)
    {
      a(k, 8);
      return;
    }
  }
  
  public int c()
  {
    return a.s();
  }
  
  public void c(int paramInt)
  {
    a.e(paramInt);
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int k = 16;; k = 0)
    {
      a(k, 16);
      return;
    }
  }
  
  public void d()
  {
    a.f(0);
  }
  
  public void d(boolean paramBoolean) {}
  
  public void e()
  {
    a.f(8);
  }
  
  public Context f()
  {
    return a.b();
  }
  
  public void f(boolean paramBoolean) {}
  
  public void g(boolean paramBoolean) {}
  
  public boolean g()
  {
    a.a().removeCallbacks(i);
    ce.a(a.a(), i);
    return true;
  }
  
  public void h(boolean paramBoolean)
  {
    if (paramBoolean == e) {}
    for (;;)
    {
      return;
      e = paramBoolean;
      int m = f.size();
      int k = 0;
      while (k < m)
      {
        ((android.support.v7.app.a)f.get(k)).a(paramBoolean);
        k += 1;
      }
    }
  }
  
  public boolean h()
  {
    if (a.d())
    {
      a.e();
      return true;
    }
    return false;
  }
  
  public h i()
  {
    return c;
  }
  
  void j()
  {
    Menu localMenu = k();
    if ((localMenu instanceof android.support.v7.internal.view.menu.i)) {}
    for (locali = (android.support.v7.internal.view.menu.i)localMenu;; locali = null)
    {
      if (locali != null) {
        locali.g();
      }
      try
      {
        localMenu.clear();
        if ((!c.a(0, localMenu)) || (!c.a(0, null, localMenu))) {
          localMenu.clear();
        }
        return;
      }
      finally
      {
        if (locali == null) {
          break;
        }
        locali.h();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */