package com.yelp.android.i;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ce;
import android.support.v4.view.eh;
import android.support.v4.view.ex;
import android.support.v4.view.ez;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.ah;
import android.support.v7.internal.widget.ap;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.animation.AnimationUtils;
import com.yelp.android.g.g;
import com.yelp.android.l.h;
import java.util.ArrayList;

public class i
  extends ActionBar
  implements android.support.v7.internal.widget.l
{
  private static final boolean i;
  private int A = 0;
  private boolean B = true;
  private boolean C;
  private boolean D;
  private boolean E;
  private boolean F = true;
  private h G;
  private boolean H;
  m a;
  com.yelp.android.m.a b;
  com.yelp.android.m.b c;
  boolean d;
  final ex e = new j(this);
  final ex f = new k(this);
  final ez g = new l(this);
  private Context j;
  private Context k;
  private FragmentActivity l;
  private ActionBarOverlayLayout m;
  private ActionBarContainer n;
  private ah o;
  private ActionBarContextView p;
  private ActionBarContainer q;
  private View r;
  private ap s;
  private ArrayList<Object> t = new ArrayList();
  private int u = -1;
  private boolean v;
  private boolean w;
  private ArrayList<android.support.v7.app.a> x = new ArrayList();
  private int y;
  private boolean z;
  
  static
  {
    boolean bool2 = true;
    if (!i.class.desiredAssertionStatus())
    {
      bool1 = true;
      h = bool1;
      if (Build.VERSION.SDK_INT < 14) {
        break label36;
      }
    }
    label36:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      i = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public i(ActionBarActivity paramActionBarActivity, boolean paramBoolean)
  {
    l = paramActionBarActivity;
    paramActionBarActivity = paramActionBarActivity.getWindow().getDecorView();
    b(paramActionBarActivity);
    if (!paramBoolean) {
      r = paramActionBarActivity.findViewById(16908290);
    }
  }
  
  private void b(View paramView)
  {
    m = ((ActionBarOverlayLayout)paramView.findViewById(g.decor_content_parent));
    if (m != null) {
      m.setActionBarVisibilityCallback(this);
    }
    o = c(paramView.findViewById(g.action_bar));
    p = ((ActionBarContextView)paramView.findViewById(g.action_context_bar));
    n = ((ActionBarContainer)paramView.findViewById(g.action_bar_container));
    q = ((ActionBarContainer)paramView.findViewById(g.split_action_bar));
    if ((o == null) || (p == null) || (n == null)) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with a compatible window decor layout");
    }
    j = o.b();
    int i1;
    if (o.c())
    {
      i1 = 1;
      y = i1;
      if ((o.p() & 0x4) == 0) {
        break label297;
      }
      i1 = 1;
      label193:
      if (i1 != 0) {
        v = true;
      }
      paramView = com.yelp.android.l.a.a(j);
      if ((!paramView.f()) && (i1 == 0)) {
        break label302;
      }
    }
    label297:
    label302:
    for (boolean bool = true;; bool = false)
    {
      d(bool);
      m(paramView.d());
      paramView = j.obtainStyledAttributes(null, com.yelp.android.g.l.ActionBar, com.yelp.android.g.b.actionBarStyle, 0);
      if (paramView.getBoolean(com.yelp.android.g.l.ActionBar_hideOnContentScroll, false)) {
        e(true);
      }
      i1 = paramView.getDimensionPixelSize(com.yelp.android.g.l.ActionBar_elevation, 0);
      if (i1 != 0) {
        a(i1);
      }
      paramView.recycle();
      return;
      i1 = 0;
      break;
      i1 = 0;
      break label193;
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
  
  private ah c(View paramView)
  {
    if ((paramView instanceof ah)) {
      return (ah)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + paramView.getClass().getSimpleName());
  }
  
  private void m(boolean paramBoolean)
  {
    boolean bool = true;
    z = paramBoolean;
    int i1;
    label45:
    label78:
    Object localObject;
    if (!z)
    {
      o.a(null);
      n.setTabContainer(s);
      if (j() != 2) {
        break label155;
      }
      i1 = 1;
      if (s != null)
      {
        if (i1 == 0) {
          break label160;
        }
        s.setVisibility(0);
        if (m != null) {
          ce.t(m);
        }
      }
      localObject = o;
      if ((z) || (i1 == 0)) {
        break label172;
      }
      paramBoolean = true;
      label97:
      ((ah)localObject).a(paramBoolean);
      localObject = m;
      if ((z) || (i1 == 0)) {
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
      n.setTabContainer(null);
      o.a(s);
      break;
      i1 = 0;
      break label45;
      s.setVisibility(8);
      break label78;
      paramBoolean = false;
      break label97;
    }
  }
  
  private void n(boolean paramBoolean)
  {
    if (b(C, D, E)) {
      if (!F)
      {
        F = true;
        j(paramBoolean);
      }
    }
    while (!F) {
      return;
    }
    F = false;
    k(paramBoolean);
  }
  
  private void o()
  {
    if (!E)
    {
      E = true;
      if (m != null) {
        m.setShowingForActionMode(true);
      }
      n(false);
    }
  }
  
  private void p()
  {
    if (E)
    {
      E = false;
      if (m != null) {
        m.setShowingForActionMode(false);
      }
      n(false);
    }
  }
  
  public View a()
  {
    return o.r();
  }
  
  public com.yelp.android.m.a a(com.yelp.android.m.b paramb)
  {
    if (a != null) {
      a.c();
    }
    m.setHideOnContentScrollEnabled(false);
    p.c();
    paramb = new m(this, p.getContext(), paramb);
    if (paramb.e())
    {
      paramb.d();
      p.a(paramb);
      l(true);
      if ((q != null) && (y == 1) && (q.getVisibility() != 0))
      {
        q.setVisibility(0);
        if (m != null) {
          ce.t(m);
        }
      }
      p.sendAccessibilityEvent(32);
      a = paramb;
      return paramb;
    }
    return null;
  }
  
  public void a(float paramFloat)
  {
    ce.f(n, paramFloat);
    if (q != null) {
      ce.f(q, paramFloat);
    }
  }
  
  public void a(int paramInt)
  {
    a(LayoutInflater.from(f()).inflate(paramInt, o.a(), false));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i1 = o.p();
    if ((paramInt2 & 0x4) != 0) {
      v = true;
    }
    o.c(i1 & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public void a(Configuration paramConfiguration)
  {
    m(com.yelp.android.l.a.a(j).d());
  }
  
  public void a(Drawable paramDrawable)
  {
    n.setPrimaryBackground(paramDrawable);
  }
  
  public void a(android.support.v7.app.a parama)
  {
    x.add(parama);
  }
  
  public void a(View paramView)
  {
    o.a(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    o.b(paramCharSequence);
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
    return o.p();
  }
  
  public void b(int paramInt)
  {
    a(j.getString(paramInt));
  }
  
  public void b(Drawable paramDrawable)
  {
    o.b(paramDrawable);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    o.a(paramCharSequence);
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
    return n.getHeight();
  }
  
  public void c(int paramInt)
  {
    o.e(paramInt);
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
    if (C)
    {
      C = false;
      n(false);
    }
  }
  
  public void d(int paramInt)
  {
    A = paramInt;
  }
  
  public void d(boolean paramBoolean)
  {
    o.b(paramBoolean);
  }
  
  public void e()
  {
    if (!C)
    {
      C = true;
      n(false);
    }
  }
  
  public void e(boolean paramBoolean)
  {
    if ((paramBoolean) && (!m.a())) {
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }
    d = paramBoolean;
    m.setHideOnContentScrollEnabled(paramBoolean);
  }
  
  public Context f()
  {
    int i1;
    if (k == null)
    {
      TypedValue localTypedValue = new TypedValue();
      j.getTheme().resolveAttribute(com.yelp.android.g.b.actionBarWidgetTheme, localTypedValue, true);
      i1 = resourceId;
      if (i1 == 0) {
        break label61;
      }
    }
    label61:
    for (k = new ContextThemeWrapper(j, i1);; k = j) {
      return k;
    }
  }
  
  public void f(boolean paramBoolean)
  {
    if (!v) {
      a(paramBoolean);
    }
  }
  
  public void g(boolean paramBoolean)
  {
    H = paramBoolean;
    if ((!paramBoolean) && (G != null)) {
      G.b();
    }
  }
  
  public void h(boolean paramBoolean)
  {
    if (paramBoolean == w) {}
    for (;;)
    {
      return;
      w = paramBoolean;
      int i2 = x.size();
      int i1 = 0;
      while (i1 < i2)
      {
        ((android.support.v7.app.a)x.get(i1)).a(paramBoolean);
        i1 += 1;
      }
    }
  }
  
  public boolean h()
  {
    if ((o != null) && (o.d()))
    {
      o.e();
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
    B = paramBoolean;
  }
  
  public int j()
  {
    return o.q();
  }
  
  public void j(boolean paramBoolean)
  {
    if (G != null) {
      G.b();
    }
    n.setVisibility(0);
    if ((A == 0) && (i) && ((H) || (paramBoolean)))
    {
      ce.b(n, 0.0F);
      float f2 = -n.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp77_75 = localObject;
        tmp77_75[0] = 0;
        Object tmp81_77 = tmp77_75;
        tmp81_77[1] = 0;
        tmp81_77;
        n.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      ce.b(n, f1);
      Object localObject = new h();
      eh localeh = ce.q(n).c(0.0F);
      localeh.a(g);
      ((h)localObject).a(localeh);
      if ((B) && (r != null))
      {
        ce.b(r, f1);
        ((h)localObject).a(ce.q(r).c(0.0F));
      }
      if ((q != null) && (y == 1))
      {
        ce.b(q, q.getHeight());
        q.setVisibility(0);
        ((h)localObject).a(ce.q(q).c(0.0F));
      }
      ((h)localObject).a(AnimationUtils.loadInterpolator(j, 17432582));
      ((h)localObject).a(250L);
      ((h)localObject).a(f);
      G = ((h)localObject);
      ((h)localObject).a();
    }
    for (;;)
    {
      if (m != null) {
        ce.t(m);
      }
      return;
      ce.c(n, 1.0F);
      ce.b(n, 0.0F);
      if ((B) && (r != null)) {
        ce.b(r, 0.0F);
      }
      if ((q != null) && (y == 1))
      {
        ce.c(q, 1.0F);
        ce.b(q, 0.0F);
        q.setVisibility(0);
      }
      f.b(null);
    }
  }
  
  public void k()
  {
    if (D)
    {
      D = false;
      n(true);
    }
  }
  
  public void k(boolean paramBoolean)
  {
    if (G != null) {
      G.b();
    }
    if ((A == 0) && (i) && ((H) || (paramBoolean)))
    {
      ce.c(n, 1.0F);
      n.setTransitioning(true);
      h localh = new h();
      float f2 = -n.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp86_84 = localObject;
        tmp86_84[0] = 0;
        Object tmp90_86 = tmp86_84;
        tmp90_86[1] = 0;
        tmp90_86;
        n.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      Object localObject = ce.q(n).c(f1);
      ((eh)localObject).a(g);
      localh.a((eh)localObject);
      if ((B) && (r != null)) {
        localh.a(ce.q(r).c(f1));
      }
      if ((q != null) && (q.getVisibility() == 0))
      {
        ce.c(q, 1.0F);
        localh.a(ce.q(q).c(q.getHeight()));
      }
      localh.a(AnimationUtils.loadInterpolator(j, 17432581));
      localh.a(250L);
      localh.a(e);
      G = localh;
      localh.a();
      return;
    }
    e.b(null);
  }
  
  public void l()
  {
    if (!D)
    {
      D = true;
      n(true);
    }
  }
  
  public void l(boolean paramBoolean)
  {
    int i2 = 0;
    Object localObject;
    if (paramBoolean)
    {
      o();
      localObject = o;
      if (!paramBoolean) {
        break label57;
      }
      i1 = 8;
      label23:
      ((ah)localObject).d(i1);
      localObject = p;
      if (!paramBoolean) {
        break label62;
      }
    }
    label57:
    label62:
    for (int i1 = i2;; i1 = 8)
    {
      ((ActionBarContextView)localObject).a(i1);
      return;
      p();
      break;
      i1 = 0;
      break label23;
    }
  }
  
  public void m()
  {
    if (G != null)
    {
      G.b();
      G = null;
    }
  }
  
  public void n() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.i.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */