package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.be;
import android.support.v7.internal.view.menu.a;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.Toolbar.LayoutParams;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.e;
import com.yelp.android.j.a.f;
import com.yelp.android.j.a.i;
import com.yelp.android.j.a.k;

public class q
  implements f
{
  private Toolbar a;
  private int b;
  private View c;
  private View d;
  private Drawable e;
  private Drawable f;
  private Drawable g;
  private boolean h;
  private CharSequence i;
  private CharSequence j;
  private CharSequence k;
  private Window.Callback l;
  private boolean m;
  private ActionMenuPresenter n;
  private int o = 0;
  private final o p;
  private int q = 0;
  private Drawable r;
  
  public q(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, paramBoolean, a.i.abc_action_bar_up_description, a.e.abc_ic_ab_back_mtrl_am_alpha);
  }
  
  public q(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    a = paramToolbar;
    i = paramToolbar.getTitle();
    j = paramToolbar.getSubtitle();
    boolean bool;
    if (i != null)
    {
      bool = true;
      h = bool;
      g = paramToolbar.getNavigationIcon();
      if (!paramBoolean) {
        break label492;
      }
      paramToolbar = p.a(paramToolbar.getContext(), null, a.k.ActionBar, a.a.actionBarStyle, 0);
      Object localObject = paramToolbar.c(a.k.ActionBar_title);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        b((CharSequence)localObject);
      }
      localObject = paramToolbar.c(a.k.ActionBar_subtitle);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        c((CharSequence)localObject);
      }
      localObject = paramToolbar.a(a.k.ActionBar_logo);
      if (localObject != null) {
        d((Drawable)localObject);
      }
      localObject = paramToolbar.a(a.k.ActionBar_icon);
      if ((g == null) && (localObject != null)) {
        a((Drawable)localObject);
      }
      localObject = paramToolbar.a(a.k.ActionBar_homeAsUpIndicator);
      if (localObject != null) {
        e((Drawable)localObject);
      }
      c(paramToolbar.a(a.k.ActionBar_displayOptions, 0));
      int i1 = paramToolbar.g(a.k.ActionBar_customNavigationLayout, 0);
      if (i1 != 0)
      {
        a(LayoutInflater.from(a.getContext()).inflate(i1, a, false));
        c(b | 0x10);
      }
      i1 = paramToolbar.f(a.k.ActionBar_height, 0);
      if (i1 > 0)
      {
        localObject = a.getLayoutParams();
        height = i1;
        a.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      i1 = paramToolbar.d(a.k.ActionBar_contentInsetStart, -1);
      int i2 = paramToolbar.d(a.k.ActionBar_contentInsetEnd, -1);
      if ((i1 >= 0) || (i2 >= 0)) {
        a.a(Math.max(i1, 0), Math.max(i2, 0));
      }
      i1 = paramToolbar.g(a.k.ActionBar_titleTextStyle, 0);
      if (i1 != 0) {
        a.a(a.getContext(), i1);
      }
      i1 = paramToolbar.g(a.k.ActionBar_subtitleTextStyle, 0);
      if (i1 != 0) {
        a.b(a.getContext(), i1);
      }
      i1 = paramToolbar.g(a.k.ActionBar_popupTheme, 0);
      if (i1 != 0) {
        a.setPopupTheme(i1);
      }
      paramToolbar.b();
    }
    for (p = paramToolbar.c();; p = o.a(paramToolbar.getContext()))
    {
      f(paramInt1);
      k = a.getNavigationContentDescription();
      c(p.a(paramInt2));
      a.setNavigationOnClickListener(new View.OnClickListener()
      {
        final a a = new a(q.a(q.this).getContext(), 0, 16908332, 0, 0, q.b(q.this));
        
        public void onClick(View paramAnonymousView)
        {
          if ((q.c(q.this) != null) && (q.d(q.this))) {
            q.c(q.this).onMenuItemSelected(0, a);
          }
        }
      });
      return;
      bool = false;
      break;
      label492:
      b = t();
    }
  }
  
  private void e(CharSequence paramCharSequence)
  {
    i = paramCharSequence;
    if ((b & 0x8) != 0) {
      a.setTitle(paramCharSequence);
    }
  }
  
  private int t()
  {
    int i1 = 11;
    if (a.getNavigationIcon() != null) {
      i1 = 15;
    }
    return i1;
  }
  
  private void u()
  {
    Drawable localDrawable = null;
    if ((b & 0x2) != 0)
    {
      if ((b & 0x1) == 0) {
        break label49;
      }
      if (f == null) {
        break label41;
      }
      localDrawable = f;
    }
    for (;;)
    {
      a.setLogo(localDrawable);
      return;
      label41:
      localDrawable = e;
      continue;
      label49:
      localDrawable = e;
    }
  }
  
  private void v()
  {
    if ((b & 0x4) != 0)
    {
      if (TextUtils.isEmpty(k)) {
        a.setNavigationContentDescription(q);
      }
    }
    else {
      return;
    }
    a.setNavigationContentDescription(k);
  }
  
  private void w()
  {
    Toolbar localToolbar;
    if ((b & 0x4) != 0)
    {
      localToolbar = a;
      if (g == null) {
        break label32;
      }
    }
    label32:
    for (Drawable localDrawable = g;; localDrawable = r)
    {
      localToolbar.setNavigationIcon(localDrawable);
      return;
    }
  }
  
  public az a(int paramInt, long paramLong)
  {
    az localaz;
    if (paramInt == 8)
    {
      localaz = ai.s(a).a(0.0F);
      localaz.a(paramLong);
      localaz.a(new be()
      {
        private boolean b = false;
        
        public void b(View paramAnonymousView)
        {
          if (!b) {
            q.a(q.this).setVisibility(8);
          }
        }
        
        public void c(View paramAnonymousView)
        {
          b = true;
        }
      });
      return localaz;
    }
    if (paramInt == 0)
    {
      localaz = ai.s(a).a(1.0F);
      localaz.a(paramLong);
      localaz.a(new be()
      {
        public void a(View paramAnonymousView)
        {
          q.a(q.this).setVisibility(0);
        }
      });
      return localaz;
    }
    return null;
  }
  
  public ViewGroup a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = p.a(paramInt);; localDrawable = null)
    {
      a(localDrawable);
      return;
    }
  }
  
  public void a(Drawable paramDrawable)
  {
    e = paramDrawable;
    u();
  }
  
  public void a(l.a parama, f.a parama1)
  {
    a.a(parama, parama1);
  }
  
  public void a(k paramk)
  {
    if ((c != null) && (c.getParent() == a)) {
      a.removeView(c);
    }
    c = paramk;
    if ((paramk != null) && (o == 2))
    {
      a.addView(c, 0);
      Toolbar.LayoutParams localLayoutParams = (Toolbar.LayoutParams)c.getLayoutParams();
      width = -2;
      height = -2;
      a = 8388691;
      paramk.setAllowCollapse(true);
    }
  }
  
  public void a(Menu paramMenu, l.a parama)
  {
    if (n == null)
    {
      n = new ActionMenuPresenter(a.getContext());
      n.a(a.f.action_menu_presenter);
    }
    n.a(parama);
    a.a((android.support.v7.internal.view.menu.f)paramMenu, n);
  }
  
  public void a(View paramView)
  {
    if ((d != null) && ((b & 0x10) != 0)) {
      a.removeView(d);
    }
    d = paramView;
    if ((paramView != null) && ((b & 0x10) != 0)) {
      a.addView(d);
    }
  }
  
  public void a(Window.Callback paramCallback)
  {
    l = paramCallback;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (!h) {
      e(paramCharSequence);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a.setCollapsible(paramBoolean);
  }
  
  public Context b()
  {
    return a.getContext();
  }
  
  public void b(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = p.a(paramInt);; localDrawable = null)
    {
      d(localDrawable);
      return;
    }
  }
  
  public void b(Drawable paramDrawable)
  {
    a.setBackgroundDrawable(paramDrawable);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    h = true;
    e(paramCharSequence);
  }
  
  public void b(boolean paramBoolean) {}
  
  public void c(int paramInt)
  {
    int i1 = b ^ paramInt;
    b = paramInt;
    if (i1 != 0)
    {
      if ((i1 & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0) {
          break label115;
        }
        w();
        v();
      }
      if ((i1 & 0x3) != 0) {
        u();
      }
      if ((i1 & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0) {
          break label126;
        }
        a.setTitle(i);
        a.setSubtitle(j);
      }
    }
    for (;;)
    {
      if (((i1 & 0x10) != 0) && (d != null))
      {
        if ((paramInt & 0x10) == 0) {
          break label145;
        }
        a.addView(d);
      }
      return;
      label115:
      a.setNavigationIcon(null);
      break;
      label126:
      a.setTitle(null);
      a.setSubtitle(null);
    }
    label145:
    a.removeView(d);
  }
  
  public void c(Drawable paramDrawable)
  {
    if (r != paramDrawable)
    {
      r = paramDrawable;
      w();
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    j = paramCharSequence;
    if ((b & 0x8) != 0) {
      a.setSubtitle(paramCharSequence);
    }
  }
  
  public boolean c()
  {
    return a.g();
  }
  
  public void d()
  {
    a.h();
  }
  
  public void d(int paramInt)
  {
    if (paramInt == 0) {}
    for (Object localObject = null;; localObject = b().getString(paramInt))
    {
      d((CharSequence)localObject);
      return;
    }
  }
  
  public void d(Drawable paramDrawable)
  {
    f = paramDrawable;
    u();
  }
  
  public void d(CharSequence paramCharSequence)
  {
    k = paramCharSequence;
    v();
  }
  
  public CharSequence e()
  {
    return a.getTitle();
  }
  
  public void e(int paramInt)
  {
    a.setVisibility(paramInt);
  }
  
  public void e(Drawable paramDrawable)
  {
    g = paramDrawable;
    w();
  }
  
  public void f()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public void f(int paramInt)
  {
    if (paramInt == q) {}
    do
    {
      return;
      q = paramInt;
    } while (!TextUtils.isEmpty(a.getNavigationContentDescription()));
    d(q);
  }
  
  public void g()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public boolean h()
  {
    return a.a();
  }
  
  public boolean i()
  {
    return a.b();
  }
  
  public boolean j()
  {
    return a.c();
  }
  
  public boolean k()
  {
    return a.d();
  }
  
  public boolean l()
  {
    return a.e();
  }
  
  public void m()
  {
    m = true;
  }
  
  public void n()
  {
    a.f();
  }
  
  public int o()
  {
    return b;
  }
  
  public int p()
  {
    return o;
  }
  
  public View q()
  {
    return d;
  }
  
  public int r()
  {
    return a.getHeight();
  }
  
  public Menu s()
  {
    return a.getMenu();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */