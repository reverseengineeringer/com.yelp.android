package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.j;
import android.support.v7.internal.view.menu.y;
import android.support.v7.internal.view.menu.z;
import android.support.v7.internal.widget.bm;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView
  extends LinearLayoutCompat
  implements android.support.v7.internal.view.menu.k, z
{
  private i a;
  private Context b;
  private Context c;
  private int d;
  private boolean e;
  private ActionMenuPresenter f;
  private y g;
  private j h;
  private boolean i;
  private int j;
  private int k;
  private int l;
  private n m;
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b = paramContext;
    setBaselineAligned(false);
    float f1 = getResourcesgetDisplayMetricsdensity;
    k = ((int)(56.0F * f1));
    l = ((int)(f1 * 4.0F));
    c = paramContext;
    d = 0;
  }
  
  static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = false;
    ActionMenuView.LayoutParams localLayoutParams = (ActionMenuView.LayoutParams)paramView.getLayoutParams();
    int n = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
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
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, Integer.MIN_VALUE), n);
      int i1 = paramView.getMeasuredWidth();
      paramInt3 = i1 / paramInt1;
      paramInt2 = paramInt3;
      if (i1 % paramInt1 != 0) {
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
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), n);
      return paramInt3;
      localActionMenuItemView = null;
      break;
      paramInt4 = 0;
      break label57;
    }
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i11 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int i10 = View.MeasureSpec.getSize(paramInt2);
    int n = getPaddingLeft();
    int i1 = getPaddingRight();
    int i8 = getPaddingTop() + getPaddingBottom();
    int i12 = getChildMeasureSpec(paramInt2, i8, -2);
    int i13 = paramInt1 - (n + i1);
    paramInt1 = i13 / k;
    paramInt2 = k;
    if (paramInt1 == 0)
    {
      setMeasuredDimension(i13, 0);
      return;
    }
    int i14 = k + i13 % paramInt2 / paramInt1;
    n = 0;
    int i4 = 0;
    int i3 = 0;
    int i5 = 0;
    int i2 = 0;
    long l1 = 0L;
    int i15 = getChildCount();
    int i6 = 0;
    Object localObject;
    boolean bool;
    ActionMenuView.LayoutParams localLayoutParams;
    label274:
    label291:
    int i9;
    for (;;)
    {
      if (i6 < i15)
      {
        localObject = getChildAt(i6);
        if (((View)localObject).getVisibility() == 8)
        {
          paramInt2 = i4;
          i1 = paramInt1;
          paramInt1 = i5;
          i6 += 1;
          i5 = paramInt1;
          paramInt1 = i1;
          i4 = paramInt2;
        }
        else
        {
          bool = localObject instanceof ActionMenuItemView;
          i5 += 1;
          if (bool) {
            ((View)localObject).setPadding(l, 0, l, 0);
          }
          localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
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
            i9 = a((View)localObject, i14, paramInt2, i12, i8);
            i4 = Math.max(i4, i9);
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
    for (paramInt2 = i3 + 1;; paramInt2 = i3)
    {
      if (a) {}
      for (i1 = 1;; i1 = i2)
      {
        int i7 = paramInt1 - i9;
        n = Math.max(n, ((View)localObject).getMeasuredHeight());
        if (i9 == 1)
        {
          long l2 = 1 << i6;
          i3 = paramInt2;
          l1 = l2 | l1;
          paramInt2 = i4;
          paramInt1 = i5;
          i2 = i1;
          i1 = i7;
          break;
          bool = false;
          break label274;
          paramInt2 = paramInt1;
          break label291;
          if ((i2 != 0) && (i5 == 2))
          {
            i7 = 1;
            i1 = 0;
            i6 = paramInt1;
            if ((i3 <= 0) || (i6 <= 0)) {
              break label1195;
            }
            paramInt1 = Integer.MAX_VALUE;
            l2 = 0L;
            paramInt2 = 0;
            i8 = 0;
            if (i8 >= i15) {
              break label571;
            }
            localObject = (ActionMenuView.LayoutParams)getChildAt(i8).getLayoutParams();
            if (d) {
              break label512;
            }
            i9 = paramInt2;
            paramInt2 = paramInt1;
            paramInt1 = i9;
          }
          for (;;)
          {
            i9 = i8 + 1;
            i8 = paramInt2;
            paramInt2 = paramInt1;
            paramInt1 = i8;
            i8 = i9;
            break label448;
            i7 = 0;
            break;
            if (b < paramInt1)
            {
              paramInt2 = b;
              l2 = 1 << i8;
              paramInt1 = 1;
            }
            else
            {
              if (b != paramInt1) {
                break label1184;
              }
              l2 |= 1 << i8;
              i9 = paramInt2 + 1;
              paramInt2 = paramInt1;
              paramInt1 = i9;
            }
          }
          l1 |= l2;
          if (paramInt2 > i6) {}
          for (;;)
          {
            float f2;
            float f1;
            if ((i2 == 0) && (i5 == 1))
            {
              paramInt1 = 1;
              if ((i6 <= 0) || (l1 == 0L) || ((i6 >= i5 - 1) && (paramInt1 == 0) && (i4 <= 1))) {
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
              if ((1 << i15 - 1 & l1) == 0L) {
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
              paramInt2 = (int)(i6 * i14 / f1);
              i2 = 0;
              paramInt1 = i1;
              i1 = i2;
              for (;;)
              {
                i2 = paramInt1;
                if (i1 >= i15) {
                  break label1076;
                }
                if ((1 << i1 & l1) != 0L) {
                  break;
                }
                i1 += 1;
              }
              i1 = 0;
              paramInt2 = i6;
              if (i1 < i15)
              {
                localObject = getChildAt(i1);
                localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
                if ((1 << i1 & l2) == 0L)
                {
                  if (b != paramInt1 + 1) {
                    break label1181;
                  }
                  l1 |= 1 << i1;
                }
              }
            }
            for (;;)
            {
              i1 += 1;
              break label792;
              if ((i7 != 0) && (e) && (paramInt2 == 1)) {
                ((View)localObject).setPadding(l + i14, 0, l, 0);
              }
              b += 1;
              f = true;
              paramInt2 -= 1;
              continue;
              i1 = 1;
              i6 = paramInt2;
              break;
              paramInt1 = 0;
              break label597;
              paramInt2 = 0;
              break label744;
              localObject = getChildAt(i1);
              localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
              if ((localObject instanceof ActionMenuItemView))
              {
                c = paramInt2;
                f = true;
                if ((i1 == 0) && (!e)) {
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
              if (i1 != 0) {
                leftMargin = (paramInt2 / 2);
              }
              if (i1 != i15 - 1) {
                rightMargin = (paramInt2 / 2);
              }
              break label777;
              i2 = i1;
              if (i2 != 0)
              {
                paramInt1 = 0;
                if (paramInt1 < i15)
                {
                  localObject = getChildAt(paramInt1);
                  localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
                  if (!f) {}
                  for (;;)
                  {
                    paramInt1 += 1;
                    break;
                    paramInt2 = b;
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(c + paramInt2 * i14, 1073741824), i12);
                  }
                }
              }
              if (i11 != 1073741824) {}
              for (;;)
              {
                setMeasuredDimension(i13, n);
                return;
                n = i10;
              }
              f1 = f2;
              break label728;
            }
            i9 = paramInt1;
            paramInt1 = paramInt2;
            paramInt2 = i9;
            break label485;
          }
        }
        paramInt1 = i5;
        i2 = i4;
        i4 = i7;
        i3 = paramInt2;
        paramInt2 = i2;
        i2 = i1;
        i1 = i4;
        break;
      }
    }
  }
  
  public ActionMenuView.LayoutParams a(AttributeSet paramAttributeSet)
  {
    return new ActionMenuView.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ActionMenuView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof ActionMenuView.LayoutParams)) {}
      for (paramLayoutParams = new ActionMenuView.LayoutParams((ActionMenuView.LayoutParams)paramLayoutParams);; paramLayoutParams = new ActionMenuView.LayoutParams(paramLayoutParams))
      {
        if (h <= 0) {
          h = 16;
        }
        return paramLayoutParams;
      }
    }
    return b();
  }
  
  public void a(i parami)
  {
    a = parami;
  }
  
  public void a(y paramy, j paramj)
  {
    g = paramy;
    h = paramj;
  }
  
  public boolean a()
  {
    return e;
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
      if ((localView1 instanceof k)) {
        bool1 = false | ((k)localView1).d();
      }
    }
    if ((paramInt > 0) && ((localView2 instanceof k))) {
      return ((k)localView2).c() | bool1;
    }
    return bool1;
  }
  
  public boolean a(android.support.v7.internal.view.menu.m paramm)
  {
    return a.a(paramm, 0);
  }
  
  protected ActionMenuView.LayoutParams b()
  {
    ActionMenuView.LayoutParams localLayoutParams = new ActionMenuView.LayoutParams(-2, -2);
    h = 16;
    return localLayoutParams;
  }
  
  public ActionMenuView.LayoutParams c()
  {
    ActionMenuView.LayoutParams localLayoutParams = b();
    a = true;
    return localLayoutParams;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof ActionMenuView.LayoutParams));
  }
  
  public i d()
  {
    return a;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  public boolean e()
  {
    return (f != null) && (f.c());
  }
  
  public boolean f()
  {
    return (f != null) && (f.d());
  }
  
  public boolean g()
  {
    return (f != null) && (f.g());
  }
  
  public Menu getMenu()
  {
    ActionMenuPresenter localActionMenuPresenter;
    if (a == null)
    {
      localObject = getContext();
      a = new i((Context)localObject);
      a.a(new m(this, null));
      f = new ActionMenuPresenter((Context)localObject);
      f.c(true);
      localActionMenuPresenter = f;
      if (g == null) {
        break label110;
      }
    }
    label110:
    for (Object localObject = g;; localObject = new l(this, null))
    {
      localActionMenuPresenter.a((y)localObject);
      a.a(f, c);
      f.a(this);
      return a;
    }
  }
  
  public int getPopupTheme()
  {
    return d;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  public boolean h()
  {
    return (f != null) && (f.h());
  }
  
  public void i()
  {
    if (f != null) {
      f.e();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    f.b(false);
    if ((f != null) && (f.g()))
    {
      f.d();
      f.c();
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    i();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!i)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i6 = getChildCount();
    int i5 = (paramInt4 - paramInt2) / 2;
    int i7 = getDividerWidth();
    paramInt4 = 0;
    paramInt2 = 0;
    int i1 = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int n = 0;
    paramBoolean = bm.a(this);
    int i2 = 0;
    View localView;
    ActionMenuView.LayoutParams localLayoutParams;
    if (i2 < i6)
    {
      localView = getChildAt(i2);
      int i3;
      int i4;
      if (localView.getVisibility() == 8)
      {
        i3 = n;
        i4 = i1;
        i1 = paramInt4;
        n = paramInt2;
        paramInt4 = i4;
        paramInt2 = i3;
      }
      for (;;)
      {
        i4 = i2 + 1;
        i2 = i1;
        i3 = n;
        n = paramInt2;
        i1 = paramInt4;
        paramInt2 = i3;
        paramInt4 = i2;
        i2 = i4;
        break;
        localLayoutParams = (ActionMenuView.LayoutParams)localView.getLayoutParams();
        if (a)
        {
          i3 = localView.getMeasuredWidth();
          n = i3;
          if (a(i2)) {
            n = i3 + i7;
          }
          int i8 = localView.getMeasuredHeight();
          if (paramBoolean)
          {
            i3 = getPaddingLeft();
            i3 = leftMargin + i3;
            i4 = i3 + n;
          }
          for (;;)
          {
            int i9 = i5 - i8 / 2;
            localView.layout(i3, i9, i4, i8 + i9);
            i3 = i1 - n;
            i4 = 1;
            n = paramInt2;
            i1 = paramInt4;
            paramInt2 = i4;
            paramInt4 = i3;
            break;
            i4 = getWidth() - getPaddingRight() - rightMargin;
            i3 = i4 - n;
          }
        }
        i4 = localView.getMeasuredWidth() + leftMargin + rightMargin;
        i3 = paramInt4 + i4;
        paramInt4 = i3;
        if (a(i2)) {
          paramInt4 = i3 + i7;
        }
        i3 = i1 - i4;
        i4 = paramInt2 + 1;
        i1 = paramInt4;
        paramInt2 = n;
        paramInt4 = i3;
        n = i4;
      }
    }
    if ((i6 == 1) && (n == 0))
    {
      localView = getChildAt(0);
      paramInt2 = localView.getMeasuredWidth();
      paramInt4 = localView.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
      paramInt3 = i5 - paramInt4 / 2;
      localView.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
      return;
    }
    if (n != 0)
    {
      paramInt1 = 0;
      label462:
      paramInt1 = paramInt2 - paramInt1;
      if (paramInt1 <= 0) {
        break label551;
      }
      paramInt1 = i1 / paramInt1;
      label475:
      paramInt3 = Math.max(0, paramInt1);
      if (!paramBoolean) {
        break label621;
      }
      paramInt1 = getWidth() - getPaddingRight();
      paramInt2 = 0;
      label498:
      if (paramInt2 < i6)
      {
        localView = getChildAt(paramInt2);
        localLayoutParams = (ActionMenuView.LayoutParams)localView.getLayoutParams();
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
      n = localView.getMeasuredHeight();
      i1 = i5 - n / 2;
      localView.layout(paramInt1 - paramInt4, i1, paramInt1, n + i1);
      paramInt1 -= leftMargin + paramInt4 + paramInt3;
      continue;
      paramInt1 = getPaddingLeft();
      paramInt2 = 0;
      if (paramInt2 < i6)
      {
        localView = getChildAt(paramInt2);
        localLayoutParams = (ActionMenuView.LayoutParams)localView.getLayoutParams();
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
        n = localView.getMeasuredHeight();
        i1 = i5 - n / 2;
        localView.layout(paramInt1, i1, paramInt1 + paramInt4, n + i1);
        paramInt1 = rightMargin + paramInt4 + paramInt3 + paramInt1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = i;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {}
    int i1;
    for (boolean bool1 = true;; bool1 = false)
    {
      i = bool1;
      if (bool2 != i) {
        j = 0;
      }
      n = View.MeasureSpec.getSize(paramInt1);
      if ((i) && (a != null) && (n != j))
      {
        j = n;
        a.b(true);
      }
      i1 = getChildCount();
      if ((!i) || (i1 <= 0)) {
        break;
      }
      c(paramInt1, paramInt2);
      return;
    }
    int n = 0;
    while (n < i1)
    {
      ActionMenuView.LayoutParams localLayoutParams = (ActionMenuView.LayoutParams)getChildAt(n).getLayoutParams();
      rightMargin = 0;
      leftMargin = 0;
      n += 1;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    f.d(paramBoolean);
  }
  
  public void setOnMenuItemClickListener(n paramn)
  {
    m = paramn;
  }
  
  public void setOverflowReserved(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      if (paramInt == 0) {
        c = b;
      }
    }
    else
    {
      return;
    }
    c = new ContextThemeWrapper(b, paramInt);
  }
  
  public void setPresenter(ActionMenuPresenter paramActionMenuPresenter)
  {
    f = paramActionMenuPresenter;
    f.a(this);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */