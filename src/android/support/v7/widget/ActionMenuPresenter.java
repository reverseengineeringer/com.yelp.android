package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v4.view.n;
import android.support.v4.view.o;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.aa;
import android.support.v7.internal.view.menu.ad;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.view.menu.v;
import android.support.v7.internal.view.menu.z;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import java.util.ArrayList;

public class ActionMenuPresenter
  extends android.support.v7.internal.view.menu.d
  implements o
{
  final h g = new h(this, null);
  int h;
  private View i;
  private boolean j;
  private boolean k;
  private int l;
  private int m;
  private int n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private int s;
  private final SparseBooleanArray t = new SparseBooleanArray();
  private View u;
  private g v;
  private b w;
  private d x;
  private c y;
  
  public ActionMenuPresenter(Context paramContext)
  {
    super(paramContext, com.yelp.android.g.i.abc_action_menu_layout, com.yelp.android.g.i.abc_action_menu_item_layout);
  }
  
  private View a(MenuItem paramMenuItem)
  {
    ViewGroup localViewGroup = (ViewGroup)f;
    Object localObject;
    if (localViewGroup == null)
    {
      localObject = null;
      return (View)localObject;
    }
    int i2 = localViewGroup.getChildCount();
    int i1 = 0;
    for (;;)
    {
      if (i1 >= i2) {
        break label74;
      }
      View localView = localViewGroup.getChildAt(i1);
      if ((localView instanceof aa))
      {
        localObject = localView;
        if (((aa)localView).getItemData() == paramMenuItem) {
          break;
        }
      }
      i1 += 1;
    }
    label74:
    return null;
  }
  
  public z a(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.a(paramViewGroup);
    ((ActionMenuView)paramViewGroup).setPresenter(this);
    return paramViewGroup;
  }
  
  public View a(m paramm, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramm.getActionView();
    if ((localView == null) || (paramm.n())) {
      localView = super.a(paramm, paramView, paramViewGroup);
    }
    if (paramm.isActionViewExpanded()) {}
    for (int i1 = 8;; i1 = 0)
    {
      localView.setVisibility(i1);
      paramm = (ActionMenuView)paramViewGroup;
      paramView = localView.getLayoutParams();
      if (!paramm.checkLayoutParams(paramView)) {
        localView.setLayoutParams(paramm.a(paramView));
      }
      return localView;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    l = paramInt;
    p = paramBoolean;
    q = true;
  }
  
  public void a(Context paramContext, android.support.v7.internal.view.menu.i parami)
  {
    super.a(paramContext, parami);
    parami = paramContext.getResources();
    paramContext = com.yelp.android.l.a.a(paramContext);
    if (!k) {
      j = paramContext.b();
    }
    if (!q) {
      l = paramContext.c();
    }
    if (!o) {
      n = paramContext.a();
    }
    int i1 = l;
    if (j)
    {
      if (i == null)
      {
        i = new e(this, a);
        int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        i.measure(i2, i2);
      }
      i1 -= i.getMeasuredWidth();
    }
    for (;;)
    {
      m = i1;
      s = ((int)(56.0F * getDisplayMetricsdensity));
      u = null;
      return;
      i = null;
    }
  }
  
  public void a(Configuration paramConfiguration)
  {
    if (!o) {
      n = b.getResources().getInteger(com.yelp.android.g.h.abc_max_action_buttons);
    }
    if (c != null) {
      c.b(true);
    }
  }
  
  public void a(android.support.v7.internal.view.menu.i parami, boolean paramBoolean)
  {
    e();
    super.a(parami, paramBoolean);
  }
  
  public void a(m paramm, aa paramaa)
  {
    paramaa.a(paramm, 0);
    paramm = (ActionMenuView)f;
    paramaa = (ActionMenuItemView)paramaa;
    paramaa.setItemInvoker(paramm);
    if (y == null) {
      y = new c(this, null);
    }
    paramaa.setPopupCallback(y);
  }
  
  public void a(ActionMenuView paramActionMenuView)
  {
    f = paramActionMenuView;
    paramActionMenuView.a(c);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.a(null);
      return;
    }
    c.a(false);
  }
  
  public boolean a(int paramInt, m paramm)
  {
    return paramm.j();
  }
  
  public boolean a(ad paramad)
  {
    if (!paramad.hasVisibleItems()) {
      return false;
    }
    for (Object localObject = paramad; ((ad)localObject).s() != c; localObject = (ad)((ad)localObject).s()) {}
    View localView = a(((ad)localObject).getItem());
    localObject = localView;
    if (localView == null)
    {
      if (i == null) {
        return false;
      }
      localObject = i;
    }
    h = paramad.getItem().getItemId();
    w = new b(this, b, paramad);
    w.a((View)localObject);
    w.a();
    super.a(paramad);
    return true;
  }
  
  public boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == i) {
      return false;
    }
    return super.a(paramViewGroup, paramInt);
  }
  
  public void b(int paramInt)
  {
    n = paramInt;
    o = true;
  }
  
  public void b(boolean paramBoolean)
  {
    int i2 = 1;
    int i3 = 0;
    Object localObject = (ViewGroup)((View)f).getParent();
    if (localObject != null) {
      com.yelp.android.k.a.a((ViewGroup)localObject);
    }
    super.b(paramBoolean);
    ((View)f).requestLayout();
    int i1;
    if (c != null)
    {
      localObject = c.k();
      int i4 = ((ArrayList)localObject).size();
      i1 = 0;
      while (i1 < i4)
      {
        n localn = ((m)((ArrayList)localObject).get(i1)).a();
        if (localn != null) {
          localn.a(this);
        }
        i1 += 1;
      }
    }
    if (c != null)
    {
      localObject = c.l();
      i1 = i3;
      if (j)
      {
        i1 = i3;
        if (localObject != null)
        {
          i1 = ((ArrayList)localObject).size();
          if (i1 != 1) {
            break label281;
          }
          if (((m)((ArrayList)localObject).get(0)).isActionViewExpanded()) {
            break label276;
          }
          i1 = 1;
        }
      }
      label170:
      if (i1 == 0) {
        break label295;
      }
      if (i == null) {
        i = new e(this, a);
      }
      localObject = (ViewGroup)i.getParent();
      if (localObject != f)
      {
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(i);
        }
        localObject = (ActionMenuView)f;
        ((ActionMenuView)localObject).addView(i, ((ActionMenuView)localObject).c());
      }
    }
    for (;;)
    {
      ((ActionMenuView)f).setOverflowReserved(j);
      return;
      localObject = null;
      break;
      label276:
      i1 = 0;
      break label170;
      label281:
      if (i1 > 0) {}
      for (i1 = i2;; i1 = 0) {
        break;
      }
      label295:
      if ((i != null) && (i.getParent() == f)) {
        ((ViewGroup)f).removeView(i);
      }
    }
  }
  
  public boolean b()
  {
    ArrayList localArrayList = c.i();
    int i9 = localArrayList.size();
    int i1 = n;
    int i8 = m;
    int i10 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)f;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    int i2 = 0;
    Object localObject1;
    if (i2 < i9)
    {
      localObject1 = (m)localArrayList.get(i2);
      if (((m)localObject1).l())
      {
        i3 += 1;
        label82:
        if ((!r) || (!((m)localObject1).isActionViewExpanded())) {
          break label820;
        }
        i1 = 0;
      }
    }
    label304:
    label445:
    label505:
    label510:
    label549:
    label632:
    label644:
    label649:
    label797:
    label800:
    label811:
    label820:
    for (;;)
    {
      i2 += 1;
      break;
      if (((m)localObject1).k())
      {
        i4 += 1;
        break label82;
      }
      i5 = 1;
      break label82;
      i2 = i1;
      if (j) {
        if (i5 == 0)
        {
          i2 = i1;
          if (i3 + i4 <= i1) {}
        }
        else
        {
          i2 = i1 - 1;
        }
      }
      i2 -= i3;
      localObject1 = t;
      ((SparseBooleanArray)localObject1).clear();
      i1 = 0;
      if (p)
      {
        i1 = i8 / s;
        i3 = s;
        i4 = s;
      }
      for (int i6 = i8 % i3 / i1 + i4;; i6 = 0)
      {
        int i7 = 0;
        i5 = 0;
        i3 = i1;
        i1 = i2;
        i4 = i8;
        i2 = i5;
        m localm;
        Object localObject2;
        if (i7 < i9)
        {
          localm = (m)localArrayList.get(i7);
          if (localm.l())
          {
            localObject2 = a(localm, u, localViewGroup);
            if (u == null) {
              u = ((View)localObject2);
            }
            if (p)
            {
              i5 = i3 - ActionMenuView.a((View)localObject2, i6, i3, i10, 0);
              i3 = ((View)localObject2).getMeasuredWidth();
              if (i2 != 0) {
                break label811;
              }
              i2 = i3;
            }
          }
        }
        for (;;)
        {
          i8 = localm.getGroupId();
          if (i8 != 0) {
            ((SparseBooleanArray)localObject1).put(i8, true);
          }
          localm.d(true);
          i4 -= i3;
          i3 = i1;
          i1 = i4;
          i8 = i7 + 1;
          i7 = i3;
          i3 = i5;
          i4 = i1;
          i1 = i7;
          i7 = i8;
          break;
          ((View)localObject2).measure(i10, i10);
          i5 = i3;
          break label304;
          int i11;
          boolean bool;
          int i12;
          if (localm.k())
          {
            i11 = localm.getGroupId();
            bool = ((SparseBooleanArray)localObject1).get(i11);
            if (((i1 > 0) || (bool)) && (i4 > 0) && ((!p) || (i3 > 0)))
            {
              i12 = 1;
              if (i12 == 0) {
                break label800;
              }
              localObject2 = a(localm, u, localViewGroup);
              if (u == null) {
                u = ((View)localObject2);
              }
              if (!p) {
                break label632;
              }
              i5 = ActionMenuView.a((View)localObject2, i6, i3, i10, 0);
              if (i5 != 0) {
                break label797;
              }
              i12 = 0;
              i3 -= i5;
              i5 = ((View)localObject2).getMeasuredWidth();
              i8 = i4 - i5;
              i4 = i2;
              if (i2 == 0) {
                i4 = i5;
              }
              if (!p) {
                break label649;
              }
              if (i8 < 0) {
                break label644;
              }
              i2 = 1;
              i12 &= i2;
              i2 = i4;
              i5 = i3;
              i4 = i8;
              i3 = i2;
              i2 = i5;
            }
          }
          for (;;)
          {
            if ((i12 != 0) && (i11 != 0)) {
              ((SparseBooleanArray)localObject1).put(i11, true);
            }
            for (;;)
            {
              i5 = i1;
              if (i12 != 0) {
                i5 = i1 - 1;
              }
              localm.d(i12);
              i1 = i4;
              i4 = i5;
              i5 = i2;
              i2 = i3;
              i3 = i4;
              break;
              int i13 = 0;
              break label445;
              ((View)localObject2).measure(i10, i10);
              break label510;
              i2 = 0;
              break label549;
              if (i8 + i4 > 0) {}
              for (i2 = 1;; i2 = 0)
              {
                i13 &= i2;
                i2 = i3;
                i3 = i4;
                i4 = i8;
                break;
              }
              if (bool)
              {
                ((SparseBooleanArray)localObject1).put(i11, false);
                i8 = 0;
                for (;;)
                {
                  if (i8 < i7)
                  {
                    localObject2 = (m)localArrayList.get(i8);
                    i5 = i1;
                    if (((m)localObject2).getGroupId() == i11)
                    {
                      i5 = i1;
                      if (((m)localObject2).j()) {
                        i5 = i1 + 1;
                      }
                      ((m)localObject2).d(false);
                    }
                    i8 += 1;
                    i1 = i5;
                    continue;
                    localm.d(false);
                    i5 = i4;
                    i4 = i1;
                    i1 = i5;
                    i5 = i3;
                    i3 = i4;
                    break;
                    return true;
                  }
                }
              }
            }
            break label505;
            i5 = i2;
            i2 = i3;
            i3 = i5;
          }
        }
      }
    }
  }
  
  public void c(boolean paramBoolean)
  {
    j = paramBoolean;
    k = true;
  }
  
  public boolean c()
  {
    if ((j) && (!g()) && (c != null) && (f != null) && (x == null) && (!c.l().isEmpty()))
    {
      x = new d(this, new g(this, b, c, i, true));
      ((View)f).post(x);
      super.a(null);
      return true;
    }
    return false;
  }
  
  public void d(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public boolean d()
  {
    if ((x != null) && (f != null))
    {
      ((View)f).removeCallbacks(x);
      x = null;
      return true;
    }
    g localg = v;
    if (localg != null)
    {
      localg.e();
      return true;
    }
    return false;
  }
  
  public boolean e()
  {
    return d() | f();
  }
  
  public boolean f()
  {
    if (w != null)
    {
      w.e();
      return true;
    }
    return false;
  }
  
  public boolean g()
  {
    return (v != null) && (v.f());
  }
  
  public boolean h()
  {
    return (x != null) || (g());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */