package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.d;
import android.support.v4.view.d.a;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.ActionMenuItemView.b;
import android.support.v7.internal.view.menu.b;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.k;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.view.menu.m.a;
import android.support.v7.internal.view.menu.p;
import android.support.v7.internal.widget.TintImageView;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.g;
import com.yelp.android.j.a.h;
import java.util.ArrayList;

public class ActionMenuPresenter
  extends b
  implements d.a
{
  private b A;
  final f g = new f(null);
  int h;
  private d i;
  private Drawable j;
  private boolean k;
  private boolean l;
  private boolean m;
  private int n;
  private int o;
  private int p;
  private boolean q;
  private boolean r;
  private boolean s;
  private boolean t;
  private int u;
  private final SparseBooleanArray v = new SparseBooleanArray();
  private View w;
  private e x;
  private a y;
  private c z;
  
  public ActionMenuPresenter(Context paramContext)
  {
    super(paramContext, a.h.abc_action_menu_layout, a.h.abc_action_menu_item_layout);
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
      if ((localView instanceof m.a))
      {
        localObject = localView;
        if (((m.a)localView).getItemData() == paramMenuItem) {
          break;
        }
      }
      i1 += 1;
    }
    label74:
    return null;
  }
  
  public m a(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.a(paramViewGroup);
    ((ActionMenuView)paramViewGroup).setPresenter(this);
    return paramViewGroup;
  }
  
  public View a(h paramh, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramh.getActionView();
    if ((localView == null) || (paramh.n())) {
      localView = super.a(paramh, paramView, paramViewGroup);
    }
    if (paramh.isActionViewExpanded()) {}
    for (int i1 = 8;; i1 = 0)
    {
      localView.setVisibility(i1);
      paramh = (ActionMenuView)paramViewGroup;
      paramView = localView.getLayoutParams();
      if (!paramh.checkLayoutParams(paramView)) {
        localView.setLayoutParams(paramh.a(paramView));
      }
      return localView;
    }
  }
  
  public void a(Context paramContext, f paramf)
  {
    super.a(paramContext, paramf);
    paramf = paramContext.getResources();
    paramContext = com.yelp.android.p.a.a(paramContext);
    if (!m) {
      l = paramContext.b();
    }
    if (!s) {
      n = paramContext.c();
    }
    if (!q) {
      p = paramContext.a();
    }
    int i1 = n;
    if (l)
    {
      if (i == null)
      {
        i = new d(a);
        if (k)
        {
          i.setImageDrawable(j);
          j = null;
          k = false;
        }
        int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        i.measure(i2, i2);
      }
      i1 -= i.getMeasuredWidth();
    }
    for (;;)
    {
      o = i1;
      u = ((int)(56.0F * getDisplayMetricsdensity));
      w = null;
      return;
      i = null;
    }
  }
  
  public void a(Configuration paramConfiguration)
  {
    if (!q) {
      p = b.getResources().getInteger(a.g.abc_max_action_buttons);
    }
    if (c != null) {
      c.b(true);
    }
  }
  
  public void a(Drawable paramDrawable)
  {
    if (i != null)
    {
      i.setImageDrawable(paramDrawable);
      return;
    }
    k = true;
    j = paramDrawable;
  }
  
  public void a(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    if (a > 0)
    {
      paramParcelable = c.findItem(a);
      if (paramParcelable != null) {
        a((p)paramParcelable.getSubMenu());
      }
    }
  }
  
  public void a(f paramf, boolean paramBoolean)
  {
    h();
    super.a(paramf, paramBoolean);
  }
  
  public void a(h paramh, m.a parama)
  {
    parama.a(paramh, 0);
    paramh = (ActionMenuView)f;
    parama = (ActionMenuItemView)parama;
    parama.setItemInvoker(paramh);
    if (A == null) {
      A = new b(null);
    }
    parama.setPopupCallback(A);
  }
  
  public void a(ActionMenuView paramActionMenuView)
  {
    f = paramActionMenuView;
    paramActionMenuView.a(c);
  }
  
  public void a(boolean paramBoolean)
  {
    int i2 = 1;
    int i3 = 0;
    Object localObject = (ViewGroup)((View)f).getParent();
    if (localObject != null) {
      com.yelp.android.o.a.a((ViewGroup)localObject);
    }
    super.a(paramBoolean);
    ((View)f).requestLayout();
    int i1;
    if (c != null)
    {
      localObject = c.k();
      int i4 = ((ArrayList)localObject).size();
      i1 = 0;
      while (i1 < i4)
      {
        d locald = ((h)((ArrayList)localObject).get(i1)).a();
        if (locald != null) {
          locald.a(this);
        }
        i1 += 1;
      }
    }
    if (c != null)
    {
      localObject = c.l();
      i1 = i3;
      if (l)
      {
        i1 = i3;
        if (localObject != null)
        {
          i1 = ((ArrayList)localObject).size();
          if (i1 != 1) {
            break label281;
          }
          if (((h)((ArrayList)localObject).get(0)).isActionViewExpanded()) {
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
        i = new d(a);
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
      ((ActionMenuView)f).setOverflowReserved(l);
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
  
  public boolean a()
  {
    ArrayList localArrayList = c.i();
    int i9 = localArrayList.size();
    int i1 = p;
    int i8 = o;
    int i10 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)f;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    int i2 = 0;
    Object localObject1;
    if (i2 < i9)
    {
      localObject1 = (h)localArrayList.get(i2);
      if (((h)localObject1).l())
      {
        i3 += 1;
        label82:
        if ((!t) || (!((h)localObject1).isActionViewExpanded())) {
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
      if (((h)localObject1).k())
      {
        i4 += 1;
        break label82;
      }
      i5 = 1;
      break label82;
      i2 = i1;
      if (l) {
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
      localObject1 = v;
      ((SparseBooleanArray)localObject1).clear();
      i1 = 0;
      if (r)
      {
        i1 = i8 / u;
        i3 = u;
        i4 = u;
      }
      for (int i6 = i8 % i3 / i1 + i4;; i6 = 0)
      {
        int i7 = 0;
        i5 = 0;
        i3 = i1;
        i1 = i2;
        i4 = i8;
        i2 = i5;
        h localh;
        Object localObject2;
        if (i7 < i9)
        {
          localh = (h)localArrayList.get(i7);
          if (localh.l())
          {
            localObject2 = a(localh, w, localViewGroup);
            if (w == null) {
              w = ((View)localObject2);
            }
            if (r)
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
          i8 = localh.getGroupId();
          if (i8 != 0) {
            ((SparseBooleanArray)localObject1).put(i8, true);
          }
          localh.d(true);
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
          if (localh.k())
          {
            i11 = localh.getGroupId();
            bool = ((SparseBooleanArray)localObject1).get(i11);
            if (((i1 > 0) || (bool)) && (i4 > 0) && ((!r) || (i3 > 0)))
            {
              i12 = 1;
              if (i12 == 0) {
                break label800;
              }
              localObject2 = a(localh, w, localViewGroup);
              if (w == null) {
                w = ((View)localObject2);
              }
              if (!r) {
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
              if (!r) {
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
              localh.d(i12);
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
                    localObject2 = (h)localArrayList.get(i8);
                    i5 = i1;
                    if (((h)localObject2).getGroupId() == i11)
                    {
                      i5 = i1;
                      if (((h)localObject2).j()) {
                        i5 = i1 + 1;
                      }
                      ((h)localObject2).d(false);
                    }
                    i8 += 1;
                    i1 = i5;
                    continue;
                    localh.d(false);
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
  
  public boolean a(int paramInt, h paramh)
  {
    return paramh.j();
  }
  
  public boolean a(p paramp)
  {
    if (!paramp.hasVisibleItems()) {
      return false;
    }
    for (Object localObject = paramp; ((p)localObject).s() != c; localObject = (p)((p)localObject).s()) {}
    View localView = a(((p)localObject).getItem());
    localObject = localView;
    if (localView == null)
    {
      if (i == null) {
        return false;
      }
      localObject = i;
    }
    h = paramp.getItem().getItemId();
    y = new a(b, paramp);
    y.a((View)localObject);
    y.d();
    super.a(paramp);
    return true;
  }
  
  public boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == i) {
      return false;
    }
    return super.a(paramViewGroup, paramInt);
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.a(null);
      return;
    }
    c.a(false);
  }
  
  public Parcelable c()
  {
    SavedState localSavedState = new SavedState();
    a = h;
    return localSavedState;
  }
  
  public void c(boolean paramBoolean)
  {
    l = paramBoolean;
    m = true;
  }
  
  public void d(boolean paramBoolean)
  {
    t = paramBoolean;
  }
  
  public Drawable e()
  {
    if (i != null) {
      return i.getDrawable();
    }
    if (k) {
      return j;
    }
    return null;
  }
  
  public boolean f()
  {
    if ((l) && (!j()) && (c != null) && (f != null) && (z == null) && (!c.l().isEmpty()))
    {
      z = new c(new e(b, c, i, true));
      ((View)f).post(z);
      super.a(null);
      return true;
    }
    return false;
  }
  
  public boolean g()
  {
    if ((z != null) && (f != null))
    {
      ((View)f).removeCallbacks(z);
      z = null;
      return true;
    }
    e locale = x;
    if (locale != null)
    {
      locale.g();
      return true;
    }
    return false;
  }
  
  public boolean h()
  {
    return g() | i();
  }
  
  public boolean i()
  {
    if (y != null)
    {
      y.g();
      return true;
    }
    return false;
  }
  
  public boolean j()
  {
    return (x != null) && (x.h());
  }
  
  public boolean k()
  {
    return (z != null) || (j());
  }
  
  private static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public ActionMenuPresenter.SavedState a(Parcel paramAnonymousParcel)
      {
        return new ActionMenuPresenter.SavedState(paramAnonymousParcel);
      }
      
      public ActionMenuPresenter.SavedState[] a(int paramAnonymousInt)
      {
        return new ActionMenuPresenter.SavedState[paramAnonymousInt];
      }
    };
    public int a;
    
    SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      a = paramParcel.readInt();
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(a);
    }
  }
  
  private class a
    extends k
  {
    private p d;
    
    public a(Context paramContext, p paramp)
    {
      super(paramp, null, false, a.a.actionOverflowMenuStyle);
      d = paramp;
      int j;
      int i;
      if (!((h)paramp.getItem()).j())
      {
        if (ActionMenuPresenter.d(ActionMenuPresenter.this) == null)
        {
          paramContext = (View)ActionMenuPresenter.e(ActionMenuPresenter.this);
          a(paramContext);
        }
      }
      else
      {
        a(g);
        j = paramp.size();
        i = 0;
      }
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          this$1 = paramp.getItem(i);
          if ((isVisible()) && (getIcon() != null)) {
            bool1 = true;
          }
        }
        else
        {
          b(bool1);
          return;
          paramContext = ActionMenuPresenter.d(ActionMenuPresenter.this);
          break;
        }
        i += 1;
      }
    }
    
    public void onDismiss()
    {
      super.onDismiss();
      ActionMenuPresenter.a(ActionMenuPresenter.this, null);
      h = 0;
    }
  }
  
  private class b
    extends ActionMenuItemView.b
  {
    private b() {}
    
    public ListPopupWindow a()
    {
      if (ActionMenuPresenter.h(ActionMenuPresenter.this) != null) {
        return ActionMenuPresenter.h(ActionMenuPresenter.this).e();
      }
      return null;
    }
  }
  
  private class c
    implements Runnable
  {
    private ActionMenuPresenter.e b;
    
    public c(ActionMenuPresenter.e parame)
    {
      b = parame;
    }
    
    public void run()
    {
      ActionMenuPresenter.f(ActionMenuPresenter.this).f();
      View localView = (View)ActionMenuPresenter.g(ActionMenuPresenter.this);
      if ((localView != null) && (localView.getWindowToken() != null) && (b.f())) {
        ActionMenuPresenter.a(ActionMenuPresenter.this, b);
      }
      ActionMenuPresenter.a(ActionMenuPresenter.this, null);
    }
  }
  
  private class d
    extends TintImageView
    implements ActionMenuView.a
  {
    private final float[] b = new float[2];
    
    public d(Context paramContext)
    {
      super(null, a.a.actionOverflowButtonStyle);
      setClickable(true);
      setFocusable(true);
      setVisibility(0);
      setEnabled(true);
      setOnTouchListener(new ListPopupWindow.b(this)
      {
        public ListPopupWindow a()
        {
          if (ActionMenuPresenter.a(ActionMenuPresenter.this) == null) {
            return null;
          }
          return ActionMenuPresenter.a(ActionMenuPresenter.this).e();
        }
        
        public boolean b()
        {
          f();
          return true;
        }
        
        public boolean c()
        {
          if (ActionMenuPresenter.b(ActionMenuPresenter.this) != null) {
            return false;
          }
          g();
          return true;
        }
      });
    }
    
    public boolean c()
    {
      return false;
    }
    
    public boolean d()
    {
      return false;
    }
    
    public boolean performClick()
    {
      if (super.performClick()) {
        return true;
      }
      playSoundEffect(0);
      f();
      return true;
    }
    
    protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
      Drawable localDrawable1 = getDrawable();
      Drawable localDrawable2 = getBackground();
      if ((localDrawable1 != null) && (localDrawable2 != null))
      {
        int i = getWidth();
        paramInt2 = getHeight();
        paramInt1 = Math.max(i, paramInt2) / 2;
        int j = getPaddingLeft();
        int k = getPaddingRight();
        paramInt3 = getPaddingTop();
        paramInt4 = getPaddingBottom();
        i = (i + (j - k)) / 2;
        paramInt2 = (paramInt2 + (paramInt3 - paramInt4)) / 2;
        com.yelp.android.d.a.a(localDrawable2, i - paramInt1, paramInt2 - paramInt1, i + paramInt1, paramInt2 + paramInt1);
      }
      return bool;
    }
  }
  
  private class e
    extends k
  {
    public e(Context paramContext, f paramf, View paramView, boolean paramBoolean)
    {
      super(paramf, paramView, paramBoolean, a.a.actionOverflowMenuStyle);
      a(8388613);
      a(g);
    }
    
    public void onDismiss()
    {
      super.onDismiss();
      ActionMenuPresenter.c(ActionMenuPresenter.this).close();
      ActionMenuPresenter.a(ActionMenuPresenter.this, null);
    }
  }
  
  private class f
    implements l.a
  {
    private f() {}
    
    public void a(f paramf, boolean paramBoolean)
    {
      if ((paramf instanceof p)) {
        ((p)paramf).p().a(false);
      }
      l.a locala = d();
      if (locala != null) {
        locala.a(paramf, paramBoolean);
      }
    }
    
    public boolean a(f paramf)
    {
      if (paramf == null) {
        return false;
      }
      h = ((p)paramf).getItem().getItemId();
      l.a locala = d();
      if (locala != null) {}
      for (boolean bool = locala.a(paramf);; bool = false) {
        return bool;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */