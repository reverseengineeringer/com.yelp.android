package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.ba;
import android.support.v4.view.by;
import android.support.v4.view.bz;
import android.support.v4.view.cx;
import android.support.v4.widget.aa;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import com.yelp.android.c.h;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements by
{
  private static final Interpolator ae;
  private static final boolean h;
  private final boolean A;
  private final AccessibilityManager B;
  private boolean C = false;
  private int D = 0;
  private aa E;
  private aa F;
  private aa G;
  private aa H;
  private int I = 0;
  private int J = -1;
  private VelocityTracker K;
  private int L;
  private int M;
  private int N;
  private int O;
  private int P;
  private final int Q;
  private final int R;
  private float S = Float.MIN_VALUE;
  private final cd T = new cd(this);
  private bt U;
  private List<bt> V;
  private bn W = new bo(this, null);
  final bv a = new bv(this);
  private boolean aa = false;
  private cf ab;
  private final int[] ac = new int[2];
  private Runnable ad = new be(this);
  o b;
  r c;
  bl d = new u();
  final cb e = new cb();
  boolean f = false;
  boolean g = false;
  private final bx i = new bx(this, null);
  private RecyclerView.SavedState j;
  private boolean k;
  private final Runnable l = new bd(this);
  private final Rect m = new Rect();
  private bi n;
  private br o;
  private bw p;
  private final ArrayList<bp> q = new ArrayList();
  private final ArrayList<bs> r = new ArrayList();
  private bs s;
  private boolean t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private int y;
  private boolean z;
  
  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      ae = new bf();
      return;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setFocusableInTouchMode(true);
    if (Build.VERSION.SDK_INT >= 16) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      A = bool1;
      paramContext = ViewConfiguration.get(paramContext);
      P = paramContext.getScaledTouchSlop();
      Q = paramContext.getScaledMinimumFlingVelocity();
      R = paramContext.getScaledMaximumFlingVelocity();
      bool1 = bool2;
      if (android.support.v4.view.ce.a(this) == 2) {
        bool1 = true;
      }
      setWillNotDraw(bool1);
      d.a(W);
      a();
      s();
      if (android.support.v4.view.ce.e(this) == 0) {
        android.support.v4.view.ce.c(this, 1);
      }
      B = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      setAccessibilityDelegateCompat(new cf(this));
      return;
    }
  }
  
  private boolean A()
  {
    return (d != null) && (d.h());
  }
  
  private void B()
  {
    if ((!aa) && (t))
    {
      android.support.v4.view.ce.a(this, ad);
      aa = true;
    }
  }
  
  private boolean C()
  {
    return (d != null) && (o.b());
  }
  
  private void D()
  {
    boolean bool2 = true;
    if (C)
    {
      b.a();
      o();
      o.a(this);
    }
    int i1;
    label89:
    cb localcb;
    if ((d != null) && (o.b()))
    {
      b.b();
      if (((!f) || (g)) && (!f) && ((!g) || (!A()))) {
        break label210;
      }
      i1 = 1;
      localcb = e;
      if ((!v) || (d == null) || ((!C) && (i1 == 0) && (!br.a(o))) || ((C) && (!n.b()))) {
        break label215;
      }
      bool1 = true;
      label149:
      cb.c(localcb, bool1);
      localcb = e;
      if ((!cb.b(e)) || (i1 == 0) || (C) || (!C())) {
        break label220;
      }
    }
    label210:
    label215:
    label220:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      cb.d(localcb, bool1);
      return;
      b.e();
      break;
      i1 = 0;
      break label89;
      bool1 = false;
      break label149;
    }
  }
  
  private void E()
  {
    if (C) {
      return;
    }
    C = true;
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ce localce = b(c.c(i1));
      if ((localce != null) && (!localce.c())) {
        localce.a(512);
      }
      i1 += 1;
    }
    a.g();
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = 0;
    if (paramInt2 < 0)
    {
      d();
      if (!E.a(-paramInt2 / getWidth(), 1.0F - paramInt3 / getHeight())) {
        paramInt3 = 0;
      }
    }
    for (;;)
    {
      if (paramInt4 < 0)
      {
        f();
        if (!F.a(-paramInt4 / getHeight(), paramInt1 / getWidth()))
        {
          paramInt1 = i1;
          if (paramInt3 == 0) {}
        }
        else
        {
          paramInt1 = 1;
        }
      }
      for (;;)
      {
        if ((paramInt1 != 0) || (paramInt2 != 0) || (paramInt4 != 0)) {
          android.support.v4.view.ce.d(this);
        }
        return;
        paramInt3 = 1;
        break;
        if (paramInt2 <= 0) {
          break label210;
        }
        e();
        if (!G.a(paramInt2 / getWidth(), paramInt3 / getHeight()))
        {
          paramInt3 = 0;
          break;
        }
        paramInt3 = 1;
        break;
        if (paramInt4 > 0)
        {
          g();
          if (!H.a(paramInt4 / getHeight(), 1.0F - paramInt1 / getWidth()))
          {
            paramInt1 = i1;
            if (paramInt3 == 0) {}
          }
          else
          {
            paramInt1 = 1;
          }
        }
        else
        {
          paramInt1 = paramInt3;
        }
      }
      label210:
      paramInt3 = 0;
    }
  }
  
  private void a(bi parambi, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (n != null)
    {
      n.b(i);
      n.b(this);
    }
    if ((!paramBoolean1) || (paramBoolean2))
    {
      if (d != null) {
        d.c();
      }
      if (o != null)
      {
        o.c(a);
        o.b(a);
      }
      a.a();
    }
    b.a();
    bi localbi = n;
    n = parambi;
    if (parambi != null)
    {
      parambi.a(i);
      parambi.a(this);
    }
    if (o != null) {
      o.a(localbi, n);
    }
    a.a(localbi, n, paramBoolean1);
    cb.a(e, true);
    o();
  }
  
  private void a(bq parambq)
  {
    View localView = a.a;
    b(a);
    int i1 = b;
    int i2 = c;
    int i3 = localView.getLeft();
    int i4 = localView.getTop();
    if ((i1 != i3) || (i2 != i4))
    {
      a.a(false);
      localView.layout(i3, i4, localView.getWidth() + i3, localView.getHeight() + i4);
      if (d.a(a, i1, i2, i3, i4)) {
        B();
      }
    }
    do
    {
      return;
      a.a(false);
    } while (!d.a(a));
    B();
  }
  
  private void a(ce paramce, Rect paramRect, int paramInt1, int paramInt2)
  {
    View localView = a;
    if ((paramRect != null) && ((left != paramInt1) || (top != paramInt2)))
    {
      paramce.a(false);
      if (d.a(paramce, left, top, paramInt1, paramInt2)) {
        B();
      }
    }
    do
    {
      return;
      paramce.a(false);
    } while (!d.b(paramce));
    B();
  }
  
  private void a(ce paramce1, ce paramce2)
  {
    paramce1.a(false);
    b(paramce1);
    g = paramce2;
    a.d(paramce1);
    int i3 = a.getLeft();
    int i4 = a.getTop();
    int i2;
    int i1;
    if ((paramce2 == null) || (paramce2.c()))
    {
      i2 = i4;
      i1 = i3;
    }
    for (;;)
    {
      if (d.a(paramce1, paramce2, i3, i4, i1, i2)) {
        B();
      }
      return;
      i1 = a.getLeft();
      i2 = a.getTop();
      paramce2.a(false);
      h = paramce1;
    }
  }
  
  private void a(com.yelp.android.e.a<View, Rect> parama)
  {
    List localList = e.d;
    int i1 = localList.size() - 1;
    if (i1 >= 0)
    {
      View localView = (View)localList.get(i1);
      ce localce = b(localView);
      bq localbq = (bq)e.a.remove(localce);
      if (!e.a()) {
        e.b.remove(localce);
      }
      if (parama.remove(localView) != null) {
        o.a(localView, a);
      }
      for (;;)
      {
        i1 -= 1;
        break;
        if (localbq != null) {
          a(localbq);
        } else {
          a(new bq(localce, localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
        }
      }
    }
    localList.clear();
  }
  
  private void a(int[] paramArrayOfInt)
  {
    int i6 = c.b();
    if (i6 == 0)
    {
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return;
    }
    int i1 = Integer.MAX_VALUE;
    int i4 = Integer.MIN_VALUE;
    int i3 = 0;
    ce localce;
    if (i3 < i6)
    {
      localce = b(c.b(i3));
      if (!localce.c()) {}
    }
    for (;;)
    {
      i3 += 1;
      break;
      int i5 = localce.d();
      int i2 = i1;
      if (i5 < i1) {
        i2 = i5;
      }
      if (i5 > i4)
      {
        i4 = i5;
        i1 = i2;
        continue;
        paramArrayOfInt[0] = i1;
        paramArrayOfInt[1] = i4;
      }
      else
      {
        i1 = i2;
      }
    }
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0)) {
      s = null;
    }
    int i3 = r.size();
    int i1 = 0;
    while (i1 < i3)
    {
      bs localbs = (bs)r.get(i1);
      if ((localbs.a(this, paramMotionEvent)) && (i2 != 3))
      {
        s = localbs;
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  static ce b(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return getLayoutParamsa;
  }
  
  private void b(ce paramce)
  {
    View localView = a;
    if (localView.getParent() == this) {}
    for (int i1 = 1;; i1 = 0)
    {
      a.d(a(localView));
      if (!paramce.q()) {
        break;
      }
      c.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      c.a(localView, true);
      return;
    }
    c.d(localView);
  }
  
  private boolean b(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    int i2;
    if (s != null)
    {
      if (i1 == 0) {
        s = null;
      }
    }
    else
    {
      if (i1 == 0) {
        break label108;
      }
      i2 = r.size();
      i1 = 0;
    }
    while (i1 < i2)
    {
      bs localbs = (bs)r.get(i1);
      if (localbs.a(this, paramMotionEvent))
      {
        s = localbs;
        return true;
        s.b(this, paramMotionEvent);
        if ((i1 == 3) || (i1 == 1)) {
          s = null;
        }
        return true;
      }
      i1 += 1;
    }
    label108:
    return false;
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    int i1 = ba.b(paramMotionEvent);
    if (ba.b(paramMotionEvent, i1) == J) {
      if (i1 != 0) {
        break label75;
      }
    }
    label75:
    for (i1 = 1;; i1 = 0)
    {
      J = ba.b(paramMotionEvent, i1);
      int i2 = (int)(ba.c(paramMotionEvent, i1) + 0.5F);
      N = i2;
      L = i2;
      i1 = (int)(ba.d(paramMotionEvent, i1) + 0.5F);
      O = i1;
      M = i1;
      return;
    }
  }
  
  private boolean g(View paramView)
  {
    b();
    boolean bool = c.e(paramView);
    if (bool)
    {
      paramView = b(paramView);
      a.d(paramView);
      a.b(paramView);
    }
    a(false);
    return bool;
  }
  
  private float getScrollFactor()
  {
    if (S == Float.MIN_VALUE)
    {
      TypedValue localTypedValue = new TypedValue();
      if (getContext().getTheme().resolveAttribute(16842829, localTypedValue, true)) {
        S = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
      }
    }
    else
    {
      return S;
    }
    return 0.0F;
  }
  
  private void h(View paramView)
  {
    if (n != null) {
      n.d(b(paramView));
    }
    e(paramView);
  }
  
  private void i(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (E != null)
    {
      bool1 = bool2;
      if (!E.a())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = E.c();
        }
      }
    }
    bool2 = bool1;
    if (G != null)
    {
      bool2 = bool1;
      if (!G.a())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | G.c();
        }
      }
    }
    bool1 = bool2;
    if (F != null)
    {
      bool1 = bool2;
      if (!F.a())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | F.c();
        }
      }
    }
    bool2 = bool1;
    if (H != null)
    {
      bool2 = bool1;
      if (!H.a())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | H.c();
        }
      }
    }
    if (bool2) {
      android.support.v4.view.ce.d(this);
    }
  }
  
  private void i(View paramView)
  {
    if (n != null) {
      n.c(b(paramView));
    }
    d(paramView);
  }
  
  private void j(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i2)
    {
    default: 
      paramInt1 = android.support.v4.view.ce.o(this);
    }
    switch (i1)
    {
    default: 
      paramInt2 = android.support.v4.view.ce.p(this);
    }
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  private boolean k(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    int i2 = c.b();
    boolean bool1;
    if (i2 == 0) {
      if (paramInt1 == 0)
      {
        bool1 = bool2;
        if (paramInt2 == 0) {}
      }
      else
      {
        bool1 = true;
      }
    }
    int i1;
    do
    {
      return bool1;
      i1 = 0;
      bool1 = bool2;
    } while (i1 >= i2);
    ce localce = b(c.b(i1));
    if (localce.c()) {}
    int i3;
    do
    {
      i1 += 1;
      break;
      i3 = localce.d();
    } while ((i3 >= paramInt1) && (i3 <= paramInt2));
    return true;
  }
  
  private void s()
  {
    c = new r(new bg(this));
  }
  
  private void setScrollState(int paramInt)
  {
    if (paramInt == I) {
      return;
    }
    I = paramInt;
    if (paramInt != 2) {
      u();
    }
    d(paramInt);
  }
  
  private void t()
  {
    l.run();
  }
  
  private void u()
  {
    T.b();
    if (o != null) {
      o.y();
    }
  }
  
  private void v()
  {
    boolean bool2 = false;
    if (E != null) {
      bool2 = E.c();
    }
    boolean bool1 = bool2;
    if (F != null) {
      bool1 = bool2 | F.c();
    }
    bool2 = bool1;
    if (G != null) {
      bool2 = bool1 | G.c();
    }
    bool1 = bool2;
    if (H != null) {
      bool1 = bool2 | H.c();
    }
    if (bool1) {
      android.support.v4.view.ce.d(this);
    }
  }
  
  private void w()
  {
    if (K != null) {
      K.clear();
    }
    v();
    setScrollState(0);
  }
  
  private void x()
  {
    D += 1;
  }
  
  private void y()
  {
    D -= 1;
    if (D < 1)
    {
      D = 0;
      z();
    }
  }
  
  private void z()
  {
    int i1 = y;
    y = 0;
    if ((i1 != 0) && (B != null) && (B.isEnabled()))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      localAccessibilityEvent.setEventType(2048);
      com.yelp.android.f.a.a(localAccessibilityEvent, i1);
      sendAccessibilityEventUnchecked(localAccessibilityEvent);
    }
  }
  
  long a(ce paramce)
  {
    if (n.b()) {
      return paramce.e();
    }
    return b;
  }
  
  ce a(int paramInt, boolean paramBoolean)
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ce localce = b(c.c(i1));
      if ((localce != null) && (!localce.p())) {
        if (paramBoolean)
        {
          if (b != paramInt) {}
        }
        else {
          while (localce.d() == paramInt) {
            return localce;
          }
        }
      }
      i1 += 1;
    }
    return null;
  }
  
  public ce a(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return b(paramView);
  }
  
  void a()
  {
    b = new o(new bh(this));
  }
  
  public void a(int paramInt)
  {
    int i2 = c.b();
    int i1 = 0;
    while (i1 < i2)
    {
      c.b(i1).offsetTopAndBottom(paramInt);
      i1 += 1;
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    if (o == null) {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    for (;;)
    {
      return;
      if (!o.d()) {
        paramInt1 = 0;
      }
      if (!o.e()) {
        paramInt2 = i1;
      }
      while ((paramInt1 != 0) || (paramInt2 != 0))
      {
        T.b(paramInt1, paramInt2);
        return;
      }
    }
  }
  
  void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = c.c();
    int i1 = 0;
    if (i1 < i2)
    {
      ce localce = b(c.c(i1));
      if ((localce != null) && (!localce.c()))
      {
        if (b < paramInt1 + paramInt2) {
          break label83;
        }
        localce.a(-paramInt2, paramBoolean);
        cb.a(e, true);
      }
      for (;;)
      {
        i1 += 1;
        break;
        label83:
        if (b >= paramInt1)
        {
          localce.a(paramInt1 - 1, -paramInt2, paramBoolean);
          cb.a(e, true);
        }
      }
    }
    a.b(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  public void a(bt parambt)
  {
    if (V == null) {
      V = new ArrayList();
    }
    V.add(parambt);
  }
  
  void a(String paramString)
  {
    if (i())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  void a(boolean paramBoolean)
  {
    if (w)
    {
      if ((paramBoolean) && (x) && (o != null) && (n != null)) {
        j();
      }
      w = false;
      x = false;
    }
  }
  
  boolean a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4)
  {
    int i2 = 0;
    int i7 = 0;
    int i4 = 0;
    int i5 = 0;
    int i1 = 0;
    int i8 = 0;
    int i3 = 0;
    int i6 = 0;
    t();
    if (n != null)
    {
      b();
      x();
      h.a("RV Scroll");
      i1 = i8;
      i2 = i7;
      if (paramInt1 != 0)
      {
        i1 = o.a(paramInt1, a, e);
        i2 = paramInt1 - i1;
      }
      i3 = i6;
      i4 = i5;
      if (paramInt2 != 0)
      {
        i3 = o.b(paramInt2, a, e);
        i4 = paramInt2 - i3;
      }
      h.a();
      if (A())
      {
        i6 = c.b();
        i5 = 0;
        if (i5 < i6)
        {
          View localView = c.b(i5);
          Object localObject = a(localView);
          if ((localObject != null) && (h != null))
          {
            localObject = h;
            if (localObject == null) {
              break label274;
            }
          }
          label274:
          for (localObject = a;; localObject = null)
          {
            if (localObject != null)
            {
              i7 = localView.getLeft();
              i8 = localView.getTop();
              if ((i7 != ((View)localObject).getLeft()) || (i8 != ((View)localObject).getTop())) {
                ((View)localObject).layout(i7, i8, ((View)localObject).getWidth() + i7, ((View)localObject).getHeight() + i8);
              }
            }
            i5 += 1;
            break;
          }
        }
      }
      y();
      a(false);
    }
    if (!q.isEmpty()) {
      invalidate();
    }
    if (android.support.v4.view.ce.a(this) != 2)
    {
      if (paramBoolean) {
        a(paramInt3, i2, paramInt4, i4);
      }
      i(paramInt1, paramInt2);
    }
    if ((i1 != 0) || (i3 != 0)) {
      h(i1, i3);
    }
    if (!awakenScrollBars()) {
      invalidate();
    }
    return (i1 != 0) || (i3 != 0);
  }
  
  boolean a(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool = false;
    int i2 = 0;
    if (i()) {
      if (paramAccessibilityEvent == null) {
        break label46;
      }
    }
    label46:
    for (int i1 = com.yelp.android.f.a.b(paramAccessibilityEvent);; i1 = 0)
    {
      if (i1 == 0) {
        i1 = i2;
      }
      for (;;)
      {
        y = (i1 | y);
        bool = true;
        return bool;
      }
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if ((o == null) || (!o.a(this, paramArrayList, paramInt1, paramInt2))) {
      super.addFocusables(paramArrayList, paramInt1, paramInt2);
    }
  }
  
  void b()
  {
    if (!w)
    {
      w = true;
      x = false;
    }
  }
  
  public void b(int paramInt)
  {
    int i2 = c.b();
    int i1 = 0;
    while (i1 < i2)
    {
      c.b(i1).offsetLeftAndRight(paramInt);
      i1 += 1;
    }
  }
  
  public boolean b(int paramInt1, int paramInt2)
  {
    if (o == null) {
      Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    do
    {
      return false;
      boolean bool1 = o.d();
      boolean bool2 = o.e();
      int i1;
      if (bool1)
      {
        i1 = paramInt1;
        if (Math.abs(paramInt1) >= Q) {}
      }
      else
      {
        i1 = 0;
      }
      if (bool2)
      {
        paramInt1 = paramInt2;
        if (Math.abs(paramInt2) >= Q) {}
      }
      else
      {
        paramInt1 = 0;
      }
      paramInt2 = Math.max(-R, Math.min(i1, R));
      paramInt1 = Math.max(-R, Math.min(paramInt1, R));
    } while ((paramInt2 == 0) && (paramInt1 == 0));
    T.a(paramInt2, paramInt1);
    return true;
  }
  
  public int c(View paramView)
  {
    paramView = b(paramView);
    if (paramView != null) {
      return paramView.d();
    }
    return -1;
  }
  
  public void c()
  {
    setScrollState(0);
    u();
  }
  
  public void c(int paramInt) {}
  
  void c(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      d();
      E.a(-paramInt1);
      if (paramInt2 >= 0) {
        break label69;
      }
      f();
      F.a(-paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        android.support.v4.view.ce.d(this);
      }
      return;
      if (paramInt1 <= 0) {
        break;
      }
      e();
      G.a(paramInt1);
      break;
      label69:
      if (paramInt2 > 0)
      {
        g();
        H.a(paramInt2);
      }
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof RecyclerView.LayoutParams)) && (o.a((RecyclerView.LayoutParams)paramLayoutParams));
  }
  
  public int computeHorizontalScrollExtent()
  {
    if (o.d()) {
      return o.d(e);
    }
    return 0;
  }
  
  public int computeHorizontalScrollOffset()
  {
    if (o.d()) {
      return o.b(e);
    }
    return 0;
  }
  
  public int computeHorizontalScrollRange()
  {
    if (o.d()) {
      return o.f(e);
    }
    return 0;
  }
  
  public int computeVerticalScrollExtent()
  {
    if (o.e()) {
      return o.e(e);
    }
    return 0;
  }
  
  public int computeVerticalScrollOffset()
  {
    if (o.e()) {
      return o.c(e);
    }
    return 0;
  }
  
  public int computeVerticalScrollRange()
  {
    if (o.e()) {
      return o.g(e);
    }
    return 0;
  }
  
  void d()
  {
    if (E != null) {
      return;
    }
    E = new aa(getContext());
    if (k)
    {
      E.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    E.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void d(int paramInt)
  {
    if (o != null) {
      o.h(paramInt);
    }
    c(paramInt);
    if (U != null) {
      U.a(this, paramInt);
    }
    if (V != null)
    {
      int i1 = V.size() - 1;
      while (i1 >= 0)
      {
        ((bt)V.get(i1)).a(this, paramInt);
        i1 -= 1;
      }
    }
  }
  
  void d(int paramInt1, int paramInt2)
  {
    int i5 = c.c();
    int i1;
    int i2;
    if (paramInt1 < paramInt2)
    {
      i1 = -1;
      i2 = paramInt2;
    }
    ce localce;
    for (int i3 = paramInt1;; i3 = paramInt2)
    {
      int i4 = 0;
      for (;;)
      {
        if (i4 >= i5) {
          break label131;
        }
        localce = b(c.c(i4));
        if ((localce != null) && (b >= i3) && (b <= i2)) {
          break;
        }
        i4 += 1;
      }
      i1 = 1;
      i2 = paramInt1;
    }
    if (b == paramInt1) {
      localce.a(paramInt2 - paramInt1, false);
    }
    for (;;)
    {
      cb.a(e, true);
      break;
      localce.a(i1, false);
    }
    label131:
    a.a(paramInt1, paramInt2);
    requestLayout();
  }
  
  public void d(View paramView) {}
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i3 = 1;
    int i4 = 0;
    super.draw(paramCanvas);
    int i2 = q.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((bp)q.get(i1)).b(paramCanvas, this, e);
      i1 += 1;
    }
    int i5;
    if ((E != null) && (!E.a()))
    {
      i5 = paramCanvas.save();
      if (k)
      {
        i1 = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i1 + -getHeight(), 0.0F);
        if ((E == null) || (!E.a(paramCanvas))) {
          break label456;
        }
        i2 = 1;
        label128:
        paramCanvas.restoreToCount(i5);
      }
    }
    for (;;)
    {
      i1 = i2;
      if (F != null)
      {
        i1 = i2;
        if (!F.a())
        {
          i5 = paramCanvas.save();
          if (k) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((F == null) || (!F.a(paramCanvas))) {
            break label461;
          }
          i1 = 1;
          label202:
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      i2 = i1;
      if (G != null)
      {
        i2 = i1;
        if (!G.a())
        {
          i5 = paramCanvas.save();
          int i6 = getWidth();
          if (!k) {
            break label466;
          }
          i2 = getPaddingTop();
          label257:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-i2, -i6);
          if ((G == null) || (!G.a(paramCanvas))) {
            break label471;
          }
          i2 = 1;
          label295:
          i2 = i1 | i2;
          paramCanvas.restoreToCount(i5);
        }
      }
      i1 = i2;
      if (H != null)
      {
        i1 = i2;
        if (!H.a())
        {
          i5 = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!k) {
            break label476;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372:
          i1 = i4;
          if (H != null)
          {
            i1 = i4;
            if (H.a(paramCanvas)) {
              i1 = 1;
            }
          }
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      if ((i1 == 0) && (d != null) && (q.size() > 0) && (d.b())) {
        i1 = i3;
      }
      for (;;)
      {
        if (i1 != 0) {
          android.support.v4.view.ce.d(this);
        }
        return;
        i1 = 0;
        break;
        label456:
        i2 = 0;
        break label128;
        label461:
        i1 = 0;
        break label202;
        label466:
        i2 = 0;
        break label257;
        label471:
        i2 = 0;
        break label295;
        label476:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      i2 = 0;
    }
  }
  
  void e()
  {
    if (G != null) {
      return;
    }
    G = new aa(getContext());
    if (k)
    {
      G.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    G.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void e(int paramInt1, int paramInt2)
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ce localce = b(c.c(i1));
      if ((localce != null) && (!localce.c()) && (b >= paramInt1))
      {
        localce.a(paramInt2, false);
        cb.a(e, true);
      }
      i1 += 1;
    }
    a.b(paramInt1, paramInt2);
    requestLayout();
  }
  
  public void e(View paramView) {}
  
  Rect f(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    if (!c) {
      return b;
    }
    Rect localRect = b;
    localRect.set(0, 0, 0, 0);
    int i2 = q.size();
    int i1 = 0;
    while (i1 < i2)
    {
      m.set(0, 0, 0, 0);
      ((bp)q.get(i1)).a(m, paramView, this, e);
      left += m.left;
      top += m.top;
      right += m.right;
      bottom += m.bottom;
      i1 += 1;
    }
    c = false;
    return localRect;
  }
  
  void f()
  {
    if (F != null) {
      return;
    }
    F = new aa(getContext());
    if (k)
    {
      F.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    F.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void f(int paramInt1, int paramInt2)
  {
    int i2 = c.c();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = c.c(i1);
      ce localce = b(localView);
      if ((localce == null) || (localce.c())) {}
      for (;;)
      {
        i1 += 1;
        break;
        if ((b >= paramInt1) && (b < paramInt1 + paramInt2))
        {
          localce.a(2);
          if (A()) {
            localce.a(64);
          }
          getLayoutParamsc = true;
        }
      }
    }
    a.c(paramInt1, paramInt2);
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    Object localObject2 = o.d(paramView, paramInt);
    if (localObject2 != null) {}
    Object localObject1;
    do
    {
      return (View)localObject2;
      localObject2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (n != null)
        {
          localObject1 = localObject2;
          if (o != null)
          {
            b();
            localObject1 = o.a(paramView, paramInt, a, e);
            a(false);
          }
        }
      }
      localObject2 = localObject1;
    } while (localObject1 != null);
    return super.focusSearch(paramView, paramInt);
  }
  
  void g()
  {
    if (H != null) {
      return;
    }
    H = new aa(getContext());
    if (k)
    {
      H.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    H.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public void g(int paramInt1, int paramInt2) {}
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (o == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return o.a();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (o == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return o.a(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (o == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return o.a(paramLayoutParams);
  }
  
  public bi getAdapter()
  {
    return n;
  }
  
  public int getBaseline()
  {
    if (o != null) {
      return o.p();
    }
    return super.getBaseline();
  }
  
  public cf getCompatAccessibilityDelegate()
  {
    return ab;
  }
  
  public bl getItemAnimator()
  {
    return d;
  }
  
  public br getLayoutManager()
  {
    return o;
  }
  
  public bu getRecycledViewPool()
  {
    return a.f();
  }
  
  public int getScrollState()
  {
    return I;
  }
  
  void h()
  {
    H = null;
    F = null;
    G = null;
    E = null;
  }
  
  void h(int paramInt1, int paramInt2)
  {
    int i1 = getScrollX();
    int i2 = getScrollY();
    onScrollChanged(i1, i2, i1, i2);
    g(paramInt1, paramInt2);
    if (U != null) {
      U.a(this, paramInt1, paramInt2);
    }
    if (V != null)
    {
      i1 = V.size() - 1;
      while (i1 >= 0)
      {
        ((bt)V.get(i1)).a(this, paramInt1, paramInt2);
        i1 -= 1;
      }
    }
  }
  
  boolean i()
  {
    return D > 0;
  }
  
  void j()
  {
    if (n == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (o == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    e.d.clear();
    b();
    x();
    D();
    Object localObject2 = e;
    Object localObject1;
    int i2;
    int i1;
    if ((cb.b(e)) && (g) && (A()))
    {
      localObject1 = new com.yelp.android.e.a();
      c = ((com.yelp.android.e.a)localObject1);
      g = false;
      f = false;
      cb.b(e, cb.a(e));
      e.e = n.a();
      a(ac);
      if (!cb.b(e)) {
        break label302;
      }
      e.a.clear();
      e.b.clear();
      i2 = c.b();
      i1 = 0;
      label193:
      if (i1 >= i2) {
        break label302;
      }
      localObject1 = b(c.b(i1));
      if ((!((ce)localObject1).c()) && ((!((ce)localObject1).l()) || (n.b()))) {
        break label250;
      }
    }
    for (;;)
    {
      i1 += 1;
      break label193;
      localObject1 = null;
      break;
      label250:
      localObject2 = a;
      e.a.put(localObject1, new bq((ce)localObject1, ((View)localObject2).getLeft(), ((View)localObject2).getTop(), ((View)localObject2).getRight(), ((View)localObject2).getBottom()));
    }
    label302:
    long l1;
    boolean bool;
    if (cb.a(e))
    {
      l();
      if (e.c != null)
      {
        i2 = c.b();
        i1 = 0;
        while (i1 < i2)
        {
          localObject1 = b(c.b(i1));
          if ((((ce)localObject1).n()) && (!((ce)localObject1).p()) && (!((ce)localObject1).c()))
          {
            l1 = a((ce)localObject1);
            e.c.put(Long.valueOf(l1), localObject1);
            e.a.remove(localObject1);
          }
          i1 += 1;
        }
      }
      bool = cb.c(e);
      cb.a(e, false);
      o.c(a, e);
      cb.a(e, bool);
      localObject2 = new com.yelp.android.e.a();
      i1 = 0;
      label476:
      if (i1 < c.b())
      {
        localObject1 = c.b(i1);
        if (!b((View)localObject1).c()) {}
      }
    }
    label508:
    label517:
    label739:
    label749:
    label905:
    label911:
    label1007:
    label1264:
    label1447:
    label1515:
    label1561:
    label1682:
    label1691:
    for (;;)
    {
      i1 += 1;
      break label476;
      i2 = 0;
      if (i2 < e.a.size()) {
        if (e.a.b(i2)).a != localObject1) {}
      }
      for (i2 = 1;; i2 = 0)
      {
        if (i2 != 0) {
          break label1691;
        }
        ((com.yelp.android.e.a)localObject2).put(localObject1, new Rect(((View)localObject1).getLeft(), ((View)localObject1).getTop(), ((View)localObject1).getRight(), ((View)localObject1).getBottom()));
        break label508;
        i2 += 1;
        break label517;
        m();
        b.c();
        for (;;)
        {
          e.e = n.a();
          cb.b(e, 0);
          cb.b(e, false);
          o.c(a, e);
          cb.a(e, false);
          j = null;
          localObject1 = e;
          Object localObject3;
          if ((cb.b(e)) && (d != null))
          {
            bool = true;
            cb.c((cb)localObject1, bool);
            if (!cb.b(e)) {
              break label1561;
            }
            if (e.c == null) {
              break label905;
            }
            localObject1 = new com.yelp.android.e.a();
            i2 = c.b();
            i1 = 0;
            if (i1 >= i2) {
              break label1007;
            }
            localObject3 = b(c.b(i1));
            if (!((ce)localObject3).c()) {
              break label911;
            }
          }
          Object localObject4;
          for (;;)
          {
            i1 += 1;
            break label749;
            m();
            b.e();
            if (e.c == null) {
              break label1682;
            }
            i2 = c.b();
            i1 = 0;
            while (i1 < i2)
            {
              localObject1 = b(c.b(i1));
              if ((((ce)localObject1).n()) && (!((ce)localObject1).p()) && (!((ce)localObject1).c()))
              {
                l1 = a((ce)localObject1);
                e.c.put(Long.valueOf(l1), localObject1);
                e.a.remove(localObject1);
              }
              i1 += 1;
            }
            bool = false;
            break;
            localObject1 = null;
            break label739;
            localObject4 = a;
            l1 = a((ce)localObject3);
            if ((localObject1 != null) && (e.c.get(Long.valueOf(l1)) != null)) {
              ((com.yelp.android.e.a)localObject1).put(Long.valueOf(l1), localObject3);
            } else {
              e.b.put(localObject3, new bq((ce)localObject3, ((View)localObject4).getLeft(), ((View)localObject4).getTop(), ((View)localObject4).getRight(), ((View)localObject4).getBottom()));
            }
          }
          a((com.yelp.android.e.a)localObject2);
          i1 = e.a.size() - 1;
          while (i1 >= 0)
          {
            localObject3 = (ce)e.a.b(i1);
            if (!e.b.containsKey(localObject3))
            {
              localObject3 = (bq)e.a.c(i1);
              e.a.d(i1);
              localObject4 = a.a;
              a.d(a);
              a((bq)localObject3);
            }
            i1 -= 1;
          }
          i1 = e.b.size();
          if (i1 > 0)
          {
            i1 -= 1;
            if (i1 >= 0)
            {
              localObject4 = (ce)e.b.b(i1);
              bq localbq = (bq)e.b.c(i1);
              if ((e.a.isEmpty()) || (!e.a.containsKey(localObject4)))
              {
                e.b.d(i1);
                if (localObject2 == null) {
                  break label1264;
                }
              }
              for (localObject3 = (Rect)((com.yelp.android.e.a)localObject2).get(a);; localObject3 = null)
              {
                a((ce)localObject4, (Rect)localObject3, b, c);
                i1 -= 1;
                break;
              }
            }
          }
          i2 = e.b.size();
          i1 = 0;
          while (i1 < i2)
          {
            localObject2 = (ce)e.b.b(i1);
            localObject3 = (bq)e.b.c(i1);
            localObject4 = (bq)e.a.get(localObject2);
            if ((localObject4 != null) && (localObject3 != null) && ((b != b) || (c != c)))
            {
              ((ce)localObject2).a(false);
              if (d.a((ce)localObject2, b, c, b, c)) {
                B();
              }
            }
            i1 += 1;
          }
          if (e.c != null)
          {
            i1 = e.c.size();
            i1 -= 1;
            if (i1 < 0) {
              break label1561;
            }
            l1 = ((Long)e.c.b(i1)).longValue();
            localObject2 = (ce)e.c.get(Long.valueOf(l1));
            localObject3 = a;
            if (!((ce)localObject2).c()) {
              break label1515;
            }
          }
          for (;;)
          {
            i1 -= 1;
            break label1447;
            i1 = 0;
            break;
            if ((bv.a(a) != null) && (bv.a(a).contains(localObject2))) {
              a((ce)localObject2, (ce)((com.yelp.android.e.a)localObject1).get(Long.valueOf(l1)));
            }
          }
          a(false);
          o.b(a);
          cb.c(e, e.e);
          C = false;
          cb.c(e, false);
          cb.d(e, false);
          y();
          br.a(o, false);
          if (bv.a(a) != null) {
            bv.a(a).clear();
          }
          e.c = null;
          if (!k(ac[0], ac[1])) {
            break;
          }
          h(0, 0);
          return;
          localObject2 = null;
        }
      }
    }
  }
  
  void k()
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      c.c(i1).getLayoutParams()).c = true;
      i1 += 1;
    }
    a.j();
  }
  
  void l()
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ce localce = b(c.c(i1));
      if (!localce.c()) {
        localce.b();
      }
      i1 += 1;
    }
  }
  
  void m()
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ce localce = b(c.c(i1));
      if (!localce.c()) {
        localce.a();
      }
      i1 += 1;
    }
    a.i();
  }
  
  void n()
  {
    int i2 = c.b();
    int i1 = 0;
    if (i1 < i2)
    {
      ce localce = b(c.b(i1));
      if ((localce == null) || (localce.c())) {}
      for (;;)
      {
        i1 += 1;
        break;
        if ((localce.p()) || (localce.l()))
        {
          requestLayout();
        }
        else if (localce.m())
        {
          int i3 = n.a(b);
          if (localce.f() != i3) {
            break label140;
          }
          if ((!localce.n()) || (!A())) {
            n.b(localce, b);
          } else {
            requestLayout();
          }
        }
      }
      label140:
      requestLayout();
    }
  }
  
  void o()
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ce localce = b(c.c(i1));
      if ((localce != null) && (!localce.c())) {
        localce.a(6);
      }
      i1 += 1;
    }
    k();
    a.h();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    D = 0;
    t = true;
    v = false;
    if (o != null) {
      o.c(this);
    }
    aa = false;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (d != null) {
      d.c();
    }
    v = false;
    c();
    t = false;
    if (o != null) {
      o.b(this, a);
    }
    removeCallbacks(ad);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i2 = q.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((bp)q.get(i1)).a(paramCanvas, this, e);
      i1 += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (o == null) {}
    label100:
    label103:
    for (;;)
    {
      return false;
      if (((ba.d(paramMotionEvent) & 0x2) != 0) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        if (o.e())
        {
          f1 = ba.e(paramMotionEvent, 9);
          if (!o.d()) {
            break label100;
          }
        }
        for (float f2 = ba.e(paramMotionEvent, 10);; f2 = 0.0F)
        {
          if ((f1 == 0.0F) && (f2 == 0.0F)) {
            break label103;
          }
          float f3 = getScrollFactor();
          scrollBy((int)(f2 * f3), (int)(f1 * f3));
          return false;
          f1 = 0.0F;
          break;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = -1;
    if (a(paramMotionEvent))
    {
      w();
      return true;
    }
    boolean bool1 = o.d();
    boolean bool2 = o.e();
    if (K == null) {
      K = VelocityTracker.obtain();
    }
    K.addMovement(paramMotionEvent);
    int i2 = ba.a(paramMotionEvent);
    int i1 = ba.b(paramMotionEvent);
    label112:
    int i4;
    int i5;
    switch (i2)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
    case 2: 
      for (;;)
      {
        if (I != 1)
        {
          return false;
          J = ba.b(paramMotionEvent, 0);
          i1 = (int)(paramMotionEvent.getX() + 0.5F);
          N = i1;
          L = i1;
          i1 = (int)(paramMotionEvent.getY() + 0.5F);
          O = i1;
          M = i1;
          if (I == 2)
          {
            getParent().requestDisallowInterceptTouchEvent(true);
            setScrollState(1);
            continue;
            J = ba.b(paramMotionEvent, i1);
            i2 = (int)(ba.c(paramMotionEvent, i1) + 0.5F);
            N = i2;
            L = i2;
            i1 = (int)(ba.d(paramMotionEvent, i1) + 0.5F);
            O = i1;
            M = i1;
            continue;
            i2 = ba.a(paramMotionEvent, J);
            if (i2 < 0)
            {
              Log.e("RecyclerView", "Error processing scroll; pointer index for id " + J + " not found. Did any MotionEvents get skipped?");
              return false;
            }
            i1 = (int)(ba.c(paramMotionEvent, i2) + 0.5F);
            i2 = (int)(ba.d(paramMotionEvent, i2) + 0.5F);
            if (I != 1)
            {
              i1 -= L;
              i4 = i2 - M;
              if ((!bool1) || (Math.abs(i1) <= P)) {
                break label491;
              }
              i2 = L;
              i5 = P;
              if (i1 < 0)
              {
                i1 = -1;
                label380:
                N = (i1 * i5 + i2);
              }
            }
          }
        }
      }
    }
    label461:
    label491:
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2)
      {
        i2 = i1;
        if (Math.abs(i4) > P)
        {
          i2 = M;
          i5 = P;
          if (i4 >= 0) {
            break label461;
          }
        }
      }
      for (i1 = i3;; i1 = 1)
      {
        O = (i2 + i1 * i5);
        i2 = 1;
        if (i2 == 0) {
          break;
        }
        setScrollState(1);
        break;
        i1 = 1;
        break label380;
      }
      c(paramMotionEvent);
      break label112;
      K.clear();
      break label112;
      w();
      break label112;
      break;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b();
    h.a("RV OnLayout");
    j();
    h.a();
    a(false);
    v = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (z)
    {
      b();
      D();
      if (cb.a(e))
      {
        cb.b(e, true);
        z = false;
        a(false);
      }
    }
    else
    {
      if (n == null) {
        break label107;
      }
      e.e = n.a();
      label65:
      if (o != null) {
        break label118;
      }
      j(paramInt1, paramInt2);
    }
    for (;;)
    {
      cb.b(e, false);
      return;
      b.e();
      cb.b(e, false);
      break;
      label107:
      e.e = 0;
      break label65;
      label118:
      o.a(a, e, paramInt1, paramInt2);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    j = ((RecyclerView.SavedState)paramParcelable);
    super.onRestoreInstanceState(j.getSuperState());
    if ((o != null) && (j.mLayoutState != null)) {
      o.a(j.mLayoutState);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    RecyclerView.SavedState localSavedState = new RecyclerView.SavedState(super.onSaveInstanceState());
    if (j != null)
    {
      RecyclerView.SavedState.access$1300(localSavedState, j);
      return localSavedState;
    }
    if (o != null)
    {
      mLayoutState = o.c();
      return localSavedState;
    }
    mLayoutState = null;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      h();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i4 = -1;
    int i3 = 0;
    if (b(paramMotionEvent))
    {
      w();
      return true;
    }
    boolean bool1 = o.d();
    boolean bool2 = o.e();
    if (K == null) {
      K = VelocityTracker.obtain();
    }
    K.addMovement(paramMotionEvent);
    int i2 = ba.a(paramMotionEvent);
    int i1 = ba.b(paramMotionEvent);
    int i5;
    int i6;
    int i7;
    int i8;
    switch (i2)
    {
    case 4: 
    default: 
      return true;
    case 0: 
      J = ba.b(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      N = i1;
      L = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      O = i1;
      M = i1;
      return true;
    case 5: 
      J = ba.b(paramMotionEvent, i1);
      i2 = (int)(ba.c(paramMotionEvent, i1) + 0.5F);
      N = i2;
      L = i2;
      i1 = (int)(ba.d(paramMotionEvent, i1) + 0.5F);
      O = i1;
      M = i1;
      return true;
    case 2: 
      i1 = ba.a(paramMotionEvent, J);
      if (i1 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + J + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i5 = (int)(ba.c(paramMotionEvent, i1) + 0.5F);
      i6 = (int)(ba.d(paramMotionEvent, i1) + 0.5F);
      if (I != 1)
      {
        i1 = i5 - L;
        i7 = i6 - M;
        if ((!bool1) || (Math.abs(i1) <= P)) {
          break label688;
        }
        i2 = L;
        i8 = P;
        if (i1 >= 0) {
          break label555;
        }
        i1 = -1;
        N = (i1 * i8 + i2);
      }
      break;
    }
    label440:
    label555:
    label561:
    label567:
    label677:
    label688:
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2)
      {
        i2 = i1;
        if (Math.abs(i7) > P)
        {
          i2 = M;
          i8 = P;
          if (i7 >= 0) {
            break label561;
          }
          i1 = i4;
          O = (i2 + i1 * i8);
          i2 = 1;
        }
      }
      if (i2 != 0) {
        setScrollState(1);
      }
      if (I == 1)
      {
        i1 = N;
        i4 = O;
        if (!bool1) {
          break label567;
        }
      }
      for (i1 = -(i5 - i1);; i1 = 0)
      {
        i2 = i3;
        if (bool2) {
          i2 = -(i6 - i4);
        }
        if (a(i1, i2, true, i5, i6)) {
          getParent().requestDisallowInterceptTouchEvent(true);
        }
        N = i5;
        O = i6;
        return true;
        i1 = 1;
        break;
        i1 = 1;
        break label440;
      }
      c(paramMotionEvent);
      return true;
      K.computeCurrentVelocity(1000, R);
      float f1;
      if (bool1)
      {
        f1 = -bz.a(K, J);
        if (!bool2) {
          break label677;
        }
      }
      for (float f2 = -bz.b(K, J);; f2 = 0.0F)
      {
        if (((f1 == 0.0F) && (f2 == 0.0F)) || (!b((int)f1, (int)f2))) {
          setScrollState(0);
        }
        K.clear();
        v();
        return true;
        f1 = 0.0F;
        break;
      }
      w();
      return true;
    }
  }
  
  public boolean p()
  {
    return (!v) || (C) || (b.d());
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    ce localce = b(paramView);
    if (localce != null)
    {
      if (!localce.q()) {
        break label32;
      }
      localce.k();
    }
    label32:
    while (localce.c())
    {
      h(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localce);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    Object localObject;
    if ((!o.a(this, e, paramView1, paramView2)) && (paramView2 != null))
    {
      m.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
      localObject = paramView2.getLayoutParams();
      if ((localObject instanceof RecyclerView.LayoutParams))
      {
        localObject = (RecyclerView.LayoutParams)localObject;
        if (!c)
        {
          localObject = b;
          Rect localRect = m;
          left -= left;
          localRect = m;
          right += right;
          localRect = m;
          top -= top;
          localRect = m;
          int i1 = bottom;
          bottom = (bottom + i1);
        }
      }
      offsetDescendantRectToMyCoords(paramView2, m);
      offsetRectIntoDescendantCoords(paramView1, m);
      localObject = m;
      if (v) {
        break label215;
      }
    }
    label215:
    for (boolean bool = true;; bool = false)
    {
      requestChildRectangleOnScreen(paramView1, (Rect)localObject, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return o.a(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestLayout()
  {
    if (!w)
    {
      super.requestLayout();
      return;
    }
    x = true;
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (o == null) {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    boolean bool1;
    boolean bool2;
    do
    {
      return;
      bool1 = o.d();
      bool2 = o.e();
    } while ((!bool1) && (!bool2));
    if (bool1) {
      if (!bool2) {
        break label69;
      }
    }
    for (;;)
    {
      a(paramInt1, paramInt2, false, 0, 0);
      return;
      paramInt1 = 0;
      break;
      label69:
      paramInt2 = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (a(paramAccessibilityEvent)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegateCompat(cf paramcf)
  {
    ab = paramcf;
    android.support.v4.view.ce.a(this, ab);
  }
  
  public void setAdapter(bi parambi)
  {
    a(parambi, false, true);
    requestLayout();
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != k) {
      h();
    }
    k = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (v) {
      requestLayout();
    }
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public void setItemAnimator(bl parambl)
  {
    if (d != null)
    {
      d.c();
      d.a(null);
    }
    d = parambl;
    if (d != null) {
      d.a(W);
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    a.a(paramInt);
  }
  
  public void setLayoutManager(br parambr)
  {
    if (parambr == o) {
      return;
    }
    if (o != null)
    {
      if (t) {
        o.b(this, a);
      }
      o.b(null);
    }
    a.a();
    c.a();
    o = parambr;
    if (parambr != null)
    {
      if (r != null) {
        throw new IllegalArgumentException("LayoutManager " + parambr + " is already attached to a RecyclerView: " + r);
      }
      o.b(this);
      if (t) {
        o.c(this);
      }
    }
    requestLayout();
  }
  
  @Deprecated
  public void setOnScrollListener(bt parambt)
  {
    U = parambt;
  }
  
  public void setRecycledViewPool(bu parambu)
  {
    a.a(parambu);
  }
  
  public void setRecyclerListener(bw parambw)
  {
    p = parambw;
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
    case 0: 
      P = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    P = cx.a(localViewConfiguration);
  }
  
  public void setViewCacheExtension(cc paramcc)
  {
    a.a(paramcc);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */