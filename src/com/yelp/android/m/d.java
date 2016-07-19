package com.yelp.android.m;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ai;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBar.LayoutParams;
import android.support.v7.app.ActionBar.a;
import android.support.v7.internal.view.menu.e;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.internal.widget.q;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.Toolbar.b;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window.Callback;
import android.widget.ListAdapter;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.h;
import com.yelp.android.j.a.j;
import com.yelp.android.p.g;
import java.util.ArrayList;

public class d
  extends ActionBar
{
  private android.support.v7.internal.widget.f a;
  private boolean b;
  private Window.Callback c;
  private boolean d;
  private boolean e;
  private ArrayList<ActionBar.a> f = new ArrayList();
  private e g;
  private final Runnable h = new Runnable()
  {
    public void run()
    {
      j();
    }
  };
  private final Toolbar.b i = new Toolbar.b()
  {
    public boolean a(MenuItem paramAnonymousMenuItem)
    {
      return d.a(d.this).onMenuItemSelected(0, paramAnonymousMenuItem);
    }
  };
  
  public d(Toolbar paramToolbar, CharSequence paramCharSequence, Window.Callback paramCallback)
  {
    a = new q(paramToolbar, false);
    c = new d(paramCallback);
    a.a(c);
    paramToolbar.setOnMenuItemClickListener(i);
    a.a(paramCharSequence);
  }
  
  private View a(Menu paramMenu)
  {
    b(paramMenu);
    if ((paramMenu == null) || (g == null)) {}
    while (g.d().getCount() <= 0) {
      return null;
    }
    return (View)g.a(a.a());
  }
  
  private void b(Menu paramMenu)
  {
    Object localObject;
    Resources.Theme localTheme;
    if ((g == null) && ((paramMenu instanceof android.support.v7.internal.view.menu.f)))
    {
      paramMenu = (android.support.v7.internal.view.menu.f)paramMenu;
      localObject = a.b();
      TypedValue localTypedValue = new TypedValue();
      localTheme = ((Context)localObject).getResources().newTheme();
      localTheme.setTo(((Context)localObject).getTheme());
      localTheme.resolveAttribute(a.a.actionBarPopupTheme, localTypedValue, true);
      if (resourceId != 0) {
        localTheme.applyStyle(resourceId, true);
      }
      localTheme.resolveAttribute(a.a.panelMenuListTheme, localTypedValue, true);
      if (resourceId == 0) {
        break label170;
      }
      localTheme.applyStyle(resourceId, true);
    }
    for (;;)
    {
      localObject = new ContextThemeWrapper((Context)localObject, 0);
      ((Context)localObject).getTheme().setTo(localTheme);
      g = new e((Context)localObject, a.h.abc_list_menu_item_layout);
      g.a(new c(null));
      paramMenu.a(g);
      return;
      label170:
      localTheme.applyStyle(a.j.Theme_AppCompat_CompactMenu, true);
    }
  }
  
  private Menu k()
  {
    if (!d)
    {
      a.a(new a(null), new b(null));
      d = true;
    }
    return a.s();
  }
  
  public View a()
  {
    return a.q();
  }
  
  public void a(float paramFloat)
  {
    ai.h(a.a(), paramFloat);
  }
  
  public void a(int paramInt)
  {
    a(LayoutInflater.from(a.b()).inflate(paramInt, a.a(), false));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int j = a.o();
    a.c(j & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public void a(Configuration paramConfiguration)
  {
    super.a(paramConfiguration);
  }
  
  public void a(Drawable paramDrawable)
  {
    a.b(paramDrawable);
  }
  
  public void a(ActionBar.a parama)
  {
    f.add(parama);
  }
  
  public void a(View paramView)
  {
    a(paramView, new ActionBar.LayoutParams(-2, -2));
  }
  
  public void a(View paramView, ActionBar.LayoutParams paramLayoutParams)
  {
    if (paramView != null) {
      paramView.setLayoutParams(paramLayoutParams);
    }
    a.a(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.b(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int j = 4;; j = 0)
    {
      a(j, 4);
      return;
    }
  }
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Menu localMenu = k();
    int j;
    if (localMenu != null)
    {
      if (paramKeyEvent == null) {
        break label56;
      }
      j = paramKeyEvent.getDeviceId();
      if (KeyCharacterMap.load(j).getKeyboardType() == 1) {
        break label61;
      }
    }
    label56:
    label61:
    for (boolean bool = true;; bool = false)
    {
      localMenu.setQwertyMode(bool);
      localMenu.performShortcut(paramInt, paramKeyEvent, 0);
      return true;
      j = -1;
      break;
    }
  }
  
  public int b()
  {
    return a.o();
  }
  
  public void b(int paramInt)
  {
    android.support.v7.internal.widget.f localf = a;
    if (paramInt != 0) {}
    for (CharSequence localCharSequence = a.b().getText(paramInt);; localCharSequence = null)
    {
      localf.b(localCharSequence);
      return;
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.a(paramCharSequence);
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int j = 8;; j = 0)
    {
      a(j, 8);
      return;
    }
  }
  
  public int c()
  {
    return a.r();
  }
  
  public void c(int paramInt)
  {
    a.d(paramInt);
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int j = 16;; j = 0)
    {
      a(j, 16);
      return;
    }
  }
  
  public void d()
  {
    a.e(0);
  }
  
  public void d(boolean paramBoolean) {}
  
  public void e()
  {
    a.e(8);
  }
  
  public Context f()
  {
    return a.b();
  }
  
  public void f(boolean paramBoolean) {}
  
  public void g(boolean paramBoolean) {}
  
  public boolean g()
  {
    a.a().removeCallbacks(h);
    ai.a(a.a(), h);
    return true;
  }
  
  public void h(boolean paramBoolean)
  {
    if (paramBoolean == e) {}
    for (;;)
    {
      return;
      e = paramBoolean;
      int k = f.size();
      int j = 0;
      while (j < k)
      {
        ((ActionBar.a)f.get(j)).a(paramBoolean);
        j += 1;
      }
    }
  }
  
  public boolean h()
  {
    if (a.c())
    {
      a.d();
      return true;
    }
    return false;
  }
  
  public Window.Callback i()
  {
    return c;
  }
  
  void j()
  {
    Menu localMenu = k();
    if ((localMenu instanceof android.support.v7.internal.view.menu.f)) {}
    for (localf = (android.support.v7.internal.view.menu.f)localMenu;; localf = null)
    {
      if (localf != null) {
        localf.g();
      }
      try
      {
        localMenu.clear();
        if ((!c.onCreatePanelMenu(0, localMenu)) || (!c.onPreparePanel(0, null, localMenu))) {
          localMenu.clear();
        }
        return;
      }
      finally
      {
        if (localf == null) {
          break;
        }
        localf.h();
      }
    }
  }
  
  private final class a
    implements l.a
  {
    private boolean b;
    
    private a() {}
    
    public void a(android.support.v7.internal.view.menu.f paramf, boolean paramBoolean)
    {
      if (b) {
        return;
      }
      b = true;
      d.c(d.this).n();
      if (d.a(d.this) != null) {
        d.a(d.this).onPanelClosed(108, paramf);
      }
      b = false;
    }
    
    public boolean a(android.support.v7.internal.view.menu.f paramf)
    {
      if (d.a(d.this) != null)
      {
        d.a(d.this).onMenuOpened(108, paramf);
        return true;
      }
      return false;
    }
  }
  
  private final class b
    implements f.a
  {
    private b() {}
    
    public void a(android.support.v7.internal.view.menu.f paramf)
    {
      if (d.a(d.this) != null)
      {
        if (!d.c(d.this).i()) {
          break label41;
        }
        d.a(d.this).onPanelClosed(108, paramf);
      }
      label41:
      while (!d.a(d.this).onPreparePanel(0, null, paramf)) {
        return;
      }
      d.a(d.this).onMenuOpened(108, paramf);
    }
    
    public boolean a(android.support.v7.internal.view.menu.f paramf, MenuItem paramMenuItem)
    {
      return false;
    }
  }
  
  private final class c
    implements l.a
  {
    private c() {}
    
    public void a(android.support.v7.internal.view.menu.f paramf, boolean paramBoolean)
    {
      if (d.a(d.this) != null) {
        d.a(d.this).onPanelClosed(0, paramf);
      }
    }
    
    public boolean a(android.support.v7.internal.view.menu.f paramf)
    {
      if ((paramf == null) && (d.a(d.this) != null)) {
        d.a(d.this).onMenuOpened(0, paramf);
      }
      return true;
    }
  }
  
  private class d
    extends g
  {
    public d(Window.Callback paramCallback)
    {
      super();
    }
    
    public View onCreatePanelView(int paramInt)
    {
      switch (paramInt)
      {
      }
      Menu localMenu;
      do
      {
        return super.onCreatePanelView(paramInt);
        localMenu = d.c(d.this).s();
      } while ((!onPreparePanel(paramInt, null, localMenu)) || (!onMenuOpened(paramInt, localMenu)));
      return d.a(d.this, localMenu);
    }
    
    public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
    {
      boolean bool = super.onPreparePanel(paramInt, paramView, paramMenu);
      if ((bool) && (!d.b(d.this)))
      {
        d.c(d.this).m();
        d.a(d.this, true);
      }
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */