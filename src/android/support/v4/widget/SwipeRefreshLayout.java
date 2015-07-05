package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ba;
import android.support.v4.view.ce;
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
import android.widget.AbsListView;

public class SwipeRefreshLayout
  extends ViewGroup
{
  private static final String c = SwipeRefreshLayout.class.getSimpleName();
  private static final int[] s = { 16842766 };
  private Animation A;
  private Animation B;
  private float C;
  private boolean D;
  private int E;
  private int F;
  private boolean G;
  private Animation.AnimationListener H = new bo(this);
  private final Animation I = new bt(this);
  private final Animation J = new bu(this);
  protected int a;
  protected int b;
  private View d;
  private bw e;
  private boolean f = false;
  private int g;
  private float h = -1.0F;
  private int i;
  private int j;
  private boolean k = false;
  private float l;
  private float m;
  private boolean n;
  private int o = -1;
  private boolean p;
  private boolean q;
  private final DecelerateInterpolator r;
  private e t;
  private int u = -1;
  private float v;
  private ai w;
  private Animation x;
  private Animation y;
  private Animation z;
  
  public SwipeRefreshLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwipeRefreshLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    g = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    i = getResources().getInteger(17694721);
    setWillNotDraw(false);
    r = new DecelerateInterpolator(2.0F);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s);
    setEnabled(paramContext.getBoolean(0, true));
    paramContext.recycle();
    paramContext = getResources().getDisplayMetrics();
    E = ((int)(density * 40.0F));
    F = ((int)(density * 40.0F));
    c();
    ce.a(this, true);
    C = (density * 64.0F);
    h = C;
  }
  
  private float a(MotionEvent paramMotionEvent, int paramInt)
  {
    paramInt = ba.a(paramMotionEvent, paramInt);
    if (paramInt < 0) {
      return -1.0F;
    }
    return ba.d(paramMotionEvent, paramInt);
  }
  
  private Animation a(int paramInt1, int paramInt2)
  {
    if ((p) && (d())) {
      return null;
    }
    br localbr = new br(this, paramInt1, paramInt2);
    localbr.setDuration(300L);
    t.a(null);
    t.clearAnimation();
    t.startAnimation(localbr);
    return localbr;
  }
  
  private void a(float paramFloat)
  {
    a(a + (int)((b - a) * paramFloat) - t.getTop(), false);
  }
  
  private void a(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    a = paramInt;
    I.reset();
    I.setDuration(200L);
    I.setInterpolator(r);
    if (paramAnimationListener != null) {
      t.a(paramAnimationListener);
    }
    t.clearAnimation();
    t.startAnimation(I);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    t.bringToFront();
    t.offsetTopAndBottom(paramInt);
    j = t.getTop();
    if ((paramBoolean) && (Build.VERSION.SDK_INT < 11)) {
      invalidate();
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = ba.b(paramMotionEvent);
    if (ba.b(paramMotionEvent, i1) == o) {
      if (i1 != 0) {
        break label33;
      }
    }
    label33:
    for (i1 = 1;; i1 = 0)
    {
      o = ba.b(paramMotionEvent, i1);
      return;
    }
  }
  
  private void a(Animation.AnimationListener paramAnimationListener)
  {
    t.setVisibility(0);
    if (Build.VERSION.SDK_INT >= 11) {
      w.setAlpha(255);
    }
    x = new bp(this);
    x.setDuration(i);
    if (paramAnimationListener != null) {
      t.a(paramAnimationListener);
    }
    t.clearAnimation();
    t.startAnimation(x);
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (f != paramBoolean1)
    {
      D = paramBoolean2;
      g();
      f = paramBoolean1;
      if (f) {
        a(j, H);
      }
    }
    else
    {
      return;
    }
    b(H);
  }
  
  private boolean a(Animation paramAnimation)
  {
    return (paramAnimation != null) && (paramAnimation.hasStarted()) && (!paramAnimation.hasEnded());
  }
  
  private void b(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    if (p)
    {
      c(paramInt, paramAnimationListener);
      return;
    }
    a = paramInt;
    J.reset();
    J.setDuration(200L);
    J.setInterpolator(r);
    if (paramAnimationListener != null) {
      t.a(paramAnimationListener);
    }
    t.clearAnimation();
    t.startAnimation(J);
  }
  
  private void b(Animation.AnimationListener paramAnimationListener)
  {
    y = new bq(this);
    y.setDuration(150L);
    t.a(paramAnimationListener);
    t.clearAnimation();
    t.startAnimation(y);
  }
  
  private void c()
  {
    t = new e(getContext(), -328966, 20.0F);
    w = new ai(getContext(), this);
    w.b(-328966);
    t.setImageDrawable(w);
    t.setVisibility(8);
    addView(t);
  }
  
  private void c(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    a = paramInt;
    if (d()) {}
    for (v = w.getAlpha();; v = ce.r(t))
    {
      B = new bv(this);
      B.setDuration(150L);
      if (paramAnimationListener != null) {
        t.a(paramAnimationListener);
      }
      t.clearAnimation();
      t.startAnimation(B);
      return;
    }
  }
  
  private boolean d()
  {
    return Build.VERSION.SDK_INT < 11;
  }
  
  private void e()
  {
    z = a(w.getAlpha(), 76);
  }
  
  private void f()
  {
    A = a(w.getAlpha(), 255);
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
        if (!localView.equals(t)) {
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
    ce.d(t, paramFloat);
    ce.e(t, paramFloat);
  }
  
  private void setColorViewAlpha(int paramInt)
  {
    t.getBackground().setAlpha(paramInt);
    w.setAlpha(paramInt);
  }
  
  public void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    p = paramBoolean;
    t.setVisibility(8);
    j = paramInt1;
    b = paramInt1;
    C = paramInt2;
    G = true;
    t.invalidate();
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
      if ((ce.b(d, -1)) || (d.getScrollY() > 0)) {
        bool = true;
      }
      return bool;
    }
    return ce.b(d, -1);
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (u < 0) {}
    do
    {
      return paramInt2;
      if (paramInt2 == paramInt1 - 1) {
        return u;
      }
    } while (paramInt2 < u);
    return paramInt2 + 1;
  }
  
  public int getProgressCircleDiameter()
  {
    if (t != null) {
      return t.getMeasuredHeight();
    }
    return 0;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    g();
    int i1 = ba.a(paramMotionEvent);
    if ((q) && (i1 == 0)) {
      q = false;
    }
    if ((!isEnabled()) || (q) || (b()) || (f)) {
      return false;
    }
    switch (i1)
    {
    }
    for (;;)
    {
      return n;
      a(b - t.getTop(), true);
      o = ba.b(paramMotionEvent, 0);
      n = false;
      float f1 = a(paramMotionEvent, o);
      if (f1 == -1.0F) {
        break;
      }
      m = f1;
      continue;
      if (o == -1)
      {
        Log.e(c, "Got ACTION_MOVE event but don't have an active pointer id.");
        return false;
      }
      f1 = a(paramMotionEvent, o);
      if (f1 == -1.0F) {
        break;
      }
      if ((f1 - m > g) && (!n))
      {
        l = (m + g);
        n = true;
        w.setAlpha(76);
        continue;
        a(paramMotionEvent);
        continue;
        n = false;
        o = -1;
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
    paramInt2 = t.getMeasuredWidth();
    paramInt3 = t.getMeasuredHeight();
    t.layout(paramInt1 / 2 - paramInt2 / 2, j, paramInt1 / 2 + paramInt2 / 2, j + paramInt3);
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
      t.measure(View.MeasureSpec.makeMeasureSpec(E, 1073741824), View.MeasureSpec.makeMeasureSpec(F, 1073741824));
      if ((!G) && (!k))
      {
        k = true;
        paramInt1 = -t.getMeasuredHeight();
        b = paramInt1;
        j = paramInt1;
      }
      u = -1;
      paramInt1 = 0;
      while (paramInt1 < getChildCount())
      {
        if (getChildAt(paramInt1) == t)
        {
          u = paramInt1;
          return;
        }
        paramInt1 += 1;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = ba.a(paramMotionEvent);
    if ((q) && (i1 == 0)) {
      q = false;
    }
    if ((!isEnabled()) || (q) || (b())) {
      return false;
    }
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
        o = ba.b(paramMotionEvent, 0);
        n = false;
        continue;
        i1 = ba.a(paramMotionEvent, o);
        if (i1 < 0)
        {
          Log.e(c, "Got ACTION_MOVE event but have an invalid active pointer id.");
          return false;
        }
        f2 = 0.5F * (ba.d(paramMotionEvent, i1) - l);
        if (n)
        {
          w.a(true);
          f1 = f2 / h;
          if (f1 < 0.0F) {
            return false;
          }
          float f3 = Math.min(1.0F, Math.abs(f1));
          float f4 = (float)Math.max(f3 - 0.4D, 0.0D) * 5.0F / 3.0F;
          float f5 = Math.abs(f2);
          float f6 = h;
          label246:
          int i2;
          if (G)
          {
            f1 = C - b;
            f5 = Math.max(0.0F, Math.min(f5 - f6, 2.0F * f1) / f1);
            f5 = (float)(f5 / 4.0F - Math.pow(f5 / 4.0F, 2.0D)) * 2.0F;
            i1 = b;
            i2 = (int)(f1 * f3 + f1 * f5 * 2.0F);
            if (t.getVisibility() != 0) {
              t.setVisibility(0);
            }
            if (!p)
            {
              ce.d(t, 1.0F);
              ce.e(t, 1.0F);
            }
            if (f2 >= h) {
              break label490;
            }
            if (p) {
              setAnimationProgress(f2 / h);
            }
            if ((w.getAlpha() > 76) && (!a(z))) {
              e();
            }
            w.a(0.0F, Math.min(0.8F, 0.8F * f4));
            w.a(Math.min(1.0F, f4));
          }
          for (;;)
          {
            w.b((-0.25F + 0.4F * f4 + 2.0F * f5) * 0.5F);
            a(i2 + i1 - j, true);
            break;
            f1 = C;
            break label246;
            label490:
            if ((w.getAlpha() < 255) && (!a(A))) {
              f();
            }
          }
          o = ba.b(paramMotionEvent, ba.b(paramMotionEvent));
          continue;
          a(paramMotionEvent);
        }
      }
    }
    if (o == -1)
    {
      if (i1 == 1) {
        Log.e(c, "Got ACTION_UP event but don't have an active pointer id.");
      }
      return false;
    }
    float f1 = ba.d(paramMotionEvent, ba.a(paramMotionEvent, o));
    float f2 = l;
    n = false;
    if ((f1 - f2) * 0.5F > h) {
      a(true, true);
    }
    for (;;)
    {
      o = -1;
      return false;
      f = false;
      w.a(0.0F, 0.0F);
      paramMotionEvent = null;
      if (!p) {
        paramMotionEvent = new bs(this);
      }
      b(j, paramMotionEvent);
      w.a(false);
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean) {}
  
  @Deprecated
  public void setColorScheme(int... paramVarArgs)
  {
    setColorSchemeResources(paramVarArgs);
  }
  
  public void setColorSchemeColors(int... paramVarArgs)
  {
    g();
    w.a(paramVarArgs);
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
  
  public void setOnRefreshListener(bw parambw)
  {
    e = parambw;
  }
  
  @Deprecated
  public void setProgressBackgroundColor(int paramInt)
  {
    setProgressBackgroundColorSchemeResource(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeColor(int paramInt)
  {
    t.setBackgroundColor(paramInt);
    w.b(paramInt);
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
      if (!G) {}
      for (int i1 = (int)(C + b);; i1 = (int)C)
      {
        a(i1 - j, true);
        D = false;
        a(H);
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
      E = i1;
    }
    for (F = i1;; F = i1)
    {
      t.setImageDrawable(null);
      w.a(paramInt);
      t.setImageDrawable(w);
      return;
      i1 = (int)(density * 40.0F);
      E = i1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SwipeRefreshLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */