package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.content.d;
import android.support.v4.view.ai;
import android.support.v4.view.av;
import android.support.v4.view.e;
import android.support.v4.view.g;
import android.support.v4.view.t;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.c;
import com.yelp.android.h.c.a;
import java.util.ArrayList;
import java.util.List;

public class DrawerLayout
  extends ViewGroup
  implements j
{
  static final c a;
  private static final int[] b;
  private static final boolean c;
  private static final boolean d;
  private Drawable A;
  private CharSequence B;
  private CharSequence C;
  private Object D;
  private boolean E;
  private Drawable F = null;
  private Drawable G = null;
  private Drawable H = null;
  private Drawable I = null;
  private final ArrayList<View> J;
  private final b e = new b();
  private float f;
  private int g;
  private int h = -1728053248;
  private float i;
  private Paint j = new Paint();
  private final ac k;
  private final ac l;
  private final g m;
  private final g n;
  private int o;
  private boolean p;
  private boolean q = true;
  private int r;
  private int s;
  private boolean t;
  private boolean u;
  private f v;
  private float w;
  private float x;
  private Drawable y;
  private Drawable z;
  
  static
  {
    boolean bool2 = true;
    b = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool1 = true;
      c = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label65;
      }
    }
    label65:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      d = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label70;
      }
      a = new d();
      return;
      bool1 = false;
      break;
    }
    label70:
    a = new e();
  }
  
  public DrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f1 = getResourcesgetDisplayMetricsdensity;
    g = ((int)(64.0F * f1 + 0.5F));
    float f2 = 400.0F * f1;
    m = new g(3);
    n = new g(5);
    k = ac.a(this, 1.0F, m);
    k.a(1);
    k.a(f2);
    m.a(k);
    l = ac.a(this, 1.0F, n);
    l.a(2);
    l.a(f2);
    n.a(l);
    setFocusableInTouchMode(true);
    ai.c(this, 1);
    ai.a(this, new a());
    av.a(this, false);
    if (ai.x(this))
    {
      a.a(this);
      y = a.a(paramContext);
    }
    f = (f1 * 10.0F);
    J = new ArrayList();
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (((!paramBoolean) && (!g(localView))) || ((paramBoolean) && (localView == paramView))) {
        ai.c(localView, 1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        ai.c(localView, 4);
      }
    }
  }
  
  private boolean a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable == null) || (!com.yelp.android.d.a.b(paramDrawable))) {
      return false;
    }
    com.yelp.android.d.a.b(paramDrawable, paramInt);
    return true;
  }
  
  static String c(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  private void f()
  {
    if (d) {
      return;
    }
    z = g();
    A = h();
  }
  
  private Drawable g()
  {
    int i1 = ai.h(this);
    if (i1 == 0)
    {
      if (F != null)
      {
        a(F, i1);
        return F;
      }
    }
    else if (G != null)
    {
      a(G, i1);
      return G;
    }
    return H;
  }
  
  private Drawable h()
  {
    int i1 = ai.h(this);
    if (i1 == 0)
    {
      if (G != null)
      {
        a(G, i1);
        return G;
      }
    }
    else if (F != null)
    {
      a(F, i1);
      return F;
    }
    return I;
  }
  
  private boolean i()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      if (getChildAtgetLayoutParamsc) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private boolean j()
  {
    return k() != null;
  }
  
  private View k()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((g(localView)) && (k(localView))) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  private static boolean m(View paramView)
  {
    boolean bool2 = false;
    paramView = paramView.getBackground();
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (paramView.getOpacity() == -1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private static boolean n(View paramView)
  {
    return (ai.e(paramView) != 4) && (ai.e(paramView) != 2);
  }
  
  public int a(View paramView)
  {
    int i1 = e(paramView);
    if (i1 == 3) {
      return r;
    }
    if (i1 == 5) {
      return s;
    }
    return 0;
  }
  
  View a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (getLayoutParamsd) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  public CharSequence a(int paramInt)
  {
    paramInt = e.a(paramInt, ai.h(this));
    if (paramInt == 3) {
      return B;
    }
    if (paramInt == 5) {
      return C;
    }
    return null;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    paramInt2 = e.a(paramInt2, ai.h(this));
    Object localObject;
    if (paramInt2 == 3)
    {
      r = paramInt1;
      if (paramInt1 != 0)
      {
        if (paramInt2 != 3) {
          break label74;
        }
        localObject = k;
        label33:
        ((ac)localObject).e();
      }
      switch (paramInt1)
      {
      }
    }
    label74:
    do
    {
      do
      {
        return;
        if (paramInt2 != 5) {
          break;
        }
        s = paramInt1;
        break;
        localObject = l;
        break label33;
        localObject = b(paramInt2);
      } while (localObject == null);
      h((View)localObject);
      return;
      localObject = b(paramInt2);
    } while (localObject == null);
    i((View)localObject);
  }
  
  void a(int paramInt1, int paramInt2, View paramView)
  {
    int i1 = 1;
    int i2 = k.a();
    int i3 = l.a();
    paramInt1 = i1;
    LayoutParams localLayoutParams;
    if (i2 != 1)
    {
      if (i3 == 1) {
        paramInt1 = i1;
      }
    }
    else if ((paramView != null) && (paramInt2 == 0))
    {
      localLayoutParams = (LayoutParams)paramView.getLayoutParams();
      if (b != 0.0F) {
        break label124;
      }
      b(paramView);
    }
    for (;;)
    {
      if (paramInt1 != o)
      {
        o = paramInt1;
        if (v != null) {
          v.a(paramInt1);
        }
      }
      return;
      if ((i2 == 2) || (i3 == 2))
      {
        paramInt1 = 2;
        break;
      }
      paramInt1 = 0;
      break;
      label124:
      if (b == 1.0F) {
        c(paramView);
      }
    }
  }
  
  void a(View paramView, float paramFloat)
  {
    if (v != null) {
      v.a(paramView, paramFloat);
    }
  }
  
  public void a(Object paramObject, boolean paramBoolean)
  {
    D = paramObject;
    E = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      setWillNotDraw(paramBoolean);
      requestLayout();
      return;
    }
  }
  
  void a(boolean paramBoolean)
  {
    int i5 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    while (i2 < i5)
    {
      View localView = getChildAt(i2);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      int i3 = i1;
      if (g(localView))
      {
        if ((paramBoolean) && (!c)) {
          i3 = i1;
        }
      }
      else
      {
        i2 += 1;
        i1 = i3;
        continue;
      }
      int i4 = localView.getWidth();
      if (a(localView, 3)) {
        i1 |= k.a(localView, -i4, localView.getTop());
      }
      for (;;)
      {
        c = false;
        i4 = i1;
        break;
        i1 |= l.a(localView, getWidth(), localView.getTop());
      }
    }
    m.a();
    n.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  boolean a(View paramView, int paramInt)
  {
    return (e(paramView) & paramInt) == paramInt;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i3 = 0;
    if (getDescendantFocusability() == 393216) {
      return;
    }
    int i4 = getChildCount();
    int i1 = 0;
    int i2 = 0;
    View localView;
    if (i1 < i4)
    {
      localView = getChildAt(i1);
      if (g(localView)) {
        if (j(localView))
        {
          i2 = 1;
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
      for (;;)
      {
        i1 += 1;
        break;
        J.add(localView);
      }
    }
    if (i2 == 0)
    {
      i2 = J.size();
      i1 = i3;
      while (i1 < i2)
      {
        localView = (View)J.get(i1);
        if (localView.getVisibility() == 0) {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
        i1 += 1;
      }
    }
    J.clear();
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((a() != null) || (g(paramView))) {
      ai.c(paramView, 4);
    }
    for (;;)
    {
      if (!c) {
        ai.a(paramView, e);
      }
      return;
      ai.c(paramView, 1);
    }
  }
  
  View b(int paramInt)
  {
    int i1 = e.a(paramInt, ai.h(this));
    int i2 = getChildCount();
    paramInt = 0;
    while (paramInt < i2)
    {
      View localView = getChildAt(paramInt);
      if ((e(localView) & 0x7) == (i1 & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  public void b()
  {
    a(false);
  }
  
  void b(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (d)
    {
      d = false;
      if (v != null) {
        v.b(paramView);
      }
      a(paramView, false);
      if (hasWindowFocus())
      {
        paramView = getRootView();
        if (paramView != null) {
          paramView.sendAccessibilityEvent(32);
        }
      }
    }
  }
  
  void b(View paramView, float paramFloat)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (paramFloat == b) {
      return;
    }
    b = paramFloat;
    a(paramView, paramFloat);
  }
  
  void c()
  {
    int i1 = 0;
    if (!u)
    {
      long l1 = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
      int i2 = getChildCount();
      while (i1 < i2)
      {
        getChildAt(i1).dispatchTouchEvent(localMotionEvent);
        i1 += 1;
      }
      localMotionEvent.recycle();
      u = true;
    }
  }
  
  void c(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!d)
    {
      d = true;
      if (v != null) {
        v.a(paramView);
      }
      a(paramView, true);
      if (hasWindowFocus()) {
        sendAccessibilityEvent(32);
      }
      paramView.requestFocus();
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    int i2 = getChildCount();
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 < i2)
    {
      f1 = Math.max(f1, getChildAtgetLayoutParamsb);
      i1 += 1;
    }
    i = f1;
    if ((k.a(true) | l.a(true))) {
      ai.d(this);
    }
  }
  
  float d(View paramView)
  {
    return getLayoutParamsb;
  }
  
  public void d(int paramInt)
  {
    View localView = b(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + c(paramInt));
    }
    h(localView);
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i7 = getHeight();
    boolean bool1 = f(paramView);
    int i3 = 0;
    int i5 = 0;
    int i1 = getWidth();
    int i8 = paramCanvas.save();
    int i2 = i1;
    int i4;
    View localView;
    if (bool1)
    {
      int i9 = getChildCount();
      i4 = 0;
      i3 = i5;
      for (;;)
      {
        if (i4 < i9)
        {
          localView = getChildAt(i4);
          if ((localView != paramView) && (localView.getVisibility() == 0) && (m(localView)) && (g(localView)))
          {
            if (localView.getHeight() < i7)
            {
              i5 = i3;
              i2 = i1;
              i4 += 1;
              i1 = i2;
              i3 = i5;
              continue;
            }
            if (a(localView, 3))
            {
              i2 = localView.getRight();
              if (i2 <= i3) {
                break label534;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      i5 = i2;
      i2 = i1;
      break;
      int i6 = localView.getLeft();
      i2 = i6;
      i5 = i3;
      if (i6 < i1) {
        break;
      }
      i2 = i1;
      i5 = i3;
      break;
      paramCanvas.clipRect(i3, 0, i1, getHeight());
      i2 = i1;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i8);
      if ((i > 0.0F) && (bool1))
      {
        i1 = (int)(((h & 0xFF000000) >>> 24) * i);
        i4 = h;
        j.setColor(i1 << 24 | i4 & 0xFFFFFF);
        paramCanvas.drawRect(i3, 0.0F, i2, getHeight(), j);
      }
      do
      {
        return bool2;
        if ((z != null) && (a(paramView, 3)))
        {
          i1 = z.getIntrinsicWidth();
          i2 = paramView.getRight();
          i3 = k.b();
          f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
          z.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
          z.setAlpha((int)(255.0F * f1));
          z.draw(paramCanvas);
          return bool2;
        }
      } while ((A == null) || (!a(paramView, 5)));
      i1 = A.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = l.b();
      float f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      A.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      A.setAlpha((int)(255.0F * f1));
      A.draw(paramCanvas);
      return bool2;
      label534:
      i2 = i3;
    }
  }
  
  int e(View paramView)
  {
    return e.a(getLayoutParamsa, ai.h(this));
  }
  
  public void e(int paramInt)
  {
    View localView = b(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + c(paramInt));
    }
    i(localView);
  }
  
  public boolean f(int paramInt)
  {
    View localView = b(paramInt);
    if (localView != null) {
      return k(localView);
    }
    return false;
  }
  
  boolean f(View paramView)
  {
    return getLayoutParamsa == 0;
  }
  
  boolean g(View paramView)
  {
    return (e.a(getLayoutParamsa, ai.h(paramView)) & 0x7) != 0;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1, -1);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LayoutParams)) {
      return new LayoutParams((LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public float getDrawerElevation()
  {
    if (d) {
      return f;
    }
    return 0.0F;
  }
  
  public Drawable getStatusBarBackgroundDrawable()
  {
    return y;
  }
  
  public void h(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (q)
    {
      LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
      b = 1.0F;
      d = true;
      a(paramView, true);
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        k.a(paramView, 0, paramView.getTop());
      } else {
        l.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  public void i(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (q)
    {
      paramView = (LayoutParams)paramView.getLayoutParams();
      b = 0.0F;
      d = false;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        k.a(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        l.a(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  public boolean j(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsd;
  }
  
  public boolean k(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsb > 0.0F;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    q = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((E) && (y != null))
    {
      int i1 = a.a(D);
      if (i1 > 0)
      {
        y.setBounds(0, 0, getWidth(), i1);
        y.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i1 = t.a(paramMotionEvent);
    boolean bool2 = k.a(paramMotionEvent);
    boolean bool3 = l.a(paramMotionEvent);
    switch (i1)
    {
    default: 
      i1 = 0;
      if (((bool2 | bool3)) || (i1 != 0) || (i()) || (u)) {
        bool1 = true;
      }
      return bool1;
    case 0: 
      label63:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      w = f1;
      x = f2;
      if (i > 0.0F)
      {
        paramMotionEvent = k.d((int)f1, (int)f2);
        if ((paramMotionEvent == null) || (!f(paramMotionEvent))) {
          break;
        }
      }
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      t = false;
      u = false;
      break label63;
      if (!k.d(3)) {
        break;
      }
      m.a();
      n.a();
      i1 = 0;
      break label63;
      a(true);
      t = false;
      u = false;
      break;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (j()))
    {
      g.b(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = k();
      if ((paramKeyEvent != null) && (a(paramKeyEvent) == 0)) {
        b();
      }
      return paramKeyEvent != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    p = true;
    int i4 = paramInt3 - paramInt1;
    int i5 = getChildCount();
    paramInt3 = 0;
    if (paramInt3 < i5)
    {
      View localView = getChildAt(paramInt3);
      if (localView.getVisibility() == 8) {}
      LayoutParams localLayoutParams;
      for (;;)
      {
        paramInt3 += 1;
        break;
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (!f(localView)) {
          break label113;
        }
        localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
      }
      label113:
      int i6 = localView.getMeasuredWidth();
      int i7 = localView.getMeasuredHeight();
      int i1;
      float f1;
      label167:
      int i2;
      if (a(localView, 3))
      {
        paramInt1 = -i6;
        i1 = (int)(i6 * b) + paramInt1;
        f1 = (i6 + i1) / i6;
        if (f1 == b) {
          break label314;
        }
        i2 = 1;
        label181:
        switch (a & 0x70)
        {
        default: 
          localView.layout(i1, topMargin, i6 + i1, i7 + topMargin);
          label241:
          if (i2 != 0) {
            b(localView, f1);
          }
          if (b <= 0.0F) {
            break;
          }
        }
      }
      for (paramInt1 = 0; localView.getVisibility() != paramInt1; paramInt1 = 4)
      {
        localView.setVisibility(paramInt1);
        break;
        i1 = i4 - (int)(i6 * b);
        f1 = (i4 - i1) / i6;
        break label167;
        label314:
        i2 = 0;
        break label181;
        paramInt1 = paramInt4 - paramInt2;
        localView.layout(i1, paramInt1 - bottomMargin - localView.getMeasuredHeight(), i6 + i1, paramInt1 - bottomMargin);
        break label241;
        int i8 = paramInt4 - paramInt2;
        int i3 = (i8 - i7) / 2;
        if (i3 < topMargin) {
          paramInt1 = topMargin;
        }
        for (;;)
        {
          localView.layout(i1, paramInt1, i6 + i1, i7 + paramInt1);
          break;
          paramInt1 = i3;
          if (i3 + i7 > i8 - bottomMargin) {
            paramInt1 = i8 - bottomMargin - i7;
          }
        }
      }
    }
    p = false;
    q = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = 300;
    int i6 = View.MeasureSpec.getMode(paramInt1);
    int i5 = View.MeasureSpec.getMode(paramInt2);
    int i2 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    int i1;
    label81:
    label105:
    label120:
    View localView;
    if (i6 == 1073741824)
    {
      i1 = i2;
      if (i5 == 1073741824) {}
    }
    else
    {
      if (!isInEditMode()) {
        break label191;
      }
      if (i6 == Integer.MIN_VALUE)
      {
        i1 = i2;
        if (i5 != Integer.MIN_VALUE) {
          break label169;
        }
        i2 = i4;
        i3 = i1;
        setMeasuredDimension(i3, i2);
        if ((D == null) || (!ai.x(this))) {
          break label202;
        }
        i1 = 1;
        i5 = ai.h(this);
        i6 = getChildCount();
        i4 = 0;
        if (i4 >= i6) {
          return;
        }
        localView = getChildAt(i4);
        if (localView.getVisibility() != 8) {
          break label207;
        }
      }
    }
    for (;;)
    {
      i4 += 1;
      break label120;
      i1 = i2;
      if (i6 != 0) {
        break;
      }
      i1 = 300;
      break;
      label169:
      i2 = i3;
      i3 = i1;
      if (i5 == 0) {
        break label81;
      }
      i2 = i4;
      i3 = i1;
      break label81;
      label191:
      throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
      label202:
      i1 = 0;
      break label105;
      label207:
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (i1 != 0)
      {
        i7 = e.a(a, i5);
        if (!ai.x(localView)) {
          break label314;
        }
        a.a(localView, D, i7);
      }
      for (;;)
      {
        if (!f(localView)) {
          break label333;
        }
        localView.measure(View.MeasureSpec.makeMeasureSpec(i3 - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - topMargin - bottomMargin, 1073741824));
        break;
        label314:
        a.a(localLayoutParams, D, i7);
      }
      label333:
      if (!g(localView)) {
        break label497;
      }
      if ((d) && (ai.u(localView) != f)) {
        ai.h(localView, f);
      }
      int i7 = e(localView) & 0x7;
      if ((0x0 & i7) != 0) {
        throw new IllegalStateException("Child drawer has absolute gravity " + c(i7) + " but this " + "DrawerLayout" + " already has a " + "drawer view along that edge");
      }
      localView.measure(getChildMeasureSpec(paramInt1, g + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
    }
    label497:
    throw new IllegalStateException("Child " + localView + " at index " + i4 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a != 0)
    {
      View localView = b(a);
      if (localView != null) {
        h(localView);
      }
    }
    a(b, 3);
    a(c, 5);
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    f();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    View localView = a();
    if (localView != null) {
      a = getLayoutParamsa;
    }
    b = r;
    c = s;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    k.b(paramMotionEvent);
    l.b(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return true;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      w = f1;
      x = f2;
      t = false;
      u = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = k.d((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (f(paramMotionEvent)))
      {
        f2 -= w;
        f1 -= x;
        int i1 = k.d();
        if (f2 * f2 + f1 * f1 < i1 * i1)
        {
          paramMotionEvent = a();
          if (paramMotionEvent != null) {
            if (a(paramMotionEvent) == 2) {
              bool = true;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      a(bool);
      t = false;
      return true;
      bool = false;
      continue;
      a(true);
      t = false;
      u = false;
      return true;
      bool = true;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    t = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public void requestLayout()
  {
    if (!p) {
      super.requestLayout();
    }
  }
  
  public void setDrawerElevation(float paramFloat)
  {
    f = paramFloat;
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (g(localView)) {
        ai.h(localView, f);
      }
      i1 += 1;
    }
  }
  
  public void setDrawerListener(f paramf)
  {
    v = paramf;
  }
  
  public void setDrawerLockMode(int paramInt)
  {
    a(paramInt, 3);
    a(paramInt, 5);
  }
  
  public void setScrimColor(int paramInt)
  {
    h = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = d.a(getContext(), paramInt);; localDrawable = null)
    {
      y = localDrawable;
      invalidate();
      return;
    }
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    y = paramDrawable;
    invalidate();
  }
  
  public void setStatusBarBackgroundColor(int paramInt)
  {
    y = new ColorDrawable(paramInt);
    invalidate();
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public int a = 0;
    float b;
    boolean c;
    boolean d;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, DrawerLayout.d());
      a = paramContext.getInt(0, 0);
      paramContext.recycle();
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
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  protected static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public DrawerLayout.SavedState a(Parcel paramAnonymousParcel)
      {
        return new DrawerLayout.SavedState(paramAnonymousParcel);
      }
      
      public DrawerLayout.SavedState[] a(int paramAnonymousInt)
      {
        return new DrawerLayout.SavedState[paramAnonymousInt];
      }
    };
    int a = 0;
    int b = 0;
    int c = 0;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
    }
  }
  
  class a
    extends android.support.v4.view.a
  {
    private final Rect c = new Rect();
    
    a() {}
    
    private void a(c paramc, ViewGroup paramViewGroup)
    {
      int j = paramViewGroup.getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = paramViewGroup.getChildAt(i);
        if (DrawerLayout.l(localView)) {
          paramc.b(localView);
        }
        i += 1;
      }
    }
    
    private void a(c paramc1, c paramc2)
    {
      Rect localRect = c;
      paramc2.a(localRect);
      paramc1.b(localRect);
      paramc2.c(localRect);
      paramc1.d(localRect);
      paramc1.c(paramc2.h());
      paramc1.a(paramc2.p());
      paramc1.b(paramc2.q());
      paramc1.d(paramc2.s());
      paramc1.h(paramc2.m());
      paramc1.f(paramc2.k());
      paramc1.a(paramc2.f());
      paramc1.b(paramc2.g());
      paramc1.d(paramc2.i());
      paramc1.e(paramc2.j());
      paramc1.g(paramc2.l());
      paramc1.a(paramc2.b());
    }
    
    public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.a(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
    }
    
    public void a(View paramView, c paramc)
    {
      if (DrawerLayout.e()) {
        super.a(paramView, paramc);
      }
      for (;;)
      {
        paramc.b(DrawerLayout.class.getName());
        paramc.a(false);
        paramc.b(false);
        paramc.a(c.a.a);
        paramc.a(c.a.b);
        return;
        c localc = c.a(paramc);
        super.a(paramView, localc);
        paramc.a(paramView);
        ViewParent localViewParent = ai.i(paramView);
        if ((localViewParent instanceof View)) {
          paramc.c((View)localViewParent);
        }
        a(paramc, localc);
        localc.t();
        a(paramc, (ViewGroup)paramView);
      }
    }
    
    public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if ((DrawerLayout.e()) || (DrawerLayout.l(paramView))) {
        return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
      }
      return false;
    }
    
    public boolean d(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if (paramAccessibilityEvent.getEventType() == 32)
      {
        paramView = paramAccessibilityEvent.getText();
        paramAccessibilityEvent = DrawerLayout.a(DrawerLayout.this);
        if (paramAccessibilityEvent != null)
        {
          int i = e(paramAccessibilityEvent);
          paramAccessibilityEvent = a(i);
          if (paramAccessibilityEvent != null) {
            paramView.add(paramAccessibilityEvent);
          }
        }
        return true;
      }
      return super.d(paramView, paramAccessibilityEvent);
    }
  }
  
  final class b
    extends android.support.v4.view.a
  {
    b() {}
    
    public void a(View paramView, c paramc)
    {
      super.a(paramView, paramc);
      if (!DrawerLayout.l(paramView)) {
        paramc.c(null);
      }
    }
  }
  
  static abstract interface c
  {
    public abstract int a(Object paramObject);
    
    public abstract Drawable a(Context paramContext);
    
    public abstract void a(View paramView);
    
    public abstract void a(View paramView, Object paramObject, int paramInt);
    
    public abstract void a(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt);
  }
  
  static class d
    implements DrawerLayout.c
  {
    public int a(Object paramObject)
    {
      return i.a(paramObject);
    }
    
    public Drawable a(Context paramContext)
    {
      return i.a(paramContext);
    }
    
    public void a(View paramView)
    {
      i.a(paramView);
    }
    
    public void a(View paramView, Object paramObject, int paramInt)
    {
      i.a(paramView, paramObject, paramInt);
    }
    
    public void a(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt)
    {
      i.a(paramMarginLayoutParams, paramObject, paramInt);
    }
  }
  
  static class e
    implements DrawerLayout.c
  {
    public int a(Object paramObject)
    {
      return 0;
    }
    
    public Drawable a(Context paramContext)
    {
      return null;
    }
    
    public void a(View paramView) {}
    
    public void a(View paramView, Object paramObject, int paramInt) {}
    
    public void a(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt) {}
  }
  
  public static abstract interface f
  {
    public abstract void a(int paramInt);
    
    public abstract void a(View paramView);
    
    public abstract void a(View paramView, float paramFloat);
    
    public abstract void b(View paramView);
  }
  
  private class g
    extends ac.a
  {
    private final int b;
    private ac c;
    private final Runnable d = new Runnable()
    {
      public void run()
      {
        DrawerLayout.g.a(DrawerLayout.g.this);
      }
    };
    
    public g(int paramInt)
    {
      b = paramInt;
    }
    
    private void b()
    {
      int i = 3;
      if (b == 3) {
        i = 5;
      }
      View localView = b(i);
      if (localView != null) {
        i(localView);
      }
    }
    
    private void c()
    {
      int j = 0;
      int k = c.b();
      int i;
      View localView;
      if (b == 3)
      {
        i = 1;
        if (i == 0) {
          break label149;
        }
        localView = b(3);
        if (localView != null) {
          j = -localView.getWidth();
        }
        j += k;
      }
      for (;;)
      {
        if ((localView != null) && (((i != 0) && (localView.getLeft() < j)) || ((i == 0) && (localView.getLeft() > j) && (DrawerLayout.this.a(localView) == 0))))
        {
          DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
          c.a(localView, j, localView.getTop());
          c = true;
          invalidate();
          b();
          DrawerLayout.this.c();
        }
        return;
        i = 0;
        break;
        label149:
        localView = b(5);
        j = getWidth();
        j -= k;
      }
    }
    
    public int a(View paramView)
    {
      if (g(paramView)) {
        return paramView.getWidth();
      }
      return 0;
    }
    
    public int a(View paramView, int paramInt1, int paramInt2)
    {
      if (DrawerLayout.this.a(paramView, 3)) {
        return Math.max(-paramView.getWidth(), Math.min(paramInt1, 0));
      }
      paramInt2 = getWidth();
      return Math.max(paramInt2 - paramView.getWidth(), Math.min(paramInt1, paramInt2));
    }
    
    public void a()
    {
      removeCallbacks(d);
    }
    
    public void a(int paramInt)
    {
      a(b, paramInt, c.c());
    }
    
    public void a(int paramInt1, int paramInt2)
    {
      postDelayed(d, 160L);
    }
    
    public void a(ac paramac)
    {
      c = paramac;
    }
    
    public void a(View paramView, float paramFloat1, float paramFloat2)
    {
      paramFloat2 = d(paramView);
      int k = paramView.getWidth();
      int i;
      if (DrawerLayout.this.a(paramView, 3)) {
        if ((paramFloat1 > 0.0F) || ((paramFloat1 == 0.0F) && (paramFloat2 > 0.5F))) {
          i = 0;
        }
      }
      for (;;)
      {
        c.a(i, paramView.getTop());
        invalidate();
        return;
        i = -k;
        continue;
        int j = getWidth();
        if (paramFloat1 >= 0.0F)
        {
          i = j;
          if (paramFloat1 == 0.0F)
          {
            i = j;
            if (paramFloat2 <= 0.5F) {}
          }
        }
        else
        {
          i = j - k;
        }
      }
    }
    
    public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramInt2 = paramView.getWidth();
      float f;
      if (DrawerLayout.this.a(paramView, 3))
      {
        f = (paramInt2 + paramInt1) / paramInt2;
        b(paramView, f);
        if (f != 0.0F) {
          break label76;
        }
      }
      label76:
      for (paramInt1 = 4;; paramInt1 = 0)
      {
        paramView.setVisibility(paramInt1);
        invalidate();
        return;
        f = (getWidth() - paramInt1) / paramInt2;
        break;
      }
    }
    
    public boolean a(View paramView, int paramInt)
    {
      return (g(paramView)) && (DrawerLayout.this.a(paramView, b)) && (DrawerLayout.this.a(paramView) == 0);
    }
    
    public int b(View paramView, int paramInt1, int paramInt2)
    {
      return paramView.getTop();
    }
    
    public void b(int paramInt1, int paramInt2)
    {
      if ((paramInt1 & 0x1) == 1) {}
      for (View localView = b(3);; localView = b(5))
      {
        if ((localView != null) && (DrawerLayout.this.a(localView) == 0)) {
          c.a(localView, paramInt2);
        }
        return;
      }
    }
    
    public void b(View paramView, int paramInt)
    {
      getLayoutParamsc = false;
      b();
    }
    
    public boolean b(int paramInt)
    {
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */