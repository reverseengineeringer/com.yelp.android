package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ab;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.yelp.android.a.a.f;
import com.yelp.android.a.a.h;
import com.yelp.android.a.a.i;

public class CollapsingToolbarLayout
  extends FrameLayout
{
  private boolean a = true;
  private int b;
  private Toolbar c;
  private View d;
  private int e;
  private int f;
  private int g;
  private int h;
  private final Rect i = new Rect();
  private final d j = new d(this);
  private boolean k;
  private Drawable l;
  private Drawable m;
  private int n;
  private boolean o;
  private p p;
  private AppBarLayout.a q;
  private int r;
  private bg s;
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    j.a(a.c);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.CollapsingToolbarLayout, paramInt, a.h.Widget_Design_CollapsingToolbar);
    j.c(paramContext.getInt(a.i.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
    j.d(paramContext.getInt(a.i.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
    paramInt = paramContext.getDimensionPixelSize(a.i.CollapsingToolbarLayout_expandedTitleMargin, 0);
    h = paramInt;
    g = paramInt;
    f = paramInt;
    e = paramInt;
    int i1;
    if (ai.h(this) == 1)
    {
      paramInt = 1;
      if (paramContext.hasValue(a.i.CollapsingToolbarLayout_expandedTitleMarginStart))
      {
        i1 = paramContext.getDimensionPixelSize(a.i.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        if (paramInt == 0) {
          break label387;
        }
        g = i1;
      }
      label159:
      if (paramContext.hasValue(a.i.CollapsingToolbarLayout_expandedTitleMarginEnd))
      {
        i1 = paramContext.getDimensionPixelSize(a.i.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        if (paramInt == 0) {
          break label396;
        }
        e = i1;
      }
    }
    for (;;)
    {
      if (paramContext.hasValue(a.i.CollapsingToolbarLayout_expandedTitleMarginTop)) {
        f = paramContext.getDimensionPixelSize(a.i.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
      }
      if (paramContext.hasValue(a.i.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
        h = paramContext.getDimensionPixelSize(a.i.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
      }
      k = paramContext.getBoolean(a.i.CollapsingToolbarLayout_titleEnabled, true);
      setTitle(paramContext.getText(a.i.CollapsingToolbarLayout_title));
      j.f(a.h.TextAppearance_Design_CollapsingToolbar_Expanded);
      j.e(a.h.TextAppearance_AppCompat_Widget_ActionBar_Title);
      if (paramContext.hasValue(a.i.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
        j.f(paramContext.getResourceId(a.i.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
      }
      if (paramContext.hasValue(a.i.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
        j.e(paramContext.getResourceId(a.i.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
      }
      setContentScrim(paramContext.getDrawable(a.i.CollapsingToolbarLayout_contentScrim));
      setStatusBarScrim(paramContext.getDrawable(a.i.CollapsingToolbarLayout_statusBarScrim));
      b = paramContext.getResourceId(a.i.CollapsingToolbarLayout_toolbarId, -1);
      paramContext.recycle();
      setWillNotDraw(false);
      ai.a(this, new ab()
      {
        public bg a(View paramAnonymousView, bg paramAnonymousbg)
        {
          CollapsingToolbarLayout.a(CollapsingToolbarLayout.this, paramAnonymousbg);
          requestLayout();
          return paramAnonymousbg.f();
        }
      });
      return;
      paramInt = 0;
      break;
      label387:
      e = i1;
      break label159;
      label396:
      g = i1;
    }
  }
  
  private void a(int paramInt)
  {
    b();
    if (p == null)
    {
      p = v.a();
      p.a(600);
      p.a(a.b);
      p.a(new p.c()
      {
        public void a(p paramAnonymousp)
        {
          CollapsingToolbarLayout.a(CollapsingToolbarLayout.this, paramAnonymousp.c());
        }
      });
    }
    for (;;)
    {
      p.a(n, paramInt);
      p.a();
      return;
      if (p.b()) {
        p.e();
      }
    }
  }
  
  private static u b(View paramView)
  {
    u localu2 = (u)paramView.getTag(a.f.view_offset_helper);
    u localu1 = localu2;
    if (localu2 == null)
    {
      localu1 = new u(paramView);
      paramView.setTag(a.f.view_offset_helper, localu1);
    }
    return localu1;
  }
  
  private void b()
  {
    if (!a) {
      return;
    }
    int i2 = getChildCount();
    int i1 = 0;
    Object localObject1 = null;
    Object localObject2;
    if (i1 < i2)
    {
      localObject2 = getChildAt(i1);
      if ((localObject2 instanceof Toolbar)) {
        if (b != -1) {
          if (b == ((View)localObject2).getId()) {
            localObject2 = (Toolbar)localObject2;
          }
        }
      }
    }
    for (;;)
    {
      label64:
      if (localObject2 == null)
      {
        label69:
        c = ((Toolbar)localObject1);
        c();
        a = false;
        return;
        if (localObject1 != null) {
          break label117;
        }
        localObject1 = (Toolbar)localObject2;
      }
      label117:
      for (;;)
      {
        i1 += 1;
        break;
        localObject2 = (Toolbar)localObject2;
        break label64;
        localObject1 = localObject2;
        break label69;
      }
      localObject2 = null;
    }
  }
  
  private void c()
  {
    if ((!k) && (d != null))
    {
      ViewParent localViewParent = d.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(d);
      }
    }
    if ((k) && (c != null))
    {
      if (d == null) {
        d = new View(getContext());
      }
      if (d.getParent() == null) {
        c.addView(d, -1, -1);
      }
    }
  }
  
  private void d()
  {
    if (!o)
    {
      if ((!ai.D(this)) || (isInEditMode())) {
        break label34;
      }
      a(255);
    }
    for (;;)
    {
      o = true;
      return;
      label34:
      setScrimAlpha(255);
    }
  }
  
  private void e()
  {
    if (o)
    {
      if ((!ai.D(this)) || (isInEditMode())) {
        break label32;
      }
      a(0);
    }
    for (;;)
    {
      o = false;
      return;
      label32:
      setScrimAlpha(0);
    }
  }
  
  private void setScrimAlpha(int paramInt)
  {
    if (paramInt != n)
    {
      if ((l != null) && (c != null)) {
        ai.d(c);
      }
      n = paramInt;
      ai.d(this);
    }
  }
  
  protected LayoutParams a()
  {
    return new LayoutParams(super.generateDefaultLayoutParams());
  }
  
  protected FrameLayout.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    b();
    if ((c == null) && (l != null) && (n > 0))
    {
      l.mutate().setAlpha(n);
      l.draw(paramCanvas);
    }
    if (k) {
      j.a(paramCanvas);
    }
    if ((m != null) && (n > 0)) {
      if (s == null) {
        break label146;
      }
    }
    label146:
    for (int i1 = s.b();; i1 = 0)
    {
      if (i1 > 0)
      {
        m.setBounds(0, -r, getWidth(), i1 - r);
        m.mutate().setAlpha(n);
        m.draw(paramCanvas);
      }
      return;
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    b();
    if ((paramView == c) && (l != null) && (n > 0))
    {
      l.mutate().setAlpha(n);
      l.draw(paramCanvas);
    }
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  public int getCollapsedTitleGravity()
  {
    return j.c();
  }
  
  public Drawable getContentScrim()
  {
    return l;
  }
  
  public int getExpandedTitleGravity()
  {
    return j.b();
  }
  
  final int getScrimTriggerOffset()
  {
    return ai.r(this) * 2;
  }
  
  public Drawable getStatusBarScrim()
  {
    return m;
  }
  
  public CharSequence getTitle()
  {
    if (k) {
      return j.h();
    }
    return null;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof AppBarLayout))
    {
      if (q == null) {
        q = new a(null);
      }
      ((AppBarLayout)localViewParent).a(q);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    ViewParent localViewParent = getParent();
    if ((q != null) && ((localViewParent instanceof AppBarLayout))) {
      ((AppBarLayout)localViewParent).b(q);
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i1 = 0;
    int i2 = getChildCount();
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((s != null) && (!ai.x(localView)))
      {
        int i3 = s.b();
        if (localView.getTop() < i3) {
          localView.offsetTopAndBottom(i3);
        }
      }
      b(localView).a();
      i1 += 1;
    }
    if ((k) && (d != null))
    {
      s.b(this, d, i);
      j.b(i.left, paramInt4 - i.height(), i.right, paramInt4);
      j.a(e, i.bottom + f, paramInt3 - paramInt1 - g, paramInt4 - paramInt2 - h);
      j.g();
    }
    if (c != null)
    {
      if ((k) && (TextUtils.isEmpty(j.h()))) {
        j.a(c.getTitle());
      }
      setMinimumHeight(c.getHeight());
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    b();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (l != null) {
      l.setBounds(0, 0, paramInt1, paramInt2);
    }
  }
  
  public void setCollapsedTitleGravity(int paramInt)
  {
    j.c(paramInt);
  }
  
  public void setCollapsedTitleTextAppearance(int paramInt)
  {
    j.e(paramInt);
  }
  
  public void setCollapsedTitleTextColor(int paramInt)
  {
    j.a(paramInt);
  }
  
  public void setContentScrim(Drawable paramDrawable)
  {
    if (l != paramDrawable)
    {
      if (l != null) {
        l.setCallback(null);
      }
      l = paramDrawable;
      paramDrawable.setBounds(0, 0, getWidth(), getHeight());
      paramDrawable.setCallback(this);
      paramDrawable.mutate().setAlpha(n);
      ai.d(this);
    }
  }
  
  public void setContentScrimColor(int paramInt)
  {
    setContentScrim(new ColorDrawable(paramInt));
  }
  
  public void setContentScrimResource(int paramInt)
  {
    setContentScrim(android.support.v4.content.d.a(getContext(), paramInt));
  }
  
  public void setExpandedTitleColor(int paramInt)
  {
    j.b(paramInt);
  }
  
  public void setExpandedTitleGravity(int paramInt)
  {
    j.c(paramInt);
  }
  
  public void setExpandedTitleTextAppearance(int paramInt)
  {
    j.f(paramInt);
  }
  
  public void setStatusBarScrim(Drawable paramDrawable)
  {
    if (m != paramDrawable)
    {
      if (m != null) {
        m.setCallback(null);
      }
      m = paramDrawable;
      paramDrawable.setCallback(this);
      paramDrawable.mutate().setAlpha(n);
      ai.d(this);
    }
  }
  
  public void setStatusBarScrimColor(int paramInt)
  {
    setStatusBarScrim(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarScrimResource(int paramInt)
  {
    setStatusBarScrim(android.support.v4.content.d.a(getContext(), paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    j.a(paramCharSequence);
  }
  
  public void setTitleEnabled(boolean paramBoolean)
  {
    if (paramBoolean != k)
    {
      k = paramBoolean;
      c();
      requestLayout();
    }
  }
  
  public static class LayoutParams
    extends FrameLayout.LayoutParams
  {
    int a = 0;
    float b = 0.5F;
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.CollapsingAppBarLayout_LayoutParams);
      a = paramContext.getInt(a.i.CollapsingAppBarLayout_LayoutParams_layout_collapseMode, 0);
      a(paramContext.getFloat(a.i.CollapsingAppBarLayout_LayoutParams_layout_collapseParallaxMultiplier, 0.5F));
      paramContext.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(FrameLayout.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public void a(float paramFloat)
    {
      b = paramFloat;
    }
  }
  
  private class a
    implements AppBarLayout.a
  {
    private a() {}
    
    public void a(AppBarLayout paramAppBarLayout, int paramInt)
    {
      int j = 0;
      CollapsingToolbarLayout.b(CollapsingToolbarLayout.this, paramInt);
      int i;
      int k;
      int m;
      label49:
      View localView;
      CollapsingToolbarLayout.LayoutParams localLayoutParams;
      u localu;
      if (CollapsingToolbarLayout.a(CollapsingToolbarLayout.this) != null)
      {
        i = CollapsingToolbarLayout.a(CollapsingToolbarLayout.this).b();
        k = paramAppBarLayout.getTotalScrollRange();
        m = getChildCount();
        if (j >= m) {
          break label181;
        }
        localView = getChildAt(j);
        localLayoutParams = (CollapsingToolbarLayout.LayoutParams)localView.getLayoutParams();
        localu = CollapsingToolbarLayout.a(localView);
        switch (a)
        {
        }
      }
      for (;;)
      {
        j += 1;
        break label49;
        i = 0;
        break;
        if (getHeight() - i + paramInt >= localView.getHeight())
        {
          localu.a(-paramInt);
          continue;
          float f = -paramInt;
          localu.a(Math.round(b * f));
        }
      }
      label181:
      if ((CollapsingToolbarLayout.b(CollapsingToolbarLayout.this) != null) || (CollapsingToolbarLayout.c(CollapsingToolbarLayout.this) != null))
      {
        if (getHeight() + paramInt >= getScrimTriggerOffset() + i) {
          break label313;
        }
        CollapsingToolbarLayout.d(CollapsingToolbarLayout.this);
      }
      for (;;)
      {
        if ((CollapsingToolbarLayout.c(CollapsingToolbarLayout.this) != null) && (i > 0)) {
          ai.d(CollapsingToolbarLayout.this);
        }
        j = getHeight();
        m = ai.r(CollapsingToolbarLayout.this);
        CollapsingToolbarLayout.f(CollapsingToolbarLayout.this).b(Math.abs(paramInt) / (j - m - i));
        if (Math.abs(paramInt) != k) {
          break;
        }
        ai.h(paramAppBarLayout, paramAppBarLayout.getTargetElevation());
        return;
        label313:
        CollapsingToolbarLayout.e(CollapsingToolbarLayout.this);
      }
      ai.h(paramAppBarLayout, 0.0F);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CollapsingToolbarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */