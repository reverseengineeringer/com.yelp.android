package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.e;
import android.support.v4.view.ac;
import android.support.v4.view.ai;
import android.support.v7.app.ActionBar.b;
import android.support.v7.internal.widget.o;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.yelp.android.a.a.g;
import com.yelp.android.a.a.h;
import com.yelp.android.a.a.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class TabLayout
  extends HorizontalScrollView
{
  private final ArrayList<c> a = new ArrayList();
  private c b;
  private final b c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private ColorStateList i;
  private final int j;
  private final int k;
  private int l = Integer.MAX_VALUE;
  private final int m;
  private int n;
  private int o;
  private int p;
  private a q;
  private View.OnClickListener r;
  private p s;
  private p t;
  
  public TabLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setHorizontalScrollBarEnabled(false);
    setFillViewport(true);
    c = new b(paramContext);
    addView(c, -2, -1);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.TabLayout, paramInt, a.h.Widget_Design_TabLayout);
    c.b(paramContext.getDimensionPixelSize(a.i.TabLayout_tabIndicatorHeight, 0));
    c.a(paramContext.getColor(a.i.TabLayout_tabIndicatorColor, 0));
    h = paramContext.getResourceId(a.i.TabLayout_tabTextAppearance, a.h.TextAppearance_Design_Tab);
    paramInt = paramContext.getDimensionPixelSize(a.i.TabLayout_tabPadding, 0);
    g = paramInt;
    f = paramInt;
    e = paramInt;
    d = paramInt;
    d = paramContext.getDimensionPixelSize(a.i.TabLayout_tabPaddingStart, d);
    e = paramContext.getDimensionPixelSize(a.i.TabLayout_tabPaddingTop, e);
    f = paramContext.getDimensionPixelSize(a.i.TabLayout_tabPaddingEnd, f);
    g = paramContext.getDimensionPixelSize(a.i.TabLayout_tabPaddingBottom, g);
    i = g(h);
    if (paramContext.hasValue(a.i.TabLayout_tabTextColor)) {
      i = paramContext.getColorStateList(a.i.TabLayout_tabTextColor);
    }
    if (paramContext.hasValue(a.i.TabLayout_tabSelectedTextColor))
    {
      paramInt = paramContext.getColor(a.i.TabLayout_tabSelectedTextColor, 0);
      i = b(i.getDefaultColor(), paramInt);
    }
    k = paramContext.getDimensionPixelSize(a.i.TabLayout_tabMinWidth, 0);
    m = paramContext.getDimensionPixelSize(a.i.TabLayout_tabMaxWidth, 0);
    j = paramContext.getResourceId(a.i.TabLayout_tabBackground, 0);
    n = paramContext.getDimensionPixelSize(a.i.TabLayout_tabContentStart, 0);
    p = paramContext.getInt(a.i.TabLayout_tabMode, 1);
    o = paramContext.getInt(a.i.TabLayout_tabGravity, 0);
    paramContext.recycle();
    e();
  }
  
  private int a(int paramInt, float paramFloat)
  {
    int i1 = 0;
    int i2 = 0;
    View localView2;
    View localView1;
    if (p == 0)
    {
      localView2 = c.getChildAt(paramInt);
      if (paramInt + 1 >= c.getChildCount()) {
        break label110;
      }
      localView1 = c.getChildAt(paramInt + 1);
      if (localView2 == null) {
        break label116;
      }
    }
    label110:
    label116:
    for (paramInt = localView2.getWidth();; paramInt = 0)
    {
      i1 = i2;
      if (localView1 != null) {
        i1 = localView1.getWidth();
      }
      i2 = localView2.getLeft();
      i1 = (int)((i1 + paramInt) * paramFloat * 0.5F) + i2 + localView2.getWidth() / 2 - getWidth() / 2;
      return i1;
      localView1 = null;
      break;
    }
  }
  
  private void a(LinearLayout.LayoutParams paramLayoutParams)
  {
    if ((p == 1) && (o == 0))
    {
      width = 0;
      weight = 1.0F;
      return;
    }
    width = -2;
    weight = 0.0F;
  }
  
  private static ColorStateList b(int paramInt1, int paramInt2)
  {
    return new ColorStateList(new int[][] { SELECTED_STATE_SET, EMPTY_STATE_SET }, new int[] { paramInt2, paramInt1 });
  }
  
  private void b(c paramc, int paramInt)
  {
    paramc.a(paramInt);
    a.add(paramInt, paramc);
    int i1 = a.size();
    paramInt += 1;
    while (paramInt < i1)
    {
      ((c)a.get(paramInt)).a(paramInt);
      paramInt += 1;
    }
  }
  
  private void b(c paramc, int paramInt, boolean paramBoolean)
  {
    paramc = d(paramc);
    c.addView(paramc, paramInt, d());
    if (paramBoolean) {
      paramc.setSelected(true);
    }
  }
  
  private void c()
  {
    int i1 = 0;
    int i2 = c.getChildCount();
    while (i1 < i2)
    {
      c(i1);
      i1 += 1;
    }
  }
  
  private void c(int paramInt)
  {
    e locale = (e)c.getChildAt(paramInt);
    if (locale != null) {
      locale.a();
    }
  }
  
  private void c(c paramc, boolean paramBoolean)
  {
    paramc = d(paramc);
    c.addView(paramc, d());
    if (paramBoolean) {
      paramc.setSelected(true);
    }
  }
  
  private int d(int paramInt)
  {
    return Math.round(getResourcesgetDisplayMetricsdensity * paramInt);
  }
  
  private e d(c paramc)
  {
    paramc = new e(getContext(), paramc);
    paramc.setFocusable(true);
    if (r == null) {
      r = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ((TabLayout.e)paramAnonymousView).b().e();
        }
      };
    }
    paramc.setOnClickListener(r);
    return paramc;
  }
  
  private LinearLayout.LayoutParams d()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
    a(localLayoutParams);
    return localLayoutParams;
  }
  
  private void e()
  {
    if (p == 0) {}
    for (int i1 = Math.max(0, n - d);; i1 = 0)
    {
      ai.b(c, i1, 0, 0, 0);
      switch (p)
      {
      }
      for (;;)
      {
        f();
        return;
        c.setGravity(1);
        continue;
        c.setGravity(8388611);
      }
    }
  }
  
  private void e(int paramInt)
  {
    c.removeViewAt(paramInt);
    requestLayout();
  }
  
  private void f()
  {
    int i1 = 0;
    while (i1 < c.getChildCount())
    {
      View localView = c.getChildAt(i1);
      a((LinearLayout.LayoutParams)localView.getLayoutParams());
      localView.requestLayout();
      i1 += 1;
    }
  }
  
  private void f(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    if ((getWindowToken() == null) || (!ai.D(this)) || (c.a()))
    {
      a(paramInt, 0.0F, true);
      return;
    }
    int i1 = getScrollX();
    int i2 = a(paramInt, 0.0F);
    if (i1 != i2)
    {
      if (s == null)
      {
        s = v.a();
        s.a(a.b);
        s.a(300);
        s.a(new p.c()
        {
          public void a(p paramAnonymousp)
          {
            scrollTo(paramAnonymousp.c(), 0);
          }
        });
      }
      s.a(i1, i2);
      s.a();
    }
    c.a(paramInt, 300);
  }
  
  private ColorStateList g(int paramInt)
  {
    TypedArray localTypedArray = getContext().obtainStyledAttributes(paramInt, a.i.TextAppearance);
    try
    {
      ColorStateList localColorStateList = localTypedArray.getColorStateList(a.i.TextAppearance_android_textColor);
      return localColorStateList;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  private float getScrollPosition()
  {
    return c.b();
  }
  
  private void setSelectedTabView(int paramInt)
  {
    int i2 = c.getChildCount();
    if ((paramInt < i2) && (!c.getChildAt(paramInt).isSelected()))
    {
      int i1 = 0;
      if (i1 < i2)
      {
        View localView = c.getChildAt(i1);
        if (i1 == paramInt) {}
        for (boolean bool = true;; bool = false)
        {
          localView.setSelected(bool);
          i1 += 1;
          break;
        }
      }
    }
  }
  
  public c a()
  {
    return new c(this);
  }
  
  public c a(int paramInt)
  {
    return (c)a.get(paramInt);
  }
  
  public void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    if ((t != null) && (t.b())) {}
    do
    {
      do
      {
        return;
      } while ((paramInt < 0) || (paramInt >= c.getChildCount()));
      c.a(paramInt, paramFloat);
      scrollTo(a(paramInt, paramFloat), 0);
    } while (!paramBoolean);
    setSelectedTabView(Math.round(paramInt + paramFloat));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    setTabTextColors(b(paramInt1, paramInt2));
  }
  
  public void a(c paramc)
  {
    a(paramc, a.isEmpty());
  }
  
  public void a(c paramc, int paramInt)
  {
    a(paramc, paramInt, a.isEmpty());
  }
  
  public void a(c paramc, int paramInt, boolean paramBoolean)
  {
    if (c.a(paramc) != this) {
      throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }
    b(paramc, paramInt, paramBoolean);
    b(paramc, paramInt);
    if (paramBoolean) {
      paramc.e();
    }
  }
  
  public void a(c paramc, boolean paramBoolean)
  {
    if (c.a(paramc) != this) {
      throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }
    c(paramc, paramBoolean);
    b(paramc, a.size());
    if (paramBoolean) {
      paramc.e();
    }
  }
  
  public void b()
  {
    c.removeAllViews();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ((c)localIterator.next()).a(-1);
      localIterator.remove();
    }
    b = null;
  }
  
  public void b(int paramInt)
  {
    if (b != null) {}
    for (int i1 = b.c();; i1 = 0)
    {
      e(paramInt);
      localc = (c)a.remove(paramInt);
      if (localc != null) {
        localc.a(-1);
      }
      int i3 = a.size();
      int i2 = paramInt;
      while (i2 < i3)
      {
        ((c)a.get(i2)).a(i2);
        i2 += 1;
      }
    }
    if (i1 == paramInt) {
      if (!a.isEmpty()) {
        break label113;
      }
    }
    label113:
    for (c localc = null;; localc = (c)a.get(Math.max(0, paramInt - 1)))
    {
      c(localc);
      return;
    }
  }
  
  public void b(c paramc)
  {
    if (c.a(paramc) != this) {
      throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
    }
    b(paramc.c());
  }
  
  void b(c paramc, boolean paramBoolean)
  {
    if (b == paramc)
    {
      if (b != null)
      {
        if (q != null) {
          q.c(b);
        }
        f(paramc.c());
      }
      return;
    }
    int i1;
    if (paramc != null)
    {
      i1 = paramc.c();
      label53:
      setSelectedTabView(i1);
      if (paramBoolean)
      {
        if (((b != null) && (b.c() != -1)) || (i1 == -1)) {
          break label157;
        }
        a(i1, 0.0F, true);
      }
    }
    for (;;)
    {
      if ((b != null) && (q != null)) {
        q.b(b);
      }
      b = paramc;
      if ((b == null) || (q == null)) {
        break;
      }
      q.a(b);
      return;
      i1 = -1;
      break label53;
      label157:
      f(i1);
    }
  }
  
  void c(c paramc)
  {
    b(paramc, true);
  }
  
  public int getSelectedTabPosition()
  {
    if (b != null) {
      return b.c();
    }
    return -1;
  }
  
  public int getTabCount()
  {
    return a.size();
  }
  
  public int getTabGravity()
  {
    return o;
  }
  
  public int getTabMode()
  {
    return p;
  }
  
  public ColorStateList getTabTextColors()
  {
    return i;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = d(48) + getPaddingTop() + getPaddingBottom();
    switch (View.MeasureSpec.getMode(paramInt2))
    {
    }
    for (;;)
    {
      super.onMeasure(paramInt1, paramInt2);
      if ((p == 1) && (getChildCount() == 1))
      {
        View localView = getChildAt(0);
        i1 = getMeasuredWidth();
        if (localView.getMeasuredWidth() > i1)
        {
          i2 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), getLayoutParamsheight);
          localView.measure(View.MeasureSpec.makeMeasureSpec(i1, 1073741824), i2);
        }
      }
      int i2 = m;
      int i3 = getMeasuredWidth() - d(56);
      if (i2 != 0)
      {
        i1 = i2;
        if (i2 <= i3) {}
      }
      else
      {
        i1 = i3;
      }
      if (l != i1)
      {
        l = i1;
        super.onMeasure(paramInt1, paramInt2);
      }
      return;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.min(i1, View.MeasureSpec.getSize(paramInt2)), 1073741824);
      continue;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
    }
  }
  
  public void setOnTabSelectedListener(a parama)
  {
    q = parama;
  }
  
  public void setSelectedTabIndicatorColor(int paramInt)
  {
    c.a(paramInt);
  }
  
  public void setSelectedTabIndicatorHeight(int paramInt)
  {
    c.b(paramInt);
  }
  
  public void setTabGravity(int paramInt)
  {
    if (o != paramInt)
    {
      o = paramInt;
      e();
    }
  }
  
  public void setTabMode(int paramInt)
  {
    if (paramInt != p)
    {
      p = paramInt;
      e();
    }
  }
  
  public void setTabTextColors(ColorStateList paramColorStateList)
  {
    if (i != paramColorStateList)
    {
      i = paramColorStateList;
      c();
    }
  }
  
  public void setTabsFromPagerAdapter(ac paramac)
  {
    b();
    int i1 = 0;
    int i2 = paramac.b();
    while (i1 < i2)
    {
      a(a().a(paramac.b(i1)));
      i1 += 1;
    }
  }
  
  public void setupWithViewPager(ViewPager paramViewPager)
  {
    ac localac = paramViewPager.getAdapter();
    if (localac == null) {
      throw new IllegalArgumentException("ViewPager does not have a PagerAdapter set");
    }
    setTabsFromPagerAdapter(localac);
    paramViewPager.a(new d(this));
    setOnTabSelectedListener(new f(paramViewPager));
    if (localac.b() > 0)
    {
      int i1 = paramViewPager.getCurrentItem();
      if (getSelectedTabPosition() != i1) {
        c(a(i1));
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(TabLayout.c paramc);
    
    public abstract void b(TabLayout.c paramc);
    
    public abstract void c(TabLayout.c paramc);
  }
  
  private class b
    extends LinearLayout
  {
    private int b;
    private final Paint c;
    private int d = -1;
    private float e;
    private int f = -1;
    private int g = -1;
    
    b(Context paramContext)
    {
      super();
      setWillNotDraw(false);
      c = new Paint();
    }
    
    private void b(int paramInt1, int paramInt2)
    {
      if ((paramInt1 != f) || (paramInt2 != g))
      {
        f = paramInt1;
        g = paramInt2;
        ai.d(this);
      }
    }
    
    private void c()
    {
      View localView = getChildAt(d);
      int i;
      int j;
      if ((localView != null) && (localView.getWidth() > 0))
      {
        int m = localView.getLeft();
        int k = localView.getRight();
        i = k;
        j = m;
        if (e > 0.0F)
        {
          i = k;
          j = m;
          if (d < getChildCount() - 1)
          {
            localView = getChildAt(d + 1);
            float f1 = e;
            float f2 = localView.getLeft();
            float f3 = e;
            j = (int)(m * (1.0F - f3) + f1 * f2);
            f1 = e;
            f2 = localView.getRight();
            f3 = e;
            i = (int)(k * (1.0F - f3) + f2 * f1);
          }
        }
      }
      for (;;)
      {
        b(j, i);
        return;
        i = -1;
        j = -1;
      }
    }
    
    void a(int paramInt)
    {
      if (c.getColor() != paramInt)
      {
        c.setColor(paramInt);
        ai.d(this);
      }
    }
    
    void a(int paramInt, float paramFloat)
    {
      d = paramInt;
      e = paramFloat;
      c();
    }
    
    void a(final int paramInt1, int paramInt2)
    {
      final int i;
      Object localObject;
      final int k;
      final int m;
      final int j;
      if (ai.h(this) == 1)
      {
        i = 1;
        localObject = getChildAt(paramInt1);
        k = ((View)localObject).getLeft();
        m = ((View)localObject).getRight();
        if (Math.abs(paramInt1 - d) > 1) {
          break label146;
        }
        i = f;
        j = g;
      }
      for (;;)
      {
        if ((i != k) || (j != m))
        {
          localObject = TabLayout.a(TabLayout.this, v.a());
          ((p)localObject).a(a.b);
          ((p)localObject).a(paramInt2);
          ((p)localObject).a(0.0F, 1.0F);
          ((p)localObject).a(new p.c()
          {
            public void a(p paramAnonymousp)
            {
              float f = paramAnonymousp.f();
              TabLayout.b.a(TabLayout.b.this, a.a(i, k, f), a.a(j, m, f));
            }
          });
          ((p)localObject).a(new p.b()
          {
            public void a(p paramAnonymousp)
            {
              TabLayout.b.a(TabLayout.b.this, paramInt1);
              TabLayout.b.a(TabLayout.b.this, 0.0F);
            }
            
            public void b(p paramAnonymousp)
            {
              TabLayout.b.a(TabLayout.b.this, paramInt1);
              TabLayout.b.a(TabLayout.b.this, 0.0F);
            }
          });
          ((p)localObject).a();
        }
        return;
        i = 0;
        break;
        label146:
        j = TabLayout.b(TabLayout.this, 24);
        if (paramInt1 < d)
        {
          if (i != 0)
          {
            j = k - j;
            i = j;
          }
          else
          {
            j = m + j;
            i = j;
          }
        }
        else if (i != 0)
        {
          j = m + j;
          i = j;
        }
        else
        {
          j = k - j;
          i = j;
        }
      }
    }
    
    boolean a()
    {
      boolean bool2 = false;
      int j = getChildCount();
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          if (getChildAt(i).getWidth() <= 0) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 1;
      }
    }
    
    float b()
    {
      return d + e;
    }
    
    void b(int paramInt)
    {
      if (b != paramInt)
      {
        b = paramInt;
        ai.d(this);
      }
    }
    
    public void draw(Canvas paramCanvas)
    {
      super.draw(paramCanvas);
      if ((f >= 0) && (g > f)) {
        paramCanvas.drawRect(f, getHeight() - b, g, getHeight(), c);
      }
    }
    
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      c();
    }
    
    protected void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {}
      int k;
      int i;
      Object localObject;
      do
      {
        do
        {
          return;
        } while ((TabLayout.j(TabLayout.this) != 1) || (TabLayout.k(TabLayout.this) != 1));
        k = getChildCount();
        int m = View.MeasureSpec.makeMeasureSpec(0, 0);
        j = 0;
        i = 0;
        while (j < k)
        {
          localObject = getChildAt(j);
          ((View)localObject).measure(m, paramInt2);
          i = Math.max(i, ((View)localObject).getMeasuredWidth());
          j += 1;
        }
      } while (i <= 0);
      int j = TabLayout.b(TabLayout.this, 16);
      if (i * k <= getMeasuredWidth() - j * 2)
      {
        j = 0;
        while (j < k)
        {
          localObject = (LinearLayout.LayoutParams)getChildAt(j).getLayoutParams();
          width = i;
          weight = 0.0F;
          j += 1;
        }
      }
      TabLayout.c(TabLayout.this, 0);
      TabLayout.l(TabLayout.this);
      super.onMeasure(paramInt1, paramInt2);
    }
  }
  
  public static final class c
  {
    private Drawable a;
    private CharSequence b;
    private CharSequence c;
    private int d = -1;
    private View e;
    private final TabLayout f;
    
    c(TabLayout paramTabLayout)
    {
      f = paramTabLayout;
    }
    
    public c a(CharSequence paramCharSequence)
    {
      b = paramCharSequence;
      if (d >= 0) {
        TabLayout.a(f, d);
      }
      return this;
    }
    
    public View a()
    {
      return e;
    }
    
    void a(int paramInt)
    {
      d = paramInt;
    }
    
    public Drawable b()
    {
      return a;
    }
    
    public c b(int paramInt)
    {
      return a(f.getResources().getText(paramInt));
    }
    
    public int c()
    {
      return d;
    }
    
    public CharSequence d()
    {
      return b;
    }
    
    public void e()
    {
      f.c(this);
    }
    
    public boolean f()
    {
      return f.getSelectedTabPosition() == d;
    }
    
    public CharSequence g()
    {
      return c;
    }
  }
  
  public static class d
    implements ViewPager.e
  {
    private final WeakReference<TabLayout> a;
    private int b;
    private int c;
    
    public d(TabLayout paramTabLayout)
    {
      a = new WeakReference(paramTabLayout);
    }
    
    public void a(int paramInt)
    {
      b = c;
      c = paramInt;
    }
    
    public void a(int paramInt1, float paramFloat, int paramInt2)
    {
      boolean bool2 = true;
      TabLayout localTabLayout = (TabLayout)a.get();
      if (localTabLayout != null)
      {
        bool1 = bool2;
        if (c != 1) {
          if ((c != 2) || (b != 1)) {
            break label62;
          }
        }
      }
      label62:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        localTabLayout.a(paramInt1, paramFloat, bool1);
        return;
      }
    }
    
    public void b(int paramInt)
    {
      TabLayout localTabLayout = (TabLayout)a.get();
      TabLayout.c localc;
      if (localTabLayout != null)
      {
        localc = localTabLayout.a(paramInt);
        if (c != 0) {
          break label39;
        }
      }
      label39:
      for (boolean bool = true;; bool = false)
      {
        localTabLayout.b(localc, bool);
        return;
      }
    }
  }
  
  class e
    extends LinearLayout
    implements View.OnLongClickListener
  {
    private final TabLayout.c b;
    private TextView c;
    private ImageView d;
    private View e;
    private TextView f;
    private ImageView g;
    
    public e(Context paramContext, TabLayout.c paramc)
    {
      super();
      b = paramc;
      if (TabLayout.a(TabLayout.this) != 0) {
        setBackgroundDrawable(o.a(paramContext, TabLayout.a(TabLayout.this)));
      }
      ai.b(this, TabLayout.b(TabLayout.this), TabLayout.c(TabLayout.this), TabLayout.d(TabLayout.this), TabLayout.e(TabLayout.this));
      setGravity(17);
      a();
    }
    
    private void a(TabLayout.c paramc, TextView paramTextView, ImageView paramImageView)
    {
      Drawable localDrawable = paramc.b();
      CharSequence localCharSequence = paramc.d();
      int i;
      if (paramImageView != null)
      {
        if (localDrawable != null)
        {
          paramImageView.setImageDrawable(localDrawable);
          paramImageView.setVisibility(0);
          setVisibility(0);
          paramImageView.setContentDescription(paramc.g());
        }
      }
      else
      {
        if (TextUtils.isEmpty(localCharSequence)) {
          break label124;
        }
        i = 1;
        label56:
        if (paramTextView != null)
        {
          if (i == 0) {
            break label130;
          }
          paramTextView.setText(localCharSequence);
          paramTextView.setContentDescription(paramc.g());
          paramTextView.setVisibility(0);
          setVisibility(0);
        }
      }
      for (;;)
      {
        if ((i != 0) || (TextUtils.isEmpty(paramc.g()))) {
          break label144;
        }
        setOnLongClickListener(this);
        return;
        paramImageView.setVisibility(8);
        paramImageView.setImageDrawable(null);
        break;
        label124:
        i = 0;
        break label56;
        label130:
        paramTextView.setVisibility(8);
        paramTextView.setText(null);
      }
      label144:
      setOnLongClickListener(null);
      setLongClickable(false);
    }
    
    final void a()
    {
      TabLayout.c localc = b;
      Object localObject = localc.a();
      if (localObject != null)
      {
        ViewParent localViewParent = ((View)localObject).getParent();
        if (localViewParent != this)
        {
          if (localViewParent != null) {
            ((ViewGroup)localViewParent).removeView((View)localObject);
          }
          addView((View)localObject);
        }
        e = ((View)localObject);
        if (c != null) {
          c.setVisibility(8);
        }
        if (d != null)
        {
          d.setVisibility(8);
          d.setImageDrawable(null);
        }
        f = ((TextView)((View)localObject).findViewById(16908308));
        g = ((ImageView)((View)localObject).findViewById(16908294));
        if (e != null) {
          break label281;
        }
        if (d == null)
        {
          localObject = (ImageView)LayoutInflater.from(getContext()).inflate(a.g.design_layout_tab_icon, this, false);
          addView((View)localObject, 0);
          d = ((ImageView)localObject);
        }
        if (c == null)
        {
          localObject = (TextView)LayoutInflater.from(getContext()).inflate(a.g.design_layout_tab_text, this, false);
          addView((View)localObject);
          c = ((TextView)localObject);
        }
        c.setTextAppearance(getContext(), TabLayout.h(TabLayout.this));
        if (TabLayout.i(TabLayout.this) != null) {
          c.setTextColor(TabLayout.i(TabLayout.this));
        }
        a(localc, c, d);
      }
      label281:
      while ((f == null) && (g == null))
      {
        return;
        if (e != null)
        {
          removeView(e);
          e = null;
        }
        f = null;
        g = null;
        break;
      }
      a(localc, f, g);
    }
    
    public TabLayout.c b()
    {
      return b;
    }
    
    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ActionBar.b.class.getName());
    }
    
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(ActionBar.b.class.getName());
    }
    
    public boolean onLongClick(View paramView)
    {
      paramView = new int[2];
      getLocationOnScreen(paramView);
      Object localObject = getContext();
      int i = getWidth();
      int j = getHeight();
      int k = getResourcesgetDisplayMetricswidthPixels;
      localObject = Toast.makeText((Context)localObject, b.g(), 0);
      ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
      ((Toast)localObject).show();
      return true;
    }
    
    public void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      paramInt1 = getMeasuredWidth();
      if ((paramInt1 < TabLayout.f(TabLayout.this)) || (paramInt1 > TabLayout.g(TabLayout.this))) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(k.a(paramInt1, TabLayout.f(TabLayout.this), TabLayout.g(TabLayout.this)), 1073741824), paramInt2);
      }
    }
    
    public void setSelected(boolean paramBoolean)
    {
      if (isSelected() != paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        super.setSelected(paramBoolean);
        if ((i != 0) && (paramBoolean))
        {
          sendAccessibilityEvent(4);
          if (c != null) {
            c.setSelected(paramBoolean);
          }
          if (d != null) {
            d.setSelected(paramBoolean);
          }
        }
        return;
      }
    }
  }
  
  public static class f
    implements TabLayout.a
  {
    private final ViewPager a;
    
    public f(ViewPager paramViewPager)
    {
      a = paramViewPager;
    }
    
    public void a(TabLayout.c paramc)
    {
      a.setCurrentItem(paramc.c());
    }
    
    public void b(TabLayout.c paramc) {}
    
    public void c(TabLayout.c paramc) {}
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */