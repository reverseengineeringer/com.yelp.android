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
import android.support.v4.view.aa;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.support.v4.view.be;
import android.support.v4.view.z;
import android.support.v4.widget.v;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window.Callback;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.f;

public class ActionBarOverlayLayout
  extends ViewGroup
  implements z, e
{
  static final int[] a = { a.a.actionBarSize, 16842841 };
  private final Runnable A = new Runnable()
  {
    public void run()
    {
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, ai.s(ActionBarOverlayLayout.c(ActionBarOverlayLayout.this)).c(-ActionBarOverlayLayout.c(ActionBarOverlayLayout.this).getHeight()).a(ActionBarOverlayLayout.b(ActionBarOverlayLayout.this)));
    }
  };
  private final aa B;
  private int b;
  private int c = 0;
  private ContentFrameLayout d;
  private ActionBarContainer e;
  private f f;
  private Drawable g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private int m;
  private int n;
  private final Rect o = new Rect();
  private final Rect p = new Rect();
  private final Rect q = new Rect();
  private final Rect r = new Rect();
  private final Rect s = new Rect();
  private final Rect t = new Rect();
  private a u;
  private final int v = 600;
  private v w;
  private az x;
  private final bd y = new be()
  {
    public void b(View paramAnonymousView)
    {
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, null);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, false);
    }
    
    public void c(View paramAnonymousView)
    {
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, null);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, false);
    }
  };
  private final Runnable z = new Runnable()
  {
    public void run()
    {
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this);
      ActionBarOverlayLayout.a(ActionBarOverlayLayout.this, ai.s(ActionBarOverlayLayout.c(ActionBarOverlayLayout.this)).c(0.0F).a(ActionBarOverlayLayout.b(ActionBarOverlayLayout.this)));
    }
  };
  
  public ActionBarOverlayLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    B = new aa(this);
  }
  
  private f a(View paramView)
  {
    if ((paramView instanceof f)) {
      return (f)paramView;
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
    g = localTypedArray.getDrawable(1);
    if (g == null)
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
      h = bool1;
      w = v.a(paramContext);
      return;
      bool1 = false;
      break;
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    boolean bool = false;
    w.a(0, 0, 0, (int)paramFloat2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
    if (w.e() > e.getHeight()) {
      bool = true;
    }
    return bool;
  }
  
  private boolean a(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    boolean bool2 = false;
    paramView = (LayoutParams)paramView.getLayoutParams();
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
    removeCallbacks(z);
    removeCallbacks(A);
    if (x != null) {
      x.b();
    }
  }
  
  private void l()
  {
    k();
    postDelayed(z, 600L);
  }
  
  private void m()
  {
    k();
    postDelayed(A, 600L);
  }
  
  private void n()
  {
    k();
    z.run();
  }
  
  private void o()
  {
    k();
    A.run();
  }
  
  public LayoutParams a(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  public void a(int paramInt)
  {
    c();
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      f.f();
      return;
    case 5: 
      f.g();
      return;
    }
    setOverlayMode(true);
  }
  
  public void a(Menu paramMenu, l.a parama)
  {
    c();
    f.a(paramMenu, parama);
  }
  
  public boolean a()
  {
    return i;
  }
  
  protected LayoutParams b()
  {
    return new LayoutParams(-1, -1);
  }
  
  void c()
  {
    if (d == null)
    {
      d = ((ContentFrameLayout)findViewById(a.f.action_bar_activity_content));
      e = ((ActionBarContainer)findViewById(a.f.action_bar_container));
      f = a(findViewById(a.f.action_bar));
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public boolean d()
  {
    c();
    return f.h();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((g != null) && (!h)) {
      if (e.getVisibility() != 0) {
        break label82;
      }
    }
    label82:
    for (int i1 = (int)(e.getBottom() + ai.p(e) + 0.5F);; i1 = 0)
    {
      g.setBounds(0, i1, getWidth(), g.getIntrinsicHeight() + i1);
      g.draw(paramCanvas);
      return;
    }
  }
  
  public boolean e()
  {
    c();
    return f.i();
  }
  
  public boolean f()
  {
    c();
    return f.j();
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    c();
    if ((ai.v(this) & 0x100) != 0) {}
    boolean bool = a(e, paramRect, true, true, false, true);
    r.set(paramRect);
    r.a(this, r, o);
    if (!p.equals(o))
    {
      p.set(o);
      bool = true;
    }
    if (bool) {
      requestLayout();
    }
    return true;
  }
  
  public boolean g()
  {
    c();
    return f.k();
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getActionBarHideOffset()
  {
    if (e != null) {
      return -(int)ai.p(e);
    }
    return 0;
  }
  
  public int getNestedScrollAxes()
  {
    return B.a();
  }
  
  public CharSequence getTitle()
  {
    c();
    return f.e();
  }
  
  public boolean h()
  {
    c();
    return f.l();
  }
  
  public void i()
  {
    c();
    f.m();
  }
  
  public void j()
  {
    c();
    f.n();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    a(getContext());
    ai.w(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    k();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt3 = getPaddingLeft();
    getPaddingRight();
    paramInt4 = getPaddingTop();
    getPaddingBottom();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        int i1 = localView.getMeasuredWidth();
        int i2 = localView.getMeasuredHeight();
        int i3 = leftMargin + paramInt3;
        int i4 = topMargin + paramInt4;
        localView.layout(i3, i4, i1 + i3, i2 + i4);
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    c();
    measureChildWithMargins(e, paramInt1, 0, paramInt2, 0);
    Object localObject = (LayoutParams)e.getLayoutParams();
    int i6 = Math.max(0, e.getMeasuredWidth() + leftMargin + rightMargin);
    int i1 = e.getMeasuredHeight();
    int i2 = topMargin;
    int i5 = Math.max(0, bottomMargin + (i1 + i2));
    int i4 = r.a(0, ai.l(e));
    int i3;
    if ((ai.v(this) & 0x100) != 0)
    {
      i2 = 1;
      if (i2 == 0) {
        break label448;
      }
      i3 = b;
      i1 = i3;
      if (j)
      {
        i1 = i3;
        if (e.getTabContainer() != null) {
          i1 = i3 + b;
        }
      }
    }
    for (;;)
    {
      label153:
      q.set(o);
      s.set(r);
      if ((!i) && (i2 == 0))
      {
        localObject = q;
        top = (i1 + top);
        localObject = q;
      }
      for (bottom += 0;; bottom += 0)
      {
        a(d, q, true, true, true, true);
        if (!t.equals(s))
        {
          t.set(s);
          d.a(s);
        }
        measureChildWithMargins(d, paramInt1, 0, paramInt2, 0);
        localObject = (LayoutParams)d.getLayoutParams();
        i1 = Math.max(i6, d.getMeasuredWidth() + leftMargin + rightMargin);
        i2 = d.getMeasuredHeight();
        i3 = topMargin;
        i2 = Math.max(i5, bottomMargin + (i2 + i3));
        i3 = r.a(i4, ai.l(d));
        i4 = getPaddingLeft();
        i5 = getPaddingRight();
        i2 = Math.max(i2 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
        setMeasuredDimension(ai.a(Math.max(i1 + (i4 + i5), getSuggestedMinimumWidth()), paramInt1, i3), ai.a(i2, paramInt2, i3 << 16));
        return;
        i2 = 0;
        break;
        label448:
        if (e.getVisibility() == 8) {
          break label510;
        }
        i1 = e.getMeasuredHeight();
        break label153;
        localObject = s;
        top = (i1 + top);
        localObject = s;
      }
      label510:
      i1 = 0;
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((!k) || (!paramBoolean)) {
      return false;
    }
    if (a(paramFloat1, paramFloat2)) {
      o();
    }
    for (;;)
    {
      l = true;
      return true;
      n();
    }
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    m += paramInt2;
    setActionBarHideOffset(m);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    B.a(paramView1, paramView2, paramInt);
    m = getActionBarHideOffset();
    k();
    if (u != null) {
      u.m();
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (e.getVisibility() != 0)) {
      return false;
    }
    return k;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    if ((k) && (!l))
    {
      if (m > e.getHeight()) {
        break label49;
      }
      l();
    }
    for (;;)
    {
      if (u != null) {
        u.n();
      }
      return;
      label49:
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
    int i3 = n;
    n = paramInt;
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
      if (u != null)
      {
        a locala = u;
        if (i2 != 0) {
          break label125;
        }
        label66:
        locala.i(bool);
        if ((i1 == 0) && (i2 != 0)) {
          break label131;
        }
        u.k();
      }
    }
    for (;;)
    {
      if ((((i3 ^ paramInt) & 0x100) != 0) && (u != null)) {
        ai.w(this);
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
      u.l();
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    c = paramInt;
    if (u != null) {
      u.d(paramInt);
    }
  }
  
  public void setActionBarHideOffset(int paramInt)
  {
    k();
    paramInt = Math.max(0, Math.min(paramInt, e.getHeight()));
    ai.b(e, -paramInt);
  }
  
  public void setActionBarVisibilityCallback(a parama)
  {
    u = parama;
    if (getWindowToken() != null)
    {
      u.d(c);
      if (n != 0)
      {
        onWindowSystemUiVisibilityChanged(n);
        ai.w(this);
      }
    }
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != k)
    {
      k = paramBoolean;
      if (!paramBoolean)
      {
        k();
        setActionBarHideOffset(0);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    c();
    f.a(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    c();
    f.a(paramDrawable);
  }
  
  public void setLogo(int paramInt)
  {
    c();
    f.b(paramInt);
  }
  
  public void setOverlayMode(boolean paramBoolean)
  {
    i = paramBoolean;
    if ((paramBoolean) && (getContextgetApplicationInfotargetSdkVersion < 19)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      h = paramBoolean;
      return;
    }
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    c();
    f.a(paramCallback);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    c();
    f.a(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface a
  {
    public abstract void d(int paramInt);
    
    public abstract void i(boolean paramBoolean);
    
    public abstract void k();
    
    public abstract void l();
    
    public abstract void m();
    
    public abstract void n();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarOverlayLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */