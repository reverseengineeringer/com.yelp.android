package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.view.menu.f.b;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.widget.r;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView
  extends LinearLayoutCompat
  implements f.b, m
{
  private f a;
  private Context b;
  private int c;
  private boolean d;
  private ActionMenuPresenter e;
  private l.a f;
  private f.a g;
  private boolean h;
  private int i;
  private int j;
  private int k;
  private d l;
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f1 = getResourcesgetDisplayMetricsdensity;
    j = ((int)(56.0F * f1));
    k = ((int)(f1 * 4.0F));
    b = paramContext;
    c = 0;
  }
  
  static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = false;
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int m = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    if ((paramView instanceof ActionMenuItemView))
    {
      localActionMenuItemView = (ActionMenuItemView)paramView;
      if ((localActionMenuItemView == null) || (!localActionMenuItemView.b())) {
        break label184;
      }
      paramInt4 = 1;
      label57:
      if ((paramInt2 <= 0) || ((paramInt4 != 0) && (paramInt2 < 2))) {
        break label190;
      }
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, Integer.MIN_VALUE), m);
      int n = paramView.getMeasuredWidth();
      paramInt3 = n / paramInt1;
      paramInt2 = paramInt3;
      if (n % paramInt1 != 0) {
        paramInt2 = paramInt3 + 1;
      }
      paramInt3 = paramInt2;
      if (paramInt4 != 0)
      {
        paramInt3 = paramInt2;
        if (paramInt2 >= 2) {}
      }
    }
    label184:
    label190:
    for (paramInt3 = 2;; paramInt3 = 0)
    {
      boolean bool1 = bool2;
      if (!a)
      {
        bool1 = bool2;
        if (paramInt4 != 0) {
          bool1 = true;
        }
      }
      d = bool1;
      b = paramInt3;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), m);
      return paramInt3;
      localActionMenuItemView = null;
      break;
      paramInt4 = 0;
      break label57;
    }
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i10 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int i9 = View.MeasureSpec.getSize(paramInt2);
    int m = getPaddingLeft();
    int n = getPaddingRight();
    int i7 = getPaddingTop() + getPaddingBottom();
    int i11 = getChildMeasureSpec(paramInt2, i7, -2);
    int i12 = paramInt1 - (m + n);
    paramInt1 = i12 / j;
    paramInt2 = j;
    if (paramInt1 == 0)
    {
      setMeasuredDimension(i12, 0);
      return;
    }
    int i13 = j + i12 % paramInt2 / paramInt1;
    m = 0;
    int i3 = 0;
    int i2 = 0;
    int i4 = 0;
    int i1 = 0;
    long l1 = 0L;
    int i14 = getChildCount();
    int i5 = 0;
    Object localObject;
    boolean bool;
    LayoutParams localLayoutParams;
    label274:
    label291:
    int i8;
    for (;;)
    {
      if (i5 < i14)
      {
        localObject = getChildAt(i5);
        if (((View)localObject).getVisibility() == 8)
        {
          paramInt2 = i3;
          n = paramInt1;
          paramInt1 = i4;
          i5 += 1;
          i4 = paramInt1;
          paramInt1 = n;
          i3 = paramInt2;
        }
        else
        {
          bool = localObject instanceof ActionMenuItemView;
          i4 += 1;
          if (bool) {
            ((View)localObject).setPadding(k, 0, k, 0);
          }
          localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
          f = false;
          c = 0;
          b = 0;
          d = false;
          leftMargin = 0;
          rightMargin = 0;
          if ((bool) && (((ActionMenuItemView)localObject).b()))
          {
            bool = true;
            e = bool;
            if (!a) {
              break label402;
            }
            paramInt2 = 1;
            i8 = a((View)localObject, i13, paramInt2, i11, i7);
            i3 = Math.max(i3, i8);
            if (!d) {
              break label1233;
            }
          }
        }
      }
    }
    label402:
    label448:
    label485:
    label512:
    label571:
    label597:
    label728:
    label744:
    label777:
    label792:
    label935:
    label1072:
    label1076:
    label1175:
    label1181:
    label1184:
    label1195:
    label1233:
    for (paramInt2 = i2 + 1;; paramInt2 = i2)
    {
      if (a) {}
      for (n = 1;; n = i1)
      {
        int i6 = paramInt1 - i8;
        m = Math.max(m, ((View)localObject).getMeasuredHeight());
        if (i8 == 1)
        {
          long l2 = 1 << i5;
          i2 = paramInt2;
          l1 = l2 | l1;
          paramInt2 = i3;
          paramInt1 = i4;
          i1 = n;
          n = i6;
          break;
          bool = false;
          break label274;
          paramInt2 = paramInt1;
          break label291;
          if ((i1 != 0) && (i4 == 2))
          {
            i6 = 1;
            n = 0;
            i5 = paramInt1;
            if ((i2 <= 0) || (i5 <= 0)) {
              break label1195;
            }
            paramInt1 = Integer.MAX_VALUE;
            l2 = 0L;
            paramInt2 = 0;
            i7 = 0;
            if (i7 >= i14) {
              break label571;
            }
            localObject = (LayoutParams)getChildAt(i7).getLayoutParams();
            if (d) {
              break label512;
            }
            i8 = paramInt2;
            paramInt2 = paramInt1;
            paramInt1 = i8;
          }
          for (;;)
          {
            i8 = i7 + 1;
            i7 = paramInt2;
            paramInt2 = paramInt1;
            paramInt1 = i7;
            i7 = i8;
            break label448;
            i6 = 0;
            break;
            if (b < paramInt1)
            {
              paramInt2 = b;
              l2 = 1 << i7;
              paramInt1 = 1;
            }
            else
            {
              if (b != paramInt1) {
                break label1184;
              }
              l2 |= 1 << i7;
              i8 = paramInt2 + 1;
              paramInt2 = paramInt1;
              paramInt1 = i8;
            }
          }
          l1 |= l2;
          if (paramInt2 > i5) {}
          for (;;)
          {
            float f2;
            float f1;
            if ((i1 == 0) && (i4 == 1))
            {
              paramInt1 = 1;
              if ((i5 <= 0) || (l1 == 0L) || ((i5 >= i4 - 1) && (paramInt1 == 0) && (i3 <= 1))) {
                break label1072;
              }
              float f3 = Long.bitCount(l1);
              f2 = f3;
              if (paramInt1 != 0) {
                break label1175;
              }
              f1 = f3;
              if ((1L & l1) != 0L)
              {
                f1 = f3;
                if (!getChildAt0getLayoutParamse) {
                  f1 = f3 - 0.5F;
                }
              }
              f2 = f1;
              if ((1 << i14 - 1 & l1) == 0L) {
                break label1175;
              }
              f2 = f1;
              if (getChildAt1getLayoutParamse) {
                break label1175;
              }
              f1 -= 0.5F;
              if (f1 <= 0.0F) {
                break label935;
              }
              paramInt2 = (int)(i5 * i13 / f1);
              i1 = 0;
              paramInt1 = n;
              n = i1;
              for (;;)
              {
                i1 = paramInt1;
                if (n >= i14) {
                  break label1076;
                }
                if ((1 << n & l1) != 0L) {
                  break;
                }
                n += 1;
              }
              n = 0;
              paramInt2 = i5;
              if (n < i14)
              {
                localObject = getChildAt(n);
                localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
                if ((1 << n & l2) == 0L)
                {
                  if (b != paramInt1 + 1) {
                    break label1181;
                  }
                  l1 |= 1 << n;
                }
              }
            }
            for (;;)
            {
              n += 1;
              break label792;
              if ((i6 != 0) && (e) && (paramInt2 == 1)) {
                ((View)localObject).setPadding(k + i13, 0, k, 0);
              }
              b += 1;
              f = true;
              paramInt2 -= 1;
              continue;
              n = 1;
              i5 = paramInt2;
              break;
              paramInt1 = 0;
              break label597;
              paramInt2 = 0;
              break label744;
              localObject = getChildAt(n);
              localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
              if ((localObject instanceof ActionMenuItemView))
              {
                c = paramInt2;
                f = true;
                if ((n == 0) && (!e)) {
                  leftMargin = (-paramInt2 / 2);
                }
                paramInt1 = 1;
                break label777;
              }
              if (a)
              {
                c = paramInt2;
                f = true;
                rightMargin = (-paramInt2 / 2);
                paramInt1 = 1;
                break label777;
              }
              if (n != 0) {
                leftMargin = (paramInt2 / 2);
              }
              if (n != i14 - 1) {
                rightMargin = (paramInt2 / 2);
              }
              break label777;
              i1 = n;
              if (i1 != 0)
              {
                paramInt1 = 0;
                if (paramInt1 < i14)
                {
                  localObject = getChildAt(paramInt1);
                  localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
                  if (!f) {}
                  for (;;)
                  {
                    paramInt1 += 1;
                    break;
                    paramInt2 = b;
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(c + paramInt2 * i13, 1073741824), i11);
                  }
                }
              }
              if (i10 != 1073741824) {}
              for (;;)
              {
                setMeasuredDimension(i12, m);
                return;
                m = i9;
              }
              f1 = f2;
              break label728;
            }
            i8 = paramInt1;
            paramInt1 = paramInt2;
            paramInt2 = i8;
            break label485;
          }
        }
        paramInt1 = i4;
        i1 = i3;
        i3 = i6;
        i2 = paramInt2;
        paramInt2 = i1;
        i1 = n;
        n = i3;
        break;
      }
    }
  }
  
  public LayoutParams a(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof LayoutParams)) {}
      for (paramLayoutParams = new LayoutParams((LayoutParams)paramLayoutParams);; paramLayoutParams = new LayoutParams(paramLayoutParams))
      {
        if (h <= 0) {
          h = 16;
        }
        return paramLayoutParams;
      }
    }
    return b();
  }
  
  public void a(f paramf)
  {
    a = paramf;
  }
  
  public void a(l.a parama, f.a parama1)
  {
    f = parama;
    g = parama1;
  }
  
  public boolean a()
  {
    return d;
  }
  
  protected boolean a(int paramInt)
  {
    boolean bool2 = false;
    if (paramInt == 0) {
      return false;
    }
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof a)) {
        bool1 = false | ((a)localView1).d();
      }
    }
    if ((paramInt > 0) && ((localView2 instanceof a))) {
      return ((a)localView2).c() | bool1;
    }
    return bool1;
  }
  
  public boolean a(h paramh)
  {
    return a.a(paramh, 0);
  }
  
  protected LayoutParams b()
  {
    LayoutParams localLayoutParams = new LayoutParams(-2, -2);
    h = 16;
    return localLayoutParams;
  }
  
  public LayoutParams c()
  {
    LayoutParams localLayoutParams = b();
    a = true;
    return localLayoutParams;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof LayoutParams));
  }
  
  public f d()
  {
    return a;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  public boolean e()
  {
    return (e != null) && (e.f());
  }
  
  public boolean f()
  {
    return (e != null) && (e.g());
  }
  
  public boolean g()
  {
    return (e != null) && (e.j());
  }
  
  public Menu getMenu()
  {
    ActionMenuPresenter localActionMenuPresenter;
    if (a == null)
    {
      localObject = getContext();
      a = new f((Context)localObject);
      a.a(new c(null));
      e = new ActionMenuPresenter((Context)localObject);
      e.c(true);
      localActionMenuPresenter = e;
      if (f == null) {
        break label110;
      }
    }
    label110:
    for (Object localObject = f;; localObject = new b(null))
    {
      localActionMenuPresenter.a((l.a)localObject);
      a.a(e, b);
      e.a(this);
      return a;
    }
  }
  
  public Drawable getOverflowIcon()
  {
    getMenu();
    return e.e();
  }
  
  public int getPopupTheme()
  {
    return c;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  public boolean h()
  {
    return (e != null) && (e.k());
  }
  
  public void i()
  {
    if (e != null) {
      e.h();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    if (e != null)
    {
      e.a(false);
      if (e.j())
      {
        e.g();
        e.f();
      }
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    i();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!h)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i5 = getChildCount();
    int i4 = (paramInt4 - paramInt2) / 2;
    int i6 = getDividerWidth();
    paramInt4 = 0;
    paramInt2 = 0;
    int n = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int m = 0;
    paramBoolean = r.a(this);
    int i1 = 0;
    View localView;
    LayoutParams localLayoutParams;
    if (i1 < i5)
    {
      localView = getChildAt(i1);
      int i2;
      int i3;
      if (localView.getVisibility() == 8)
      {
        i2 = m;
        i3 = n;
        n = paramInt4;
        m = paramInt2;
        paramInt4 = i3;
        paramInt2 = i2;
      }
      for (;;)
      {
        i3 = i1 + 1;
        i1 = n;
        i2 = m;
        m = paramInt2;
        n = paramInt4;
        paramInt2 = i2;
        paramInt4 = i1;
        i1 = i3;
        break;
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (a)
        {
          i2 = localView.getMeasuredWidth();
          m = i2;
          if (a(i1)) {
            m = i2 + i6;
          }
          int i7 = localView.getMeasuredHeight();
          if (paramBoolean)
          {
            i2 = getPaddingLeft();
            i2 = leftMargin + i2;
            i3 = i2 + m;
          }
          for (;;)
          {
            int i8 = i4 - i7 / 2;
            localView.layout(i2, i8, i3, i7 + i8);
            i2 = n - m;
            i3 = 1;
            m = paramInt2;
            n = paramInt4;
            paramInt2 = i3;
            paramInt4 = i2;
            break;
            i3 = getWidth() - getPaddingRight() - rightMargin;
            i2 = i3 - m;
          }
        }
        i3 = localView.getMeasuredWidth() + leftMargin + rightMargin;
        i2 = paramInt4 + i3;
        paramInt4 = i2;
        if (a(i1)) {
          paramInt4 = i2 + i6;
        }
        i2 = n - i3;
        i3 = paramInt2 + 1;
        n = paramInt4;
        paramInt2 = m;
        paramInt4 = i2;
        m = i3;
      }
    }
    if ((i5 == 1) && (m == 0))
    {
      localView = getChildAt(0);
      paramInt2 = localView.getMeasuredWidth();
      paramInt4 = localView.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
      paramInt3 = i4 - paramInt4 / 2;
      localView.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
      return;
    }
    if (m != 0)
    {
      paramInt1 = 0;
      label462:
      paramInt1 = paramInt2 - paramInt1;
      if (paramInt1 <= 0) {
        break label551;
      }
      paramInt1 = n / paramInt1;
      label475:
      paramInt3 = Math.max(0, paramInt1);
      if (!paramBoolean) {
        break label621;
      }
      paramInt1 = getWidth() - getPaddingRight();
      paramInt2 = 0;
      label498:
      if (paramInt2 < i5)
      {
        localView = getChildAt(paramInt2);
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (localView.getVisibility() == 8) {
          break label744;
        }
        if (!a) {
          break label556;
        }
      }
    }
    label551:
    label556:
    label621:
    label628:
    label676:
    label741:
    label744:
    for (;;)
    {
      paramInt2 += 1;
      break label498;
      break;
      paramInt1 = 1;
      break label462;
      paramInt1 = 0;
      break label475;
      paramInt1 -= rightMargin;
      paramInt4 = localView.getMeasuredWidth();
      m = localView.getMeasuredHeight();
      n = i4 - m / 2;
      localView.layout(paramInt1 - paramInt4, n, paramInt1, m + n);
      paramInt1 -= leftMargin + paramInt4 + paramInt3;
      continue;
      paramInt1 = getPaddingLeft();
      paramInt2 = 0;
      if (paramInt2 < i5)
      {
        localView = getChildAt(paramInt2);
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (localView.getVisibility() == 8) {
          break label741;
        }
        if (!a) {
          break label676;
        }
      }
      for (;;)
      {
        paramInt2 += 1;
        break label628;
        break;
        paramInt1 += leftMargin;
        paramInt4 = localView.getMeasuredWidth();
        m = localView.getMeasuredHeight();
        n = i4 - m / 2;
        localView.layout(paramInt1, n, paramInt1 + paramInt4, m + n);
        paramInt1 = rightMargin + paramInt4 + paramInt3 + paramInt1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = h;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {}
    int n;
    for (boolean bool1 = true;; bool1 = false)
    {
      h = bool1;
      if (bool2 != h) {
        i = 0;
      }
      m = View.MeasureSpec.getSize(paramInt1);
      if ((h) && (a != null) && (m != i))
      {
        i = m;
        a.b(true);
      }
      n = getChildCount();
      if ((!h) || (n <= 0)) {
        break;
      }
      c(paramInt1, paramInt2);
      return;
    }
    int m = 0;
    while (m < n)
    {
      LayoutParams localLayoutParams = (LayoutParams)getChildAt(m).getLayoutParams();
      rightMargin = 0;
      leftMargin = 0;
      m += 1;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    e.d(paramBoolean);
  }
  
  public void setOnMenuItemClickListener(d paramd)
  {
    l = paramd;
  }
  
  public void setOverflowIcon(Drawable paramDrawable)
  {
    getMenu();
    e.a(paramDrawable);
  }
  
  public void setOverflowReserved(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (c != paramInt)
    {
      c = paramInt;
      if (paramInt == 0) {
        b = getContext();
      }
    }
    else
    {
      return;
    }
    b = new ContextThemeWrapper(getContext(), paramInt);
  }
  
  public void setPresenter(ActionMenuPresenter paramActionMenuPresenter)
  {
    e = paramActionMenuPresenter;
    e.a(this);
  }
  
  public static class LayoutParams
    extends LinearLayoutCompat.LayoutParams
  {
    @ViewDebug.ExportedProperty
    public boolean a;
    @ViewDebug.ExportedProperty
    public int b;
    @ViewDebug.ExportedProperty
    public int c;
    @ViewDebug.ExportedProperty
    public boolean d;
    @ViewDebug.ExportedProperty
    public boolean e;
    boolean f;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      a = false;
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      a = a;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface a
  {
    public abstract boolean c();
    
    public abstract boolean d();
  }
  
  private class b
    implements l.a
  {
    private b() {}
    
    public void a(f paramf, boolean paramBoolean) {}
    
    public boolean a(f paramf)
    {
      return false;
    }
  }
  
  private class c
    implements f.a
  {
    private c() {}
    
    public void a(f paramf)
    {
      if (ActionMenuView.b(ActionMenuView.this) != null) {
        ActionMenuView.b(ActionMenuView.this).a(paramf);
      }
    }
    
    public boolean a(f paramf, MenuItem paramMenuItem)
    {
      return (ActionMenuView.a(ActionMenuView.this) != null) && (ActionMenuView.a(ActionMenuView.this).a(paramMenuItem));
    }
  }
  
  public static abstract interface d
  {
    public abstract boolean a(MenuItem paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */