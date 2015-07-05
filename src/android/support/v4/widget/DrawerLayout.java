package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.content.c;
import android.support.v4.view.ba;
import android.support.v4.view.ce;
import android.support.v4.view.df;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class DrawerLayout
  extends ViewGroup
  implements z
{
  static final q a = new s();
  private static final int[] b;
  private static final boolean c;
  private CharSequence A;
  private Object B;
  private boolean C;
  private final p d = new p(this);
  private int e;
  private int f = -1728053248;
  private float g;
  private Paint h = new Paint();
  private final bx i;
  private final bx j;
  private final v k;
  private final v l;
  private int m;
  private boolean n;
  private boolean o = true;
  private int p;
  private int q;
  private boolean r;
  private boolean s;
  private t t;
  private float u;
  private float v;
  private Drawable w;
  private Drawable x;
  private Drawable y;
  private CharSequence z;
  
  static
  {
    boolean bool = true;
    b = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19) {}
    for (;;)
    {
      c = bool;
      if (Build.VERSION.SDK_INT < 21) {
        break;
      }
      a = new r();
      return;
      bool = false;
    }
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
    e = ((int)(64.0F * f1 + 0.5F));
    f1 *= 400.0F;
    k = new v(this, 3);
    l = new v(this, 5);
    i = bx.a(this, 1.0F, k);
    i.a(1);
    i.a(f1);
    k.a(i);
    j = bx.a(this, 1.0F, l);
    j.a(2);
    j.a(f1);
    l.a(j);
    setFocusableInTouchMode(true);
    ce.c(this, 1);
    ce.a(this, new o(this));
    df.a(this, false);
    if (ce.u(this))
    {
      a.a(this);
      y = a.a(paramContext);
    }
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (((!paramBoolean) && (!g(localView))) || ((paramBoolean) && (localView == paramView))) {
        ce.c(localView, 1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        ce.c(localView, 4);
      }
    }
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
  
  private boolean f()
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
  
  private boolean g()
  {
    return h() != null;
  }
  
  private View h()
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
    return (ce.e(paramView) != 4) && (ce.e(paramView) != 2);
  }
  
  public int a(View paramView)
  {
    int i1 = e(paramView);
    if (i1 == 3) {
      return p;
    }
    if (i1 == 5) {
      return q;
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
    paramInt = android.support.v4.view.q.a(paramInt, ce.h(this));
    if (paramInt == 3) {
      return z;
    }
    if (paramInt == 5) {
      return A;
    }
    return null;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    paramInt2 = android.support.v4.view.q.a(paramInt2, ce.h(this));
    Object localObject;
    if (paramInt2 == 3)
    {
      p = paramInt1;
      if (paramInt1 != 0)
      {
        if (paramInt2 != 3) {
          break label74;
        }
        localObject = i;
        label33:
        ((bx)localObject).e();
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
        q = paramInt1;
        break;
        localObject = j;
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
    int i2 = i.a();
    int i3 = j.a();
    paramInt1 = i1;
    DrawerLayout.LayoutParams localLayoutParams;
    if (i2 != 1)
    {
      if (i3 == 1) {
        paramInt1 = i1;
      }
    }
    else if ((paramView != null) && (paramInt2 == 0))
    {
      localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      if (b != 0.0F) {
        break label124;
      }
      b(paramView);
    }
    for (;;)
    {
      if (paramInt1 != m)
      {
        m = paramInt1;
        if (t != null) {
          t.onDrawerStateChanged(paramInt1);
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
    if (t != null) {
      t.onDrawerSlide(paramView, paramFloat);
    }
  }
  
  public void a(Object paramObject, boolean paramBoolean)
  {
    B = paramObject;
    C = paramBoolean;
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
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
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
        i1 |= i.a(localView, -i4, localView.getTop());
      }
      for (;;)
      {
        c = false;
        i4 = i1;
        break;
        i1 |= j.a(localView, getWidth(), localView.getTop());
      }
    }
    k.a();
    l.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  boolean a(View paramView, int paramInt)
  {
    return (e(paramView) & paramInt) == paramInt;
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((a() != null) || (g(paramView))) {
      ce.c(paramView, 4);
    }
    for (;;)
    {
      if (!c) {
        ce.a(paramView, d);
      }
      return;
      ce.c(paramView, 1);
    }
  }
  
  View b(int paramInt)
  {
    int i1 = android.support.v4.view.q.a(paramInt, ce.h(this));
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
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (d)
    {
      d = false;
      if (t != null) {
        t.onDrawerClosed(paramView);
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
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (paramFloat == b) {
      return;
    }
    b = paramFloat;
    a(paramView, paramFloat);
  }
  
  void c()
  {
    int i1 = 0;
    if (!s)
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
      s = true;
    }
  }
  
  void c(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (!d)
    {
      d = true;
      if (t != null) {
        t.onDrawerOpened(paramView);
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
    return ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
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
    g = f1;
    if ((i.a(true) | j.a(true))) {
      ce.d(this);
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
      if ((g > 0.0F) && (bool1))
      {
        i1 = (int)(((f & 0xFF000000) >>> 24) * g);
        i4 = f;
        h.setColor(i1 << 24 | i4 & 0xFFFFFF);
        paramCanvas.drawRect(i3, 0.0F, i2, getHeight(), h);
      }
      do
      {
        return bool2;
        if ((w != null) && (a(paramView, 3)))
        {
          i1 = w.getIntrinsicWidth();
          i2 = paramView.getRight();
          i3 = i.b();
          f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
          w.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
          w.setAlpha((int)(255.0F * f1));
          w.draw(paramCanvas);
          return bool2;
        }
      } while ((x == null) || (!a(paramView, 5)));
      i1 = x.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = j.b();
      float f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      x.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      x.setAlpha((int)(255.0F * f1));
      x.draw(paramCanvas);
      return bool2;
      label534:
      i2 = i3;
    }
  }
  
  int e(View paramView)
  {
    return android.support.v4.view.q.a(getLayoutParamsa, ce.h(this));
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
      return j(localView);
    }
    return false;
  }
  
  boolean f(View paramView)
  {
    return getLayoutParamsa == 0;
  }
  
  public boolean g(int paramInt)
  {
    View localView = b(paramInt);
    if (localView != null) {
      return k(localView);
    }
    return false;
  }
  
  boolean g(View paramView)
  {
    return (android.support.v4.view.q.a(getLayoutParamsa, ce.h(paramView)) & 0x7) != 0;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new DrawerLayout.LayoutParams(-1, -1);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new DrawerLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) {
      return new DrawerLayout.LayoutParams((DrawerLayout.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new DrawerLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new DrawerLayout.LayoutParams(paramLayoutParams);
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
    if (o)
    {
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      b = 1.0F;
      d = true;
      a(paramView, true);
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        i.a(paramView, 0, paramView.getTop());
      } else {
        j.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  public void i(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (o)
    {
      paramView = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      b = 0.0F;
      d = false;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        i.a(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        j.a(paramView, getWidth(), paramView.getTop());
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
    o = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    o = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((C) && (y != null))
    {
      int i1 = a.a(B);
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
    int i1 = ba.a(paramMotionEvent);
    boolean bool2 = i.a(paramMotionEvent);
    boolean bool3 = j.a(paramMotionEvent);
    switch (i1)
    {
    default: 
      i1 = 0;
      if (((bool2 | bool3)) || (i1 != 0) || (f()) || (s)) {
        bool1 = true;
      }
      return bool1;
    case 0: 
      label63:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      u = f1;
      v = f2;
      if (g > 0.0F)
      {
        paramMotionEvent = i.d((int)f1, (int)f2);
        if ((paramMotionEvent == null) || (!f(paramMotionEvent))) {
          break;
        }
      }
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      r = false;
      s = false;
      break label63;
      if (!i.d(3)) {
        break;
      }
      k.a();
      l.a();
      i1 = 0;
      break label63;
      a(true);
      r = false;
      s = false;
      break;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (g()))
    {
      android.support.v4.view.v.b(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = h();
      if ((paramKeyEvent != null) && (a(paramKeyEvent) == 0)) {
        b();
      }
      return paramKeyEvent != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    n = true;
    int i4 = paramInt3 - paramInt1;
    int i5 = getChildCount();
    paramInt3 = 0;
    if (paramInt3 < i5)
    {
      View localView = getChildAt(paramInt3);
      if (localView.getVisibility() == 8) {}
      DrawerLayout.LayoutParams localLayoutParams;
      for (;;)
      {
        paramInt3 += 1;
        break;
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
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
    n = false;
    o = false;
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
        if ((B == null) || (!ce.u(this))) {
          break label202;
        }
        i1 = 1;
        i5 = ce.h(this);
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
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
      if (i1 != 0)
      {
        i7 = android.support.v4.view.q.a(a, i5);
        if (!ce.u(localView)) {
          break label314;
        }
        a.a(localView, B, i7);
      }
      for (;;)
      {
        if (!f(localView)) {
          break label333;
        }
        localView.measure(View.MeasureSpec.makeMeasureSpec(i3 - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - topMargin - bottomMargin, 1073741824));
        break;
        label314:
        a.a(localLayoutParams, B, i7);
      }
      label333:
      if (!g(localView)) {
        break label469;
      }
      int i7 = e(localView) & 0x7;
      if ((0x0 & i7) != 0) {
        throw new IllegalStateException("Child drawer has absolute gravity " + c(i7) + " but this " + "DrawerLayout" + " already has a " + "drawer view along that edge");
      }
      localView.measure(getChildMeasureSpec(paramInt1, e + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
    }
    label469:
    throw new IllegalStateException("Child " + localView + " at index " + i4 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (openDrawerGravity != 0)
    {
      View localView = b(openDrawerGravity);
      if (localView != null) {
        h(localView);
      }
    }
    a(lockModeLeft, 3);
    a(lockModeRight, 5);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    View localView = a();
    if (localView != null) {
      openDrawerGravity = getLayoutParamsa;
    }
    lockModeLeft = p;
    lockModeRight = q;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    i.b(paramMotionEvent);
    j.b(paramMotionEvent);
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
      u = f1;
      v = f2;
      r = false;
      s = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = i.d((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (f(paramMotionEvent)))
      {
        f2 -= u;
        f1 -= v;
        int i1 = i.d();
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
      r = false;
      return true;
      bool = false;
      continue;
      a(true);
      r = false;
      s = false;
      return true;
      bool = true;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    r = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public void requestLayout()
  {
    if (!n) {
      super.requestLayout();
    }
  }
  
  public void setDrawerListener(t paramt)
  {
    t = paramt;
  }
  
  public void setDrawerLockMode(int paramInt)
  {
    a(paramInt, 3);
    a(paramInt, 5);
  }
  
  public void setScrimColor(int paramInt)
  {
    f = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = c.getDrawable(getContext(), paramInt);; localDrawable = null)
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
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */