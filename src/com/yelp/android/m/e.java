package com.yelp.android.m;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.support.v4.view.be;
import android.support.v4.view.bf;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBar.a;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.ActionBarOverlayLayout.a;
import android.support.v7.internal.widget.k;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.yelp.android.j.a.f;
import com.yelp.android.j.a.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class e
  extends ActionBar
  implements ActionBarOverlayLayout.a
{
  private static final Interpolator i;
  private static final Interpolator j;
  private static final boolean k;
  private boolean A;
  private int B = 0;
  private boolean C = true;
  private boolean D;
  private boolean E;
  private boolean F;
  private boolean G = true;
  private com.yelp.android.p.f H;
  private boolean I;
  a a;
  com.yelp.android.r.a b;
  com.yelp.android.r.a.a c;
  boolean d;
  final bd e = new be()
  {
    public void b(View paramAnonymousView)
    {
      if ((e.a(e.this)) && (e.b(e.this) != null))
      {
        ai.b(e.b(e.this), 0.0F);
        ai.b(e.c(e.this), 0.0F);
      }
      e.c(e.this).setVisibility(8);
      e.c(e.this).setTransitioning(false);
      e.a(e.this, null);
      i();
      if (e.d(e.this) != null) {
        ai.w(e.d(e.this));
      }
    }
  };
  final bd f = new be()
  {
    public void b(View paramAnonymousView)
    {
      e.a(e.this, null);
      e.c(e.this).requestLayout();
    }
  };
  final bf g = new bf()
  {
    public void a(View paramAnonymousView)
    {
      ((View)e.c(e.this).getParent()).invalidate();
    }
  };
  private Context l;
  private Context m;
  private Activity n;
  private Dialog o;
  private ActionBarOverlayLayout p;
  private ActionBarContainer q;
  private android.support.v7.internal.widget.f r;
  private ActionBarContextView s;
  private View t;
  private k u;
  private ArrayList<Object> v = new ArrayList();
  private int w = -1;
  private boolean x;
  private boolean y;
  private ArrayList<ActionBar.a> z = new ArrayList();
  
  static
  {
    boolean bool2 = true;
    if (!e.class.desiredAssertionStatus())
    {
      bool1 = true;
      h = bool1;
      i = new AccelerateInterpolator();
      j = new DecelerateInterpolator();
      if (Build.VERSION.SDK_INT < 14) {
        break label56;
      }
    }
    label56:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      k = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public e(Activity paramActivity, boolean paramBoolean)
  {
    n = paramActivity;
    paramActivity = paramActivity.getWindow().getDecorView();
    b(paramActivity);
    if (!paramBoolean) {
      t = paramActivity.findViewById(16908290);
    }
  }
  
  public e(Dialog paramDialog)
  {
    o = paramDialog;
    b(paramDialog.getWindow().getDecorView());
  }
  
  private void b(View paramView)
  {
    p = ((ActionBarOverlayLayout)paramView.findViewById(a.f.decor_content_parent));
    if (p != null) {
      p.setActionBarVisibilityCallback(this);
    }
    r = c(paramView.findViewById(a.f.action_bar));
    s = ((ActionBarContextView)paramView.findViewById(a.f.action_context_bar));
    q = ((ActionBarContainer)paramView.findViewById(a.f.action_bar_container));
    if ((r == null) || (s == null) || (q == null)) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with a compatible window decor layout");
    }
    l = r.b();
    int i1;
    if ((r.o() & 0x4) != 0)
    {
      i1 = 1;
      if (i1 != 0) {
        x = true;
      }
      paramView = com.yelp.android.p.a.a(l);
      if ((!paramView.f()) && (i1 == 0)) {
        break label264;
      }
    }
    label264:
    for (boolean bool = true;; bool = false)
    {
      d(bool);
      m(paramView.d());
      paramView = l.obtainStyledAttributes(null, a.k.ActionBar, com.yelp.android.j.a.a.actionBarStyle, 0);
      if (paramView.getBoolean(a.k.ActionBar_hideOnContentScroll, false)) {
        e(true);
      }
      i1 = paramView.getDimensionPixelSize(a.k.ActionBar_elevation, 0);
      if (i1 != 0) {
        a(i1);
      }
      paramView.recycle();
      return;
      i1 = 0;
      break;
    }
  }
  
  private static boolean b(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3) {}
    while ((!paramBoolean1) && (!paramBoolean2)) {
      return true;
    }
    return false;
  }
  
  private android.support.v7.internal.widget.f c(View paramView)
  {
    if ((paramView instanceof android.support.v7.internal.widget.f)) {
      return (android.support.v7.internal.widget.f)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    if ("Can't make a decor toolbar out of " + paramView != null) {}
    for (paramView = paramView.getClass().getSimpleName();; paramView = "null") {
      throw new IllegalStateException(paramView);
    }
  }
  
  private void m(boolean paramBoolean)
  {
    boolean bool = true;
    A = paramBoolean;
    int i1;
    label45:
    label78:
    Object localObject;
    if (!A)
    {
      r.a(null);
      q.setTabContainer(u);
      if (j() != 2) {
        break label155;
      }
      i1 = 1;
      if (u != null)
      {
        if (i1 == 0) {
          break label160;
        }
        u.setVisibility(0);
        if (p != null) {
          ai.w(p);
        }
      }
      localObject = r;
      if ((A) || (i1 == 0)) {
        break label172;
      }
      paramBoolean = true;
      label97:
      ((android.support.v7.internal.widget.f)localObject).a(paramBoolean);
      localObject = p;
      if ((A) || (i1 == 0)) {
        break label177;
      }
    }
    label155:
    label160:
    label172:
    label177:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      ((ActionBarOverlayLayout)localObject).setHasNonEmbeddedTabs(paramBoolean);
      return;
      q.setTabContainer(null);
      r.a(u);
      break;
      i1 = 0;
      break label45;
      u.setVisibility(8);
      break label78;
      paramBoolean = false;
      break label97;
    }
  }
  
  private void n(boolean paramBoolean)
  {
    if (b(D, E, F)) {
      if (!G)
      {
        G = true;
        j(paramBoolean);
      }
    }
    while (!G) {
      return;
    }
    G = false;
    k(paramBoolean);
  }
  
  private void o()
  {
    if (!F)
    {
      F = true;
      if (p != null) {
        p.setShowingForActionMode(true);
      }
      n(false);
    }
  }
  
  private void p()
  {
    if (F)
    {
      F = false;
      if (p != null) {
        p.setShowingForActionMode(false);
      }
      n(false);
    }
  }
  
  public View a()
  {
    return r.q();
  }
  
  public com.yelp.android.r.a a(com.yelp.android.r.a.a parama)
  {
    if (a != null) {
      a.c();
    }
    p.setHideOnContentScrollEnabled(false);
    s.c();
    parama = new a(s.getContext(), parama);
    if (parama.e())
    {
      parama.d();
      s.a(parama);
      l(true);
      s.sendAccessibilityEvent(32);
      a = parama;
      return parama;
    }
    return null;
  }
  
  public void a(float paramFloat)
  {
    ai.h(q, paramFloat);
  }
  
  public void a(int paramInt)
  {
    a(LayoutInflater.from(f()).inflate(paramInt, r.a(), false));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i1 = r.o();
    if ((paramInt2 & 0x4) != 0) {
      x = true;
    }
    r.c(i1 & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public void a(Configuration paramConfiguration)
  {
    m(com.yelp.android.p.a.a(l).d());
  }
  
  public void a(Drawable paramDrawable)
  {
    q.setPrimaryBackground(paramDrawable);
  }
  
  public void a(ActionBar.a parama)
  {
    z.add(parama);
  }
  
  public void a(View paramView)
  {
    r.a(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    r.b(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      a(i1, 4);
      return;
    }
  }
  
  public int b()
  {
    return r.o();
  }
  
  public void b(int paramInt)
  {
    a(l.getString(paramInt));
  }
  
  public void b(CharSequence paramCharSequence)
  {
    r.a(paramCharSequence);
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 8;; i1 = 0)
    {
      a(i1, 8);
      return;
    }
  }
  
  public int c()
  {
    return q.getHeight();
  }
  
  public void c(int paramInt)
  {
    r.d(paramInt);
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 16;; i1 = 0)
    {
      a(i1, 16);
      return;
    }
  }
  
  public void d()
  {
    if (D)
    {
      D = false;
      n(false);
    }
  }
  
  public void d(int paramInt)
  {
    B = paramInt;
  }
  
  public void d(boolean paramBoolean)
  {
    r.b(paramBoolean);
  }
  
  public void e()
  {
    if (!D)
    {
      D = true;
      n(false);
    }
  }
  
  public void e(boolean paramBoolean)
  {
    if ((paramBoolean) && (!p.a())) {
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }
    d = paramBoolean;
    p.setHideOnContentScrollEnabled(paramBoolean);
  }
  
  public Context f()
  {
    int i1;
    if (m == null)
    {
      TypedValue localTypedValue = new TypedValue();
      l.getTheme().resolveAttribute(com.yelp.android.j.a.a.actionBarWidgetTheme, localTypedValue, true);
      i1 = resourceId;
      if (i1 == 0) {
        break label61;
      }
    }
    label61:
    for (m = new ContextThemeWrapper(l, i1);; m = l) {
      return m;
    }
  }
  
  public void f(boolean paramBoolean)
  {
    if (!x) {
      a(paramBoolean);
    }
  }
  
  public void g(boolean paramBoolean)
  {
    I = paramBoolean;
    if ((!paramBoolean) && (H != null)) {
      H.b();
    }
  }
  
  public void h(boolean paramBoolean)
  {
    if (paramBoolean == y) {}
    for (;;)
    {
      return;
      y = paramBoolean;
      int i2 = z.size();
      int i1 = 0;
      while (i1 < i2)
      {
        ((ActionBar.a)z.get(i1)).a(paramBoolean);
        i1 += 1;
      }
    }
  }
  
  public boolean h()
  {
    if ((r != null) && (r.c()))
    {
      r.d();
      return true;
    }
    return false;
  }
  
  void i()
  {
    if (c != null)
    {
      c.a(b);
      b = null;
      c = null;
    }
  }
  
  public void i(boolean paramBoolean)
  {
    C = paramBoolean;
  }
  
  public int j()
  {
    return r.p();
  }
  
  public void j(boolean paramBoolean)
  {
    if (H != null) {
      H.b();
    }
    q.setVisibility(0);
    if ((B == 0) && (k) && ((I) || (paramBoolean)))
    {
      ai.b(q, 0.0F);
      float f2 = -q.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp77_75 = localObject;
        tmp77_75[0] = 0;
        Object tmp81_77 = tmp77_75;
        tmp81_77[1] = 0;
        tmp81_77;
        q.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      ai.b(q, f1);
      Object localObject = new com.yelp.android.p.f();
      az localaz = ai.s(q).c(0.0F);
      localaz.a(g);
      ((com.yelp.android.p.f)localObject).a(localaz);
      if ((C) && (t != null))
      {
        ai.b(t, f1);
        ((com.yelp.android.p.f)localObject).a(ai.s(t).c(0.0F));
      }
      ((com.yelp.android.p.f)localObject).a(j);
      ((com.yelp.android.p.f)localObject).a(250L);
      ((com.yelp.android.p.f)localObject).a(f);
      H = ((com.yelp.android.p.f)localObject);
      ((com.yelp.android.p.f)localObject).a();
    }
    for (;;)
    {
      if (p != null) {
        ai.w(p);
      }
      return;
      ai.c(q, 1.0F);
      ai.b(q, 0.0F);
      if ((C) && (t != null)) {
        ai.b(t, 0.0F);
      }
      f.b(null);
    }
  }
  
  public void k()
  {
    if (E)
    {
      E = false;
      n(true);
    }
  }
  
  public void k(boolean paramBoolean)
  {
    if (H != null) {
      H.b();
    }
    if ((B == 0) && (k) && ((I) || (paramBoolean)))
    {
      ai.c(q, 1.0F);
      q.setTransitioning(true);
      com.yelp.android.p.f localf = new com.yelp.android.p.f();
      float f2 = -q.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp86_84 = localObject;
        tmp86_84[0] = 0;
        Object tmp90_86 = tmp86_84;
        tmp90_86[1] = 0;
        tmp90_86;
        q.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      Object localObject = ai.s(q).c(f1);
      ((az)localObject).a(g);
      localf.a((az)localObject);
      if ((C) && (t != null)) {
        localf.a(ai.s(t).c(f1));
      }
      localf.a(i);
      localf.a(250L);
      localf.a(e);
      H = localf;
      localf.a();
      return;
    }
    e.b(null);
  }
  
  public void l()
  {
    if (!E)
    {
      E = true;
      n(true);
    }
  }
  
  public void l(boolean paramBoolean)
  {
    az localaz1;
    az localaz2;
    if (paramBoolean)
    {
      o();
      if (!paramBoolean) {
        break label69;
      }
      localaz1 = r.a(8, 100L);
      localaz2 = s.a(0, 200L);
    }
    for (;;)
    {
      com.yelp.android.p.f localf = new com.yelp.android.p.f();
      localf.a(localaz1, localaz2);
      localf.a();
      return;
      p();
      break;
      label69:
      localaz2 = r.a(0, 200L);
      localaz1 = s.a(8, 100L);
    }
  }
  
  public void m()
  {
    if (H != null)
    {
      H.b();
      H = null;
    }
  }
  
  public void n() {}
  
  public class a
    extends com.yelp.android.r.a
    implements f.a
  {
    private final Context b;
    private final android.support.v7.internal.view.menu.f c;
    private com.yelp.android.r.a.a d;
    private WeakReference<View> e;
    
    public a(Context paramContext, com.yelp.android.r.a.a parama)
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
      b(e.i(e.this).getResources().getString(paramInt));
    }
    
    public void a(android.support.v7.internal.view.menu.f paramf)
    {
      if (d == null) {
        return;
      }
      d();
      e.g(e.this).a();
    }
    
    public void a(View paramView)
    {
      e.g(e.this).setCustomView(paramView);
      e = new WeakReference(paramView);
    }
    
    public void a(CharSequence paramCharSequence)
    {
      e.g(e.this).setSubtitle(paramCharSequence);
    }
    
    public void a(boolean paramBoolean)
    {
      super.a(paramBoolean);
      e.g(e.this).setTitleOptional(paramBoolean);
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
      a(e.i(e.this).getResources().getString(paramInt));
    }
    
    public void b(CharSequence paramCharSequence)
    {
      e.g(e.this).setTitle(paramCharSequence);
    }
    
    public void c()
    {
      if (a != this) {
        return;
      }
      if (!e.a(e.e(e.this), e.f(e.this), false))
      {
        b = this;
        c = d;
      }
      for (;;)
      {
        d = null;
        l(false);
        e.g(e.this).b();
        e.h(e.this).a().sendAccessibilityEvent(32);
        e.d(e.this).setHideOnContentScrollEnabled(d);
        a = null;
        return;
        d.a(this);
      }
    }
    
    public void d()
    {
      if (a != this) {
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
      return e.g(e.this).getTitle();
    }
    
    public CharSequence g()
    {
      return e.g(e.this).getSubtitle();
    }
    
    public boolean h()
    {
      return e.g(e.this).d();
    }
    
    public View i()
    {
      if (e != null) {
        return (View)e.get();
      }
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */