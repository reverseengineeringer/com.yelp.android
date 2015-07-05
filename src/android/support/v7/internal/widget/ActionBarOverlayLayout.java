package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ce;
import android.support.v4.view.eh;
import android.support.v4.view.ex;
import android.support.v4.widget.ax;
import android.support.v7.internal.view.menu.y;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.yelp.android.g.b;
import com.yelp.android.g.g;
import com.yelp.android.h.a;

public class ActionBarOverlayLayout
  extends ViewGroup
  implements ag
{
  static final int[] a = { b.actionBarSize, 16842841 };
  private final ex A = new h(this);
  private final ex B = new i(this);
  private final Runnable C = new j(this);
  private final Runnable D = new k(this);
  private int b;
  private int c = 0;
  private ContentFrameLayout d;
  private ActionBarContainer e;
  private ActionBarContainer f;
  private ah g;
  private Drawable h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private int n;
  private int o;
  private final Rect p = new Rect();
  private final Rect q = new Rect();
  private final Rect r = new Rect();
  private final Rect s = new Rect();
  private final Rect t = new Rect();
  private final Rect u = new Rect();
  private l v;
  private final int w = 600;
  private ax x;
  private eh y;
  private eh z;
  
  public ActionBarOverlayLayout(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private ah a(View paramView)
  {
    if ((paramView instanceof ah)) {
      return (ah)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + paramView.getClass().getSimpleName());
  }
  
  private void a(Context paramContext)
  {
    boolean bool2 = true;
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(a);
    b = localTypedArray.getDimensionPixelSize(0, 0);
    h = localTypedArray.getDrawable(1);
    if (h == null)
    {
      bool1 = true;
      setWillNotDraw(bool1);
      localTypedArray.recycle();
      if (getApplicationInfotargetSdkVersion >= 19) {
        break label90;
      }
    }
    label90:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      i = bool1;
      x = ax.a(paramContext);
      return;
      bool1 = false;
      break;
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    boolean bool = false;
    x.a(0, 0, 0, (int)paramFloat2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
    if (x.e() > f.getHeight()) {
      bool = true;
    }
    return bool;
  }
  
  private boolean a(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    boolean bool2 = false;
    paramView = (ActionBarOverlayLayout.LayoutParams)paramView.getLayoutParams();
    boolean bool1 = bool2;
    if (paramBoolean1)
    {
      bool1 = bool2;
      if (leftMargin != left)
      {
        leftMargin = left;
        bool1 = true;
      }
    }
    paramBoolean1 = bool1;
    if (paramBoolean2)
    {
      paramBoolean1 = bool1;
      if (topMargin != top)
      {
        topMargin = top;
        paramBoolean1 = true;
      }
    }
    paramBoolean2 = paramBoolean1;
    if (paramBoolean4)
    {
      paramBoolean2 = paramBoolean1;
      if (rightMargin != right)
      {
        rightMargin = right;
        paramBoolean2 = true;
      }
    }
    if ((paramBoolean3) && (bottomMargin != bottom))
    {
      bottomMargin = bottom;
      return true;
    }
    return paramBoolean2;
  }
  
  private void k()
  {
    removeCallbacks(C);
    removeCallbacks(D);
    if (y != null) {
      y.a();
    }
    if (z != null) {
      z.a();
    }
  }
  
  private void l()
  {
    k();
    postDelayed(C, 600L);
  }
  
  private void m()
  {
    k();
    postDelayed(D, 600L);
  }
  
  private void n()
  {
    k();
    C.run();
  }
  
  private void o()
  {
    k();
    D.run();
  }
  
  public ActionBarOverlayLayout.LayoutParams a(AttributeSet paramAttributeSet)
  {
    return new ActionBarOverlayLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  public void a(int paramInt)
  {
    c();
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      g.g();
      return;
    case 5: 
      g.h();
      return;
    }
    setOverlayMode(true);
  }
  
  public void a(Menu paramMenu, y paramy)
  {
    c();
    g.a(paramMenu, paramy);
  }
  
  public boolean a()
  {
    return j;
  }
  
  protected ActionBarOverlayLayout.LayoutParams b()
  {
    return new ActionBarOverlayLayout.LayoutParams(-1, -1);
  }
  
  void c()
  {
    if (d == null)
    {
      d = ((ContentFrameLayout)findViewById(g.action_bar_activity_content));
      f = ((ActionBarContainer)findViewById(g.action_bar_container));
      g = a(findViewById(g.action_bar));
      e = ((ActionBarContainer)findViewById(g.split_action_bar));
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof ActionBarOverlayLayout.LayoutParams;
  }
  
  public boolean d()
  {
    c();
    return g.i();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((h != null) && (!i)) {
      if (f.getVisibility() != 0) {
        break label82;
      }
    }
    label82:
    for (int i1 = (int)(f.getBottom() + ce.n(f) + 0.5F);; i1 = 0)
    {
      h.setBounds(0, i1, getWidth(), h.getIntrinsicHeight() + i1);
      h.draw(paramCanvas);
      return;
    }
  }
  
  public boolean e()
  {
    c();
    return g.j();
  }
  
  public boolean f()
  {
    c();
    return g.k();
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    c();
    if ((ce.s(this) & 0x100) != 0) {}
    boolean bool2 = a(f, paramRect, true, true, false, true);
    boolean bool1 = bool2;
    if (e != null) {
      bool1 = bool2 | a(e, paramRect, true, false, true, true);
    }
    s.set(paramRect);
    bm.a(this, s, p);
    if (!q.equals(p))
    {
      q.set(p);
      bool1 = true;
    }
    if (bool1) {
      requestLayout();
    }
    return true;
  }
  
  public boolean g()
  {
    c();
    return g.l();
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new ActionBarOverlayLayout.LayoutParams(paramLayoutParams);
  }
  
  public int getActionBarHideOffset()
  {
    if (f != null) {
      return -(int)ce.n(f);
    }
    return 0;
  }
  
  public CharSequence getTitle()
  {
    c();
    return g.f();
  }
  
  public boolean h()
  {
    c();
    return g.m();
  }
  
  public void i()
  {
    c();
    g.n();
  }
  
  public void j()
  {
    c();
    g.o();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    a(getContext());
    ce.t(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    k();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i2 = getPaddingLeft();
    getPaddingRight();
    int i3 = getPaddingTop();
    int i4 = getPaddingBottom();
    paramInt1 = 0;
    if (paramInt1 < i1)
    {
      View localView = getChildAt(paramInt1);
      ActionBarOverlayLayout.LayoutParams localLayoutParams;
      int i5;
      int i6;
      int i7;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (ActionBarOverlayLayout.LayoutParams)localView.getLayoutParams();
        i5 = localView.getMeasuredWidth();
        i6 = localView.getMeasuredHeight();
        i7 = leftMargin + i2;
        if (localView != e) {
          break label141;
        }
      }
      label141:
      for (paramInt3 = paramInt4 - paramInt2 - i4 - i6 - bottomMargin;; paramInt3 = topMargin + i3)
      {
        localView.layout(i7, paramInt3, i5 + i7, i6 + paramInt3);
        paramInt1 += 1;
        break;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    c();
    measureChildWithMargins(f, paramInt1, 0, paramInt2, 0);
    Object localObject = (ActionBarOverlayLayout.LayoutParams)f.getLayoutParams();
    int i5 = Math.max(0, f.getMeasuredWidth() + leftMargin + rightMargin);
    int i1 = f.getMeasuredHeight();
    int i2 = topMargin;
    int i4 = Math.max(0, bottomMargin + (i1 + i2));
    int i3 = bm.a(0, ce.l(f));
    if (e != null)
    {
      measureChildWithMargins(e, paramInt1, 0, paramInt2, 0);
      localObject = (ActionBarOverlayLayout.LayoutParams)e.getLayoutParams();
      i5 = Math.max(i5, e.getMeasuredWidth() + leftMargin + rightMargin);
      i1 = e.getMeasuredHeight();
      i2 = topMargin;
      i4 = Math.max(i4, bottomMargin + (i1 + i2));
      i3 = bm.a(i3, ce.l(e));
    }
    for (;;)
    {
      int i6;
      if ((ce.s(this) & 0x100) != 0)
      {
        i6 = 1;
        if (i6 == 0) {
          break label582;
        }
        i2 = b;
        i1 = i2;
        if (k)
        {
          i1 = i2;
          if (f.getTabContainer() != null) {
            i1 = i2 + b;
          }
        }
      }
      for (;;)
      {
        label256:
        if ((g.c()) && (e != null)) {
          if (i6 != 0) {
            i2 = b;
          }
        }
        for (;;)
        {
          label286:
          r.set(p);
          t.set(s);
          if ((!j) && (i6 == 0))
          {
            localObject = r;
            top = (i1 + top);
            localObject = r;
          }
          for (bottom = (i2 + bottom);; bottom = (i2 + bottom))
          {
            a(d, r, true, true, true, true);
            if (!u.equals(t))
            {
              u.set(t);
              d.a(t);
            }
            measureChildWithMargins(d, paramInt1, 0, paramInt2, 0);
            localObject = (ActionBarOverlayLayout.LayoutParams)d.getLayoutParams();
            i1 = Math.max(i5, d.getMeasuredWidth() + leftMargin + rightMargin);
            i2 = d.getMeasuredHeight();
            i5 = topMargin;
            i2 = Math.max(i4, bottomMargin + (i2 + i5));
            i3 = bm.a(i3, ce.l(d));
            i4 = getPaddingLeft();
            i5 = getPaddingRight();
            i2 = Math.max(i2 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
            setMeasuredDimension(ce.a(Math.max(i1 + (i4 + i5), getSuggestedMinimumWidth()), paramInt1, i3), ce.a(i2, paramInt2, i3 << 16));
            return;
            i6 = 0;
            break;
            label582:
            if (f.getVisibility() == 8) {
              break label663;
            }
            i1 = f.getMeasuredHeight();
            break label256;
            i2 = e.getMeasuredHeight();
            break label286;
            localObject = t;
            top = (i1 + top);
            localObject = t;
          }
          i2 = 0;
        }
        label663:
        i1 = 0;
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((!l) || (!paramBoolean)) {
      return false;
    }
    if (a(paramFloat1, paramFloat2)) {
      o();
    }
    for (;;)
    {
      m = true;
      return true;
      n();
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    n += paramInt2;
    setActionBarHideOffset(n);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    super.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    n = getActionBarHideOffset();
    k();
    if (v != null) {
      v.m();
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (f.getVisibility() != 0)) {
      return false;
    }
    return l;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    super.onStopNestedScroll(paramView);
    if ((l) && (!m))
    {
      if (n > f.getHeight()) {
        break label54;
      }
      l();
    }
    for (;;)
    {
      if (v != null) {
        v.n();
      }
      return;
      label54:
      m();
    }
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 16) {
      super.onWindowSystemUiVisibilityChanged(paramInt);
    }
    c();
    int i3 = o;
    o = paramInt;
    int i1;
    int i2;
    if ((paramInt & 0x4) == 0)
    {
      i1 = 1;
      if ((paramInt & 0x100) == 0) {
        break label120;
      }
      i2 = 1;
      label49:
      if (v != null)
      {
        l locall = v;
        if (i2 != 0) {
          break label125;
        }
        label66:
        locall.i(bool);
        if ((i1 == 0) && (i2 != 0)) {
          break label131;
        }
        v.k();
      }
    }
    for (;;)
    {
      if ((((i3 ^ paramInt) & 0x100) != 0) && (v != null)) {
        ce.t(this);
      }
      return;
      i1 = 0;
      break;
      label120:
      i2 = 0;
      break label49;
      label125:
      bool = false;
      break label66;
      label131:
      v.l();
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    c = paramInt;
    if (v != null) {
      v.d(paramInt);
    }
  }
  
  public void setActionBarHideOffset(int paramInt)
  {
    k();
    int i1 = f.getHeight();
    paramInt = Math.max(0, Math.min(paramInt, i1));
    ce.b(f, -paramInt);
    if ((e != null) && (e.getVisibility() != 8))
    {
      paramInt = (int)(paramInt / i1 * e.getHeight());
      ce.b(e, paramInt);
    }
  }
  
  public void setActionBarVisibilityCallback(l paraml)
  {
    v = paraml;
    if (getWindowToken() != null)
    {
      v.d(c);
      if (o != 0)
      {
        onWindowSystemUiVisibilityChanged(o);
        ce.t(this);
      }
    }
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != l)
    {
      l = paramBoolean;
      if (!paramBoolean)
      {
        if (a.a()) {
          stopNestedScroll();
        }
        k();
        setActionBarHideOffset(0);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    c();
    g.a(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    c();
    g.a(paramDrawable);
  }
  
  public void setLogo(int paramInt)
  {
    c();
    g.b(paramInt);
  }
  
  public void setOverlayMode(boolean paramBoolean)
  {
    j = paramBoolean;
    if ((paramBoolean) && (getContextgetApplicationInfotargetSdkVersion < 19)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      i = paramBoolean;
      return;
    }
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(com.yelp.android.i.h paramh)
  {
    c();
    g.a(paramh);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    c();
    g.a(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarOverlayLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */