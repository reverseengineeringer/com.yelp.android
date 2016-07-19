package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.aa;
import android.support.v4.view.ai;
import android.support.v4.view.t;
import android.support.v4.view.x;
import android.support.v4.view.y;
import android.support.v4.view.z;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;

public class SwipeRefreshLayout
  extends ViewGroup
  implements x, z
{
  private static final String c = SwipeRefreshLayout.class.getSimpleName();
  private static final int[] w = { 16842766 };
  private o A;
  private Animation B;
  private Animation C;
  private Animation D;
  private Animation E;
  private Animation F;
  private float G;
  private boolean H;
  private int I;
  private int J;
  private boolean K;
  private Animation.AnimationListener L = new Animation.AnimationListener()
  {
    public void onAnimationEnd(Animation paramAnonymousAnimation)
    {
      if (SwipeRefreshLayout.a(SwipeRefreshLayout.this))
      {
        SwipeRefreshLayout.b(SwipeRefreshLayout.this).setAlpha(255);
        SwipeRefreshLayout.b(SwipeRefreshLayout.this).start();
        if ((SwipeRefreshLayout.c(SwipeRefreshLayout.this)) && (SwipeRefreshLayout.d(SwipeRefreshLayout.this) != null)) {
          SwipeRefreshLayout.d(SwipeRefreshLayout.this).a();
        }
      }
      for (;;)
      {
        SwipeRefreshLayout.b(SwipeRefreshLayout.this, SwipeRefreshLayout.e(SwipeRefreshLayout.this).getTop());
        return;
        SwipeRefreshLayout.b(SwipeRefreshLayout.this).stop();
        SwipeRefreshLayout.e(SwipeRefreshLayout.this).setVisibility(8);
        SwipeRefreshLayout.a(SwipeRefreshLayout.this, 255);
        if (SwipeRefreshLayout.f(SwipeRefreshLayout.this)) {
          SwipeRefreshLayout.a(SwipeRefreshLayout.this, 0.0F);
        } else {
          SwipeRefreshLayout.a(SwipeRefreshLayout.this, b - SwipeRefreshLayout.g(SwipeRefreshLayout.this), true);
        }
      }
    }
    
    public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
    
    public void onAnimationStart(Animation paramAnonymousAnimation) {}
  };
  private final Animation M = new Animation()
  {
    public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
    {
      if (!SwipeRefreshLayout.h(SwipeRefreshLayout.this)) {}
      for (int i = (int)(SwipeRefreshLayout.i(SwipeRefreshLayout.this) - Math.abs(b));; i = (int)SwipeRefreshLayout.i(SwipeRefreshLayout.this))
      {
        int j = a;
        i = (int)((i - a) * paramAnonymousFloat);
        int k = SwipeRefreshLayout.e(SwipeRefreshLayout.this).getTop();
        SwipeRefreshLayout.a(SwipeRefreshLayout.this, i + j - k, false);
        SwipeRefreshLayout.b(SwipeRefreshLayout.this).a(1.0F - paramAnonymousFloat);
        return;
      }
    }
  };
  private final Animation N = new Animation()
  {
    public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
    {
      if (!SwipeRefreshLayout.h(SwipeRefreshLayout.this)) {}
      for (int i = (int)(SwipeRefreshLayout.i(SwipeRefreshLayout.this) - Math.abs(b));; i = (int)SwipeRefreshLayout.i(SwipeRefreshLayout.this))
      {
        int j = a;
        i = (int)((i - a) * paramAnonymousFloat);
        int k = SwipeRefreshLayout.e(SwipeRefreshLayout.this).getTop();
        SwipeRefreshLayout.a(SwipeRefreshLayout.this, i + j - k, false);
        SwipeRefreshLayout.b(SwipeRefreshLayout.this).a(1.0F - paramAnonymousFloat);
        return;
      }
    }
  };
  private final Animation O = new Animation()
  {
    public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
    {
      SwipeRefreshLayout.b(SwipeRefreshLayout.this, paramAnonymousFloat);
    }
  };
  protected int a;
  protected int b;
  private View d;
  private a e;
  private boolean f = false;
  private int g;
  private float h = -1.0F;
  private float i;
  private final aa j;
  private final y k;
  private final int[] l = new int[2];
  private int m;
  private int n;
  private boolean o = false;
  private float p;
  private float q;
  private boolean r;
  private int s = -1;
  private boolean t;
  private boolean u;
  private final DecelerateInterpolator v;
  private b x;
  private int y = -1;
  private float z;
  
  public SwipeRefreshLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwipeRefreshLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    g = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    m = getResources().getInteger(17694721);
    setWillNotDraw(false);
    v = new DecelerateInterpolator(2.0F);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, w);
    setEnabled(paramContext.getBoolean(0, true));
    paramContext.recycle();
    paramContext = getResources().getDisplayMetrics();
    I = ((int)(density * 40.0F));
    J = ((int)(density * 40.0F));
    c();
    ai.a(this, true);
    G = (density * 64.0F);
    h = G;
    j = new aa(this);
    k = new y(this);
    setNestedScrollingEnabled(true);
  }
  
  private float a(MotionEvent paramMotionEvent, int paramInt)
  {
    paramInt = t.a(paramMotionEvent, paramInt);
    if (paramInt < 0) {
      return -1.0F;
    }
    return t.d(paramMotionEvent, paramInt);
  }
  
  private Animation a(final int paramInt1, final int paramInt2)
  {
    if ((t) && (d())) {
      return null;
    }
    Animation local4 = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        SwipeRefreshLayout.b(SwipeRefreshLayout.this).setAlpha((int)(paramInt1 + (paramInt2 - paramInt1) * paramAnonymousFloat));
      }
    };
    local4.setDuration(300L);
    x.a(null);
    x.clearAnimation();
    x.startAnimation(local4);
    return local4;
  }
  
  private void a(float paramFloat)
  {
    A.a(true);
    float f2 = Math.min(1.0F, Math.abs(paramFloat / h));
    float f3 = (float)Math.max(f2 - 0.4D, 0.0D) * 5.0F / 3.0F;
    float f4 = Math.abs(paramFloat);
    float f5 = h;
    float f1;
    int i1;
    int i2;
    if (K)
    {
      f1 = G - b;
      f4 = Math.max(0.0F, Math.min(f4 - f5, f1 * 2.0F) / f1);
      f4 = (float)(f4 / 4.0F - Math.pow(f4 / 4.0F, 2.0D)) * 2.0F;
      i1 = b;
      i2 = (int)(f1 * f2 + f1 * f4 * 2.0F);
      if (x.getVisibility() != 0) {
        x.setVisibility(0);
      }
      if (!t)
      {
        ai.d(x, 1.0F);
        ai.e(x, 1.0F);
      }
      if (paramFloat >= h) {
        break label314;
      }
      if (t) {
        setAnimationProgress(paramFloat / h);
      }
      if ((A.getAlpha() > 76) && (!a(D))) {
        e();
      }
      A.a(0.0F, Math.min(0.8F, f3 * 0.8F));
      A.a(Math.min(1.0F, f3));
    }
    for (;;)
    {
      A.b((-0.25F + f3 * 0.4F + f4 * 2.0F) * 0.5F);
      a(i2 + i1 - n, true);
      return;
      f1 = G;
      break;
      label314:
      if ((A.getAlpha() < 255) && (!a(E))) {
        f();
      }
    }
  }
  
  private void a(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    a = paramInt;
    M.reset();
    M.setDuration(200L);
    M.setInterpolator(v);
    if (paramAnimationListener != null) {
      x.a(paramAnimationListener);
    }
    x.clearAnimation();
    x.startAnimation(M);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    x.bringToFront();
    x.offsetTopAndBottom(paramInt);
    n = x.getTop();
    if ((paramBoolean) && (Build.VERSION.SDK_INT < 11)) {
      invalidate();
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = t.b(paramMotionEvent);
    if (t.b(paramMotionEvent, i1) == s) {
      if (i1 != 0) {
        break label33;
      }
    }
    label33:
    for (i1 = 1;; i1 = 0)
    {
      s = t.b(paramMotionEvent, i1);
      return;
    }
  }
  
  private void a(Animation.AnimationListener paramAnimationListener)
  {
    x.setVisibility(0);
    if (Build.VERSION.SDK_INT >= 11) {
      A.setAlpha(255);
    }
    B = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        SwipeRefreshLayout.a(SwipeRefreshLayout.this, paramAnonymousFloat);
      }
    };
    B.setDuration(m);
    if (paramAnimationListener != null) {
      x.a(paramAnimationListener);
    }
    x.clearAnimation();
    x.startAnimation(B);
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (f != paramBoolean1)
    {
      H = paramBoolean2;
      g();
      f = paramBoolean1;
      if (f) {
        a(n, L);
      }
    }
    else
    {
      return;
    }
    b(L);
  }
  
  private boolean a(Animation paramAnimation)
  {
    return (paramAnimation != null) && (paramAnimation.hasStarted()) && (!paramAnimation.hasEnded());
  }
  
  private void b(float paramFloat)
  {
    if (paramFloat > h)
    {
      a(true, true);
      return;
    }
    f = false;
    A.a(0.0F, 0.0F);
    Animation.AnimationListener local5 = null;
    if (!t) {
      local5 = new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if (!SwipeRefreshLayout.f(SwipeRefreshLayout.this)) {
            SwipeRefreshLayout.a(SwipeRefreshLayout.this, null);
          }
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation) {}
      };
    }
    b(n, local5);
    A.a(false);
  }
  
  private void b(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    if (t)
    {
      c(paramInt, paramAnimationListener);
      return;
    }
    a = paramInt;
    O.reset();
    O.setDuration(200L);
    O.setInterpolator(v);
    if (paramAnimationListener != null) {
      x.a(paramAnimationListener);
    }
    x.clearAnimation();
    x.startAnimation(O);
  }
  
  private void b(Animation.AnimationListener paramAnimationListener)
  {
    C = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        SwipeRefreshLayout.a(SwipeRefreshLayout.this, 1.0F - paramAnonymousFloat);
      }
    };
    C.setDuration(150L);
    x.a(paramAnimationListener);
    x.clearAnimation();
    x.startAnimation(C);
  }
  
  private void c()
  {
    x = new b(getContext(), -328966, 20.0F);
    A = new o(getContext(), this);
    A.b(-328966);
    x.setImageDrawable(A);
    x.setVisibility(8);
    addView(x);
  }
  
  private void c(float paramFloat)
  {
    a(a + (int)((b - a) * paramFloat) - x.getTop(), false);
  }
  
  private void c(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    a = paramInt;
    if (d()) {}
    for (z = A.getAlpha();; z = ai.t(x))
    {
      F = new Animation()
      {
        public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
        {
          float f1 = SwipeRefreshLayout.j(SwipeRefreshLayout.this);
          float f2 = -SwipeRefreshLayout.j(SwipeRefreshLayout.this);
          SwipeRefreshLayout.a(SwipeRefreshLayout.this, f1 + f2 * paramAnonymousFloat);
          SwipeRefreshLayout.b(SwipeRefreshLayout.this, paramAnonymousFloat);
        }
      };
      F.setDuration(150L);
      if (paramAnimationListener != null) {
        x.a(paramAnimationListener);
      }
      x.clearAnimation();
      x.startAnimation(F);
      return;
    }
  }
  
  private boolean d()
  {
    return Build.VERSION.SDK_INT < 11;
  }
  
  private void e()
  {
    D = a(A.getAlpha(), 76);
  }
  
  private void f()
  {
    E = a(A.getAlpha(), 255);
  }
  
  private void g()
  {
    int i1;
    if (d == null) {
      i1 = 0;
    }
    for (;;)
    {
      if (i1 < getChildCount())
      {
        View localView = getChildAt(i1);
        if (!localView.equals(x)) {
          d = localView;
        }
      }
      else
      {
        return;
      }
      i1 += 1;
    }
  }
  
  private void setAnimationProgress(float paramFloat)
  {
    if (d())
    {
      setColorViewAlpha((int)(255.0F * paramFloat));
      return;
    }
    ai.d(x, paramFloat);
    ai.e(x, paramFloat);
  }
  
  private void setColorViewAlpha(int paramInt)
  {
    x.getBackground().setAlpha(paramInt);
    A.setAlpha(paramInt);
  }
  
  public void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    t = paramBoolean;
    x.setVisibility(8);
    n = paramInt1;
    b = paramInt1;
    G = paramInt2;
    K = true;
    x.invalidate();
  }
  
  public boolean a()
  {
    return f;
  }
  
  public boolean b()
  {
    boolean bool = false;
    if (Build.VERSION.SDK_INT < 14)
    {
      if ((d instanceof AbsListView))
      {
        AbsListView localAbsListView = (AbsListView)d;
        return (localAbsListView.getChildCount() > 0) && ((localAbsListView.getFirstVisiblePosition() > 0) || (localAbsListView.getChildAt(0).getTop() < localAbsListView.getPaddingTop()));
      }
      if ((ai.b(d, -1)) || (d.getScrollY() > 0)) {
        bool = true;
      }
      return bool;
    }
    return ai.b(d, -1);
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return k.a(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return k.a(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return k.a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return k.a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (y < 0) {}
    do
    {
      return paramInt2;
      if (paramInt2 == paramInt1 - 1) {
        return y;
      }
    } while (paramInt2 < y);
    return paramInt2 + 1;
  }
  
  public int getNestedScrollAxes()
  {
    return j.a();
  }
  
  public int getProgressCircleDiameter()
  {
    if (x != null) {
      return x.getMeasuredHeight();
    }
    return 0;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return k.b();
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return k.a();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    g();
    int i1 = t.a(paramMotionEvent);
    if ((u) && (i1 == 0)) {
      u = false;
    }
    if ((!isEnabled()) || (u) || (b()) || (f)) {
      return false;
    }
    switch (i1)
    {
    }
    for (;;)
    {
      return r;
      a(b - x.getTop(), true);
      s = t.b(paramMotionEvent, 0);
      r = false;
      float f1 = a(paramMotionEvent, s);
      if (f1 == -1.0F) {
        break;
      }
      q = f1;
      continue;
      if (s == -1)
      {
        Log.e(c, "Got ACTION_MOVE event but don't have an active pointer id.");
        return false;
      }
      f1 = a(paramMotionEvent, s);
      if (f1 == -1.0F) {
        break;
      }
      if ((f1 - q > g) && (!r))
      {
        p = (q + g);
        r = true;
        A.setAlpha(76);
        continue;
        a(paramMotionEvent);
        continue;
        r = false;
        s = -1;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getMeasuredWidth();
    paramInt2 = getMeasuredHeight();
    if (getChildCount() == 0) {}
    do
    {
      return;
      if (d == null) {
        g();
      }
    } while (d == null);
    View localView = d;
    paramInt3 = getPaddingLeft();
    paramInt4 = getPaddingTop();
    localView.layout(paramInt3, paramInt4, paramInt1 - getPaddingLeft() - getPaddingRight() + paramInt3, paramInt2 - getPaddingTop() - getPaddingBottom() + paramInt4);
    paramInt2 = x.getMeasuredWidth();
    paramInt3 = x.getMeasuredHeight();
    x.layout(paramInt1 / 2 - paramInt2 / 2, n, paramInt1 / 2 + paramInt2 / 2, n + paramInt3);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (d == null) {
      g();
    }
    if (d == null) {}
    for (;;)
    {
      return;
      d.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 1073741824));
      x.measure(View.MeasureSpec.makeMeasureSpec(I, 1073741824), View.MeasureSpec.makeMeasureSpec(J, 1073741824));
      if ((!K) && (!o))
      {
        o = true;
        paramInt1 = -x.getMeasuredHeight();
        b = paramInt1;
        n = paramInt1;
      }
      y = -1;
      paramInt1 = 0;
      while (paramInt1 < getChildCount())
      {
        if (getChildAt(paramInt1) == x)
        {
          y = paramInt1;
          return;
        }
        paramInt1 += 1;
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramInt2 > 0) && (i > 0.0F))
    {
      if (paramInt2 <= i) {
        break label100;
      }
      paramArrayOfInt[1] = (paramInt2 - (int)i);
      i = 0.0F;
    }
    for (;;)
    {
      a(i);
      paramView = l;
      if (dispatchNestedPreScroll(paramInt1 - paramArrayOfInt[0], paramInt2 - paramArrayOfInt[1], paramView, null))
      {
        paramArrayOfInt[0] += paramView[0];
        paramInt1 = paramArrayOfInt[1];
        paramView[1] += paramInt1;
      }
      return;
      label100:
      i -= paramInt2;
      paramArrayOfInt[1] = paramInt2;
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt4 < 0)
    {
      paramInt4 = Math.abs(paramInt4);
      float f1 = i;
      i = (paramInt4 + f1);
      a(i);
    }
    dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt1, null);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    j.a(paramView1, paramView2, paramInt);
    i = 0.0F;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if ((isEnabled()) && ((paramInt & 0x2) != 0))
    {
      startNestedScroll(paramInt & 0x2);
      return true;
    }
    return false;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    j.a(paramView);
    if (i > 0.0F)
    {
      b(i);
      i = 0.0F;
    }
    stopNestedScroll();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = t.a(paramMotionEvent);
    if ((u) && (i1 == 0)) {
      u = false;
    }
    if ((!isEnabled()) || (u) || (b())) {}
    do
    {
      return false;
      switch (i1)
      {
      case 4: 
      default: 
      case 0: 
      case 2: 
      case 5: 
      case 6: 
        for (;;)
        {
          return true;
          s = t.b(paramMotionEvent, 0);
          r = false;
          continue;
          i1 = t.a(paramMotionEvent, s);
          if (i1 < 0)
          {
            Log.e(c, "Got ACTION_MOVE event but have an invalid active pointer id.");
            return false;
          }
          f1 = (t.d(paramMotionEvent, i1) - p) * 0.5F;
          if (r)
          {
            if (f1 <= 0.0F) {
              break;
            }
            a(f1);
            continue;
            s = t.b(paramMotionEvent, t.b(paramMotionEvent));
            continue;
            a(paramMotionEvent);
          }
        }
      }
      if (s != -1) {
        break;
      }
    } while (i1 != 1);
    Log.e(c, "Got ACTION_UP event but don't have an active pointer id.");
    return false;
    float f1 = t.d(paramMotionEvent, t.a(paramMotionEvent, s));
    float f2 = p;
    r = false;
    b((f1 - f2) * 0.5F);
    s = -1;
    return false;
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (((Build.VERSION.SDK_INT < 21) && ((d instanceof AbsListView))) || ((d != null) && (!ai.B(d)))) {
      return;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  @Deprecated
  public void setColorScheme(int... paramVarArgs)
  {
    setColorSchemeResources(paramVarArgs);
  }
  
  public void setColorSchemeColors(int... paramVarArgs)
  {
    g();
    A.a(paramVarArgs);
  }
  
  public void setColorSchemeResources(int... paramVarArgs)
  {
    Resources localResources = getResources();
    int[] arrayOfInt = new int[paramVarArgs.length];
    int i1 = 0;
    while (i1 < paramVarArgs.length)
    {
      arrayOfInt[i1] = localResources.getColor(paramVarArgs[i1]);
      i1 += 1;
    }
    setColorSchemeColors(arrayOfInt);
  }
  
  public void setDistanceToTriggerSync(int paramInt)
  {
    h = paramInt;
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    k.a(paramBoolean);
  }
  
  public void setOnRefreshListener(a parama)
  {
    e = parama;
  }
  
  @Deprecated
  public void setProgressBackgroundColor(int paramInt)
  {
    setProgressBackgroundColorSchemeResource(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeColor(int paramInt)
  {
    x.setBackgroundColor(paramInt);
    A.b(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeResource(int paramInt)
  {
    setProgressBackgroundColorSchemeColor(getResources().getColor(paramInt));
  }
  
  public void setRefreshing(boolean paramBoolean)
  {
    if ((paramBoolean) && (f != paramBoolean))
    {
      f = paramBoolean;
      if (!K) {}
      for (int i1 = (int)(G + b);; i1 = (int)G)
      {
        a(i1 - n, true);
        H = false;
        a(L);
        return;
      }
    }
    a(paramBoolean, false);
  }
  
  public void setSize(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      return;
    }
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    int i1;
    if (paramInt == 0)
    {
      i1 = (int)(density * 56.0F);
      I = i1;
    }
    for (J = i1;; J = i1)
    {
      x.setImageDrawable(null);
      A.a(paramInt);
      x.setImageDrawable(A);
      return;
      i1 = (int)(density * 40.0F);
      I = i1;
    }
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return k.a(paramInt);
  }
  
  public void stopNestedScroll()
  {
    k.c();
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SwipeRefreshLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */