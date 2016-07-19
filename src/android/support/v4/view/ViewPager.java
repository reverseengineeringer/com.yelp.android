package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.os.e;
import android.support.v4.os.f;
import android.support.v4.widget.k;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.yelp.android.h.c;
import com.yelp.android.h.m;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ViewPager
  extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private static final i ah = new i();
  private static final Comparator<b> c = new Comparator()
  {
    public int a(ViewPager.b paramAnonymousb1, ViewPager.b paramAnonymousb2)
    {
      return b - b;
    }
  };
  private static final Interpolator d = new Interpolator()
  {
    public float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
    }
  };
  private boolean A;
  private boolean B;
  private int C;
  private int D;
  private int E;
  private float F;
  private float G;
  private float H;
  private float I;
  private int J = -1;
  private VelocityTracker K;
  private int L;
  private int M;
  private int N;
  private int O;
  private boolean P;
  private k Q;
  private k R;
  private boolean S = true;
  private boolean T = false;
  private boolean U;
  private int V;
  private List<e> W;
  private e aa;
  private e ab;
  private d ac;
  private f ad;
  private Method ae;
  private int af;
  private ArrayList<View> ag;
  private final Runnable ai = new Runnable()
  {
    public void run()
    {
      ViewPager.a(ViewPager.this, 0);
      c();
    }
  };
  private int aj = 0;
  private int b;
  private final ArrayList<b> e = new ArrayList();
  private final b f = new b();
  private final Rect g = new Rect();
  private ac h;
  private int i;
  private int j = -1;
  private Parcelable k = null;
  private ClassLoader l = null;
  private Scroller m;
  private g n;
  private int o;
  private Drawable p;
  private int q;
  private int r;
  private float s = -3.4028235E38F;
  private float t = Float.MAX_VALUE;
  private int u;
  private int v;
  private boolean w;
  private boolean x;
  private boolean y;
  private int z = 1;
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > N) && (Math.abs(paramInt2) > L))
    {
      if (paramInt2 > 0) {}
      for (;;)
      {
        paramInt2 = paramInt1;
        if (e.size() > 0)
        {
          b localb1 = (b)e.get(0);
          b localb2 = (b)e.get(e.size() - 1);
          paramInt2 = Math.max(b, Math.min(paramInt1, b));
        }
        return paramInt2;
        paramInt1 += 1;
      }
    }
    if (paramInt1 >= i) {}
    for (float f1 = 0.4F;; f1 = 0.6F)
    {
      paramInt1 = (int)(f1 + (paramInt1 + paramFloat));
      break;
    }
  }
  
  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null) {
      paramRect = new Rect();
    }
    for (;;)
    {
      if (paramView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return paramRect;
      }
      left = paramView.getLeft();
      right = paramView.getRight();
      top = paramView.getTop();
      bottom = paramView.getBottom();
      for (paramView = paramView.getParent(); ((paramView instanceof ViewGroup)) && (paramView != this); paramView = paramView.getParent())
      {
        paramView = (ViewGroup)paramView;
        left += paramView.getLeft();
        right += paramView.getRight();
        top += paramView.getTop();
        bottom += paramView.getBottom();
      }
      return paramRect;
    }
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!e.isEmpty()))
    {
      int i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i3 = getPaddingLeft();
      int i4 = getPaddingRight();
      f1 = getScrollX() / (paramInt2 - i3 - i4 + paramInt4);
      paramInt2 = (int)((paramInt1 - i1 - i2 + paramInt3) * f1);
      scrollTo(paramInt2, getScrollY());
      if (!m.isFinished())
      {
        paramInt3 = m.getDuration();
        paramInt4 = m.timePassed();
        localb = b(i);
        m.startScroll(paramInt2, 0, (int)(e * paramInt1), 0, paramInt3 - paramInt4);
      }
      return;
    }
    b localb = b(i);
    if (localb != null) {}
    for (float f1 = Math.min(e, t);; f1 = 0.0F)
    {
      paramInt1 = (int)(f1 * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 == getScrollX()) {
        break;
      }
      a(false);
      scrollTo(paramInt1, getScrollY());
      return;
    }
  }
  
  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    b localb = b(paramInt1);
    float f1;
    if (localb != null) {
      f1 = getClientWidth();
    }
    for (int i1 = (int)(Math.max(s, Math.min(e, t)) * f1);; i1 = 0)
    {
      if (paramBoolean1)
      {
        a(i1, 0, paramInt2);
        if (paramBoolean2) {
          e(paramInt1);
        }
        return;
      }
      if (paramBoolean2) {
        e(paramInt1);
      }
      a(false);
      scrollTo(i1, 0);
      d(i1);
      return;
    }
  }
  
  private void a(b paramb1, int paramInt, b paramb2)
  {
    int i4 = h.b();
    int i1 = getClientWidth();
    float f2;
    if (i1 > 0)
    {
      f2 = o / i1;
      if (paramb2 == null) {
        break label409;
      }
      i1 = b;
      if (i1 < b)
      {
        f1 = e + d + f2;
        i1 += 1;
        i2 = 0;
      }
    }
    else
    {
      for (;;)
      {
        if ((i1 > b) || (i2 >= e.size())) {
          break label409;
        }
        for (paramb2 = (b)e.get(i2);; paramb2 = (b)e.get(i2))
        {
          i3 = i1;
          f3 = f1;
          if (i1 <= b) {
            break;
          }
          i3 = i1;
          f3 = f1;
          if (i2 >= e.size() - 1) {
            break;
          }
          i2 += 1;
        }
        f2 = 0.0F;
        break;
        while (i3 < b)
        {
          f3 += h.c(i3) + f2;
          i3 += 1;
        }
        e = f3;
        f1 = f3 + (d + f2);
        i1 = i3 + 1;
      }
    }
    if (i1 > b)
    {
      i2 = e.size() - 1;
      f1 = e;
      i1 -= 1;
      while ((i1 >= b) && (i2 >= 0))
      {
        for (paramb2 = (b)e.get(i2);; paramb2 = (b)e.get(i2))
        {
          i3 = i1;
          f3 = f1;
          if (i1 >= b) {
            break;
          }
          i3 = i1;
          f3 = f1;
          if (i2 <= 0) {
            break;
          }
          i2 -= 1;
        }
        while (i3 > b)
        {
          f3 -= h.c(i3) + f2;
          i3 -= 1;
        }
        f1 = f3 - (d + f2);
        e = f1;
        i1 = i3 - 1;
      }
    }
    label409:
    int i3 = e.size();
    float f3 = e;
    i1 = b - 1;
    if (b == 0)
    {
      f1 = e;
      s = f1;
      if (b != i4 - 1) {
        break label550;
      }
      f1 = e + d - 1.0F;
      label475:
      t = f1;
      i2 = paramInt - 1;
      f1 = f3;
    }
    for (;;)
    {
      if (i2 < 0) {
        break label603;
      }
      paramb2 = (b)e.get(i2);
      for (;;)
      {
        if (i1 > b)
        {
          f1 -= h.c(i1) + f2;
          i1 -= 1;
          continue;
          f1 = -3.4028235E38F;
          break;
          label550:
          f1 = Float.MAX_VALUE;
          break label475;
        }
      }
      f1 -= d + f2;
      e = f1;
      if (b == 0) {
        s = f1;
      }
      i1 -= 1;
      i2 -= 1;
    }
    label603:
    float f1 = e + d + f2;
    int i2 = b + 1;
    i1 = paramInt + 1;
    paramInt = i2;
    while (i1 < i3)
    {
      paramb1 = (b)e.get(i1);
      while (paramInt < b)
      {
        f1 = h.c(paramInt) + f2 + f1;
        paramInt += 1;
      }
      if (b == i4 - 1) {
        t = (d + f1 - 1.0F);
      }
      e = f1;
      f1 += d + f2;
      paramInt += 1;
      i1 += 1;
    }
    T = false;
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = t.b(paramMotionEvent);
    if (t.b(paramMotionEvent, i1) == J) {
      if (i1 != 0) {
        break label56;
      }
    }
    label56:
    for (i1 = 1;; i1 = 0)
    {
      F = t.c(paramMotionEvent, i1);
      J = t.b(paramMotionEvent, i1);
      if (K != null) {
        K.clear();
      }
      return;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (aj == 2) {}
    int i2;
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        setScrollingCacheEnabled(false);
        m.abortAnimation();
        i2 = getScrollX();
        i3 = getScrollY();
        int i4 = m.getCurrX();
        int i5 = m.getCurrY();
        if ((i2 != i4) || (i3 != i5))
        {
          scrollTo(i4, i5);
          if (i4 != i2) {
            d(i4);
          }
        }
      }
      y = false;
      int i3 = 0;
      i2 = i1;
      i1 = i3;
      while (i1 < e.size())
      {
        b localb = (b)e.get(i1);
        if (c)
        {
          c = false;
          i2 = 1;
        }
        i1 += 1;
      }
    }
    if (i2 != 0)
    {
      if (paramBoolean) {
        ai.a(this, ai);
      }
    }
    else {
      return;
    }
    ai.run();
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    return ((paramFloat1 < D) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - D) && (paramFloat2 < 0.0F));
  }
  
  private void b(int paramInt1, float paramFloat, int paramInt2)
  {
    if (aa != null) {
      aa.a(paramInt1, paramFloat, paramInt2);
    }
    if (W != null)
    {
      int i2 = W.size();
      int i1 = 0;
      while (i1 < i2)
      {
        e locale = (e)W.get(i1);
        if (locale != null) {
          locale.a(paramInt1, paramFloat, paramInt2);
        }
        i1 += 1;
      }
    }
    if (ab != null) {
      ab.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  private void b(boolean paramBoolean)
  {
    int i3 = getChildCount();
    int i1 = 0;
    if (i1 < i3)
    {
      if (paramBoolean) {}
      for (int i2 = 2;; i2 = 0)
      {
        ai.a(getChildAt(i1), i2, null);
        i1 += 1;
        break;
      }
    }
  }
  
  private boolean b(float paramFloat)
  {
    int i2 = 1;
    boolean bool2 = false;
    boolean bool1 = false;
    float f1 = F;
    F = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int i3 = getClientWidth();
    paramFloat = i3 * s;
    f1 = i3;
    float f3 = t;
    b localb1 = (b)e.get(0);
    b localb2 = (b)e.get(e.size() - 1);
    if (b != 0) {
      paramFloat = e * i3;
    }
    for (int i1 = 0;; i1 = 1)
    {
      if (b != h.b() - 1)
      {
        f1 = e * i3;
        i2 = 0;
      }
      for (;;)
      {
        if (f2 < paramFloat)
        {
          f1 = paramFloat;
          if (i1 != 0)
          {
            bool1 = Q.a(Math.abs(paramFloat - f2) / i3);
            f1 = paramFloat;
          }
        }
        for (;;)
        {
          F += f1 - (int)f1;
          scrollTo((int)f1, getScrollY());
          d((int)f1);
          return bool1;
          if (f2 > f1)
          {
            bool1 = bool2;
            if (i2 != 0) {
              bool1 = R.a(Math.abs(f2 - f1) / i3);
            }
          }
          else
          {
            f1 = f2;
          }
        }
        f1 *= f3;
      }
    }
  }
  
  private void c(boolean paramBoolean)
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(paramBoolean);
    }
  }
  
  private boolean d(int paramInt)
  {
    boolean bool = false;
    if (e.size() == 0)
    {
      U = false;
      a(0, 0.0F, 0);
      if (!U) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      b localb = i();
      int i2 = getClientWidth();
      int i3 = o;
      float f1 = o / i2;
      int i1 = b;
      f1 = (paramInt / i2 - e) / (d + f1);
      paramInt = (int)((i3 + i2) * f1);
      U = false;
      a(i1, f1, paramInt);
      if (!U) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      bool = true;
    }
    return bool;
  }
  
  private void e(int paramInt)
  {
    if (aa != null) {
      aa.b(paramInt);
    }
    if (W != null)
    {
      int i2 = W.size();
      int i1 = 0;
      while (i1 < i2)
      {
        e locale = (e)W.get(i1);
        if (locale != null) {
          locale.b(paramInt);
        }
        i1 += 1;
      }
    }
    if (ab != null) {
      ab.b(paramInt);
    }
  }
  
  private void f(int paramInt)
  {
    if (aa != null) {
      aa.a(paramInt);
    }
    if (W != null)
    {
      int i2 = W.size();
      int i1 = 0;
      while (i1 < i2)
      {
        e locale = (e)W.get(i1);
        if (locale != null) {
          locale.a(paramInt);
        }
        i1 += 1;
      }
    }
    if (ab != null) {
      ab.a(paramInt);
    }
  }
  
  private void g()
  {
    int i2;
    for (int i1 = 0; i1 < getChildCount(); i1 = i2 + 1)
    {
      i2 = i1;
      if (!getChildAtgetLayoutParamsa)
      {
        removeViewAt(i1);
        i2 = i1 - 1;
      }
    }
  }
  
  private int getClientWidth()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private void h()
  {
    if (af != 0)
    {
      if (ag == null) {
        ag = new ArrayList();
      }
      for (;;)
      {
        int i2 = getChildCount();
        int i1 = 0;
        while (i1 < i2)
        {
          View localView = getChildAt(i1);
          ag.add(localView);
          i1 += 1;
        }
        ag.clear();
      }
      Collections.sort(ag, ah);
    }
  }
  
  private b i()
  {
    int i1 = getClientWidth();
    float f1;
    float f2;
    label36:
    float f4;
    float f3;
    int i3;
    int i2;
    Object localObject1;
    label53:
    Object localObject2;
    b localb;
    if (i1 > 0)
    {
      f1 = getScrollX() / i1;
      if (i1 <= 0) {
        break label214;
      }
      f2 = o / i1;
      f4 = 0.0F;
      f3 = 0.0F;
      i3 = -1;
      i1 = 0;
      i2 = 1;
      localObject1 = null;
      localObject2 = localObject1;
      if (i1 < e.size())
      {
        localb = (b)e.get(i1);
        if ((i2 != 0) || (b == i3 + 1)) {
          break label249;
        }
        localb = f;
        e = (f4 + f3 + f2);
        b = (i3 + 1);
        d = h.c(b);
        i1 -= 1;
      }
    }
    label214:
    label219:
    label249:
    for (;;)
    {
      f3 = e;
      f4 = d;
      if (i2 == 0)
      {
        localObject2 = localObject1;
        if (f1 < f3) {}
      }
      else
      {
        if ((f1 >= f4 + f3 + f2) && (i1 != e.size() - 1)) {
          break label219;
        }
        localObject2 = localb;
      }
      return (b)localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      i3 = b;
      f4 = d;
      i2 = 0;
      i1 += 1;
      localObject1 = localb;
      break label53;
    }
  }
  
  private void j()
  {
    A = false;
    B = false;
    if (K != null)
    {
      K.recycle();
      K = null;
    }
  }
  
  private void setScrollState(int paramInt)
  {
    if (aj == paramInt) {
      return;
    }
    aj = paramInt;
    if (ad != null) {
      if (paramInt == 0) {
        break label38;
      }
    }
    label38:
    for (boolean bool = true;; bool = false)
    {
      b(bool);
      f(paramInt);
      return;
    }
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (x != paramBoolean) {
      x = paramBoolean;
    }
  }
  
  float a(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  b a(int paramInt1, int paramInt2)
  {
    b localb = new b();
    b = paramInt1;
    a = h.a(this, paramInt1);
    d = h.c(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= e.size()))
    {
      e.add(localb);
      return localb;
    }
    e.add(paramInt2, localb);
    return localb;
  }
  
  b a(View paramView)
  {
    int i1 = 0;
    while (i1 < e.size())
    {
      b localb = (b)e.get(i1);
      if (h.a(paramView, a)) {
        return localb;
      }
      i1 += 1;
    }
    return null;
  }
  
  void a()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    m = new Scroller(localContext, d);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f1 = getResourcesgetDisplayMetricsdensity;
    E = as.a(localViewConfiguration);
    L = ((int)(400.0F * f1));
    M = localViewConfiguration.getScaledMaximumFlingVelocity();
    Q = new k(localContext);
    R = new k(localContext);
    N = ((int)(25.0F * f1));
    O = ((int)(2.0F * f1));
    C = ((int)(16.0F * f1));
    ai.a(this, new c());
    if (ai.e(this) == 0) {
      ai.c(this, 1);
    }
  }
  
  void a(int paramInt)
  {
    int i1;
    Object localObject2;
    if (i != paramInt) {
      if (i < paramInt)
      {
        i1 = 66;
        localObject2 = b(i);
        i = paramInt;
      }
    }
    for (int i2 = i1;; i2 = 2)
    {
      if (h == null) {
        h();
      }
      do
      {
        return;
        i1 = 17;
        break;
        if (y)
        {
          h();
          return;
        }
      } while (getWindowToken() == null);
      h.a(this);
      paramInt = z;
      int i8 = Math.max(0, i - paramInt);
      int i6 = h.b();
      int i7 = Math.min(i6 - 1, paramInt + i);
      Object localObject1;
      if (i6 != b) {
        try
        {
          String str = getResources().getResourceName(getId());
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + b + ", found: " + i6 + " Pager id: " + str + " Pager class: " + getClass() + " Problematic adapter: " + h.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;)
          {
            localObject1 = Integer.toHexString(getId());
          }
        }
      }
      paramInt = 0;
      if (paramInt < e.size())
      {
        localObject1 = (b)e.get(paramInt);
        if (b >= i) {
          if (b != i) {
            break label1273;
          }
        }
      }
      for (;;)
      {
        if ((localObject1 == null) && (i6 > 0)) {}
        for (Object localObject3 = a(i, paramInt);; localObject3 = localObject1)
        {
          int i5;
          label344:
          int i9;
          label357:
          float f3;
          int i4;
          int i3;
          Object localObject4;
          float f1;
          if (localObject3 != null)
          {
            i5 = paramInt - 1;
            if (i5 < 0) {
              break label640;
            }
            localObject1 = (b)e.get(i5);
            i9 = getClientWidth();
            if (i9 > 0) {
              break label646;
            }
            f2 = 0.0F;
            i1 = i;
            f3 = 0.0F;
            i4 = i1 - 1;
            i3 = paramInt;
            localObject4 = localObject1;
            if (i4 >= 0)
            {
              if ((f3 < f2) || (i4 >= i8)) {
                break label801;
              }
              if (localObject4 != null) {
                break label667;
              }
            }
            f1 = d;
            paramInt = i3 + 1;
            if (f1 < 2.0F)
            {
              if (paramInt >= e.size()) {
                break label921;
              }
              localObject1 = (b)e.get(paramInt);
              label444:
              if (i9 > 0) {
                break label927;
              }
            }
          }
          label463:
          label521:
          label640:
          label646:
          label667:
          label792:
          label801:
          label921:
          label927:
          for (float f2 = 0.0F;; f2 = getPaddingRight() / i9 + 2.0F)
          {
            i1 = i;
            i1 += 1;
            if (i1 < i6)
            {
              if ((f1 < f2) || (i1 <= i7)) {
                break label1023;
              }
              if (localObject1 != null) {
                break label942;
              }
            }
            a((b)localObject3, i3, (b)localObject2);
            localObject2 = h;
            paramInt = i;
            if (localObject3 == null) {
              break label1145;
            }
            localObject1 = a;
            ((ac)localObject2).b(this, paramInt, localObject1);
            h.b(this);
            i1 = getChildCount();
            paramInt = 0;
            while (paramInt < i1)
            {
              localObject2 = getChildAt(paramInt);
              localObject1 = (LayoutParams)((View)localObject2).getLayoutParams();
              f = paramInt;
              if ((!a) && (c == 0.0F))
              {
                localObject2 = a((View)localObject2);
                if (localObject2 != null)
                {
                  c = d;
                  e = b;
                }
              }
              paramInt += 1;
            }
            paramInt += 1;
            break;
            localObject1 = null;
            break label344;
            f2 = 2.0F - d + getPaddingLeft() / i9;
            break label357;
            localObject1 = localObject4;
            paramInt = i5;
            f1 = f3;
            i1 = i3;
            if (i4 == b)
            {
              localObject1 = localObject4;
              paramInt = i5;
              f1 = f3;
              i1 = i3;
              if (!c)
              {
                e.remove(i5);
                h.a(this, i4, a);
                paramInt = i5 - 1;
                i1 = i3 - 1;
                if (paramInt < 0) {
                  break label792;
                }
                localObject1 = (b)e.get(paramInt);
                f1 = f3;
              }
            }
            for (;;)
            {
              i4 -= 1;
              localObject4 = localObject1;
              i5 = paramInt;
              f3 = f1;
              i3 = i1;
              break;
              localObject1 = null;
              f1 = f3;
              continue;
              if ((localObject4 != null) && (i4 == b))
              {
                f1 = f3 + d;
                paramInt = i5 - 1;
                if (paramInt >= 0)
                {
                  localObject1 = (b)e.get(paramInt);
                  i1 = i3;
                }
                else
                {
                  localObject1 = null;
                  i1 = i3;
                }
              }
              else
              {
                f1 = f3 + a1d;
                i1 = i3 + 1;
                if (i5 >= 0)
                {
                  localObject1 = (b)e.get(i5);
                  paramInt = i5;
                }
                else
                {
                  localObject1 = null;
                  paramInt = i5;
                }
              }
            }
            localObject1 = null;
            break label444;
          }
          label942:
          if ((i1 == b) && (!c))
          {
            e.remove(paramInt);
            h.a(this, i1, a);
            if (paramInt < e.size()) {
              localObject1 = (b)e.get(paramInt);
            }
          }
          for (;;)
          {
            i1 += 1;
            break label463;
            localObject1 = null;
            continue;
            label1023:
            if ((localObject1 != null) && (i1 == b))
            {
              f3 = d;
              paramInt += 1;
              if (paramInt < e.size()) {}
              for (localObject1 = (b)e.get(paramInt);; localObject1 = null)
              {
                f1 += f3;
                break;
              }
            }
            localObject1 = a(i1, paramInt);
            paramInt += 1;
            f3 = d;
            if (paramInt < e.size()) {}
            for (localObject1 = (b)e.get(paramInt);; localObject1 = null)
            {
              f1 += f3;
              break;
            }
            label1145:
            localObject1 = null;
            break label521;
            h();
            if (!hasFocus()) {
              break;
            }
            localObject1 = findFocus();
            if (localObject1 != null) {}
            for (localObject1 = b((View)localObject1);; localObject1 = null)
            {
              if ((localObject1 != null) && (b == i)) {
                break label1261;
              }
              paramInt = 0;
              for (;;)
              {
                if (paramInt >= getChildCount()) {
                  break label1255;
                }
                localObject1 = getChildAt(paramInt);
                localObject2 = a((View)localObject1);
                if ((localObject2 != null) && (b == i) && (((View)localObject1).requestFocus(i2))) {
                  break;
                }
                paramInt += 1;
              }
              label1255:
              break;
            }
            label1261:
            break;
          }
        }
        label1273:
        localObject1 = null;
      }
      localObject2 = null;
    }
  }
  
  protected void a(int paramInt1, float paramFloat, int paramInt2)
  {
    int i1;
    View localView;
    if (V > 0)
    {
      int i6 = getScrollX();
      i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i7 = getWidth();
      int i8 = getChildCount();
      int i5 = 0;
      while (i5 < i8)
      {
        localView = getChildAt(i5);
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        int i4;
        int i3;
        if (!a)
        {
          i4 = i1;
          i3 = i2;
          i5 += 1;
          i1 = i4;
          i2 = i3;
        }
        else
        {
          switch (b & 0x7)
          {
          case 2: 
          case 4: 
          default: 
            i3 = i1;
            i4 = i2;
            i2 = i1;
            i1 = i4;
          }
          for (;;)
          {
            int i9 = i3 + i6 - localView.getLeft();
            i3 = i1;
            i4 = i2;
            if (i9 == 0) {
              break;
            }
            localView.offsetLeftAndRight(i9);
            i3 = i1;
            i4 = i2;
            break;
            i3 = localView.getWidth();
            i4 = i3 + i1;
            i3 = i1;
            i1 = i2;
            i2 = i4;
            continue;
            i3 = Math.max((i7 - localView.getMeasuredWidth()) / 2, i1);
            i4 = i1;
            i1 = i2;
            i2 = i4;
            continue;
            i3 = i7 - i2 - localView.getMeasuredWidth();
            i9 = localView.getMeasuredWidth();
            i4 = i1;
            i1 = i2 + i9;
            i2 = i4;
          }
        }
      }
    }
    b(paramInt1, paramFloat, paramInt2);
    if (ad != null)
    {
      paramInt2 = getScrollX();
      i1 = getChildCount();
      paramInt1 = 0;
      if (paramInt1 < i1)
      {
        localView = getChildAt(paramInt1);
        if (getLayoutParamsa) {}
        for (;;)
        {
          paramInt1 += 1;
          break;
          paramFloat = (localView.getLeft() - paramInt2) / getClientWidth();
          ad.a(localView, paramFloat);
        }
      }
    }
    U = true;
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i1 = getScrollX();
    int i2 = getScrollY();
    int i3 = paramInt1 - i1;
    paramInt2 -= i2;
    if ((i3 == 0) && (paramInt2 == 0))
    {
      a(false);
      c();
      setScrollState(0);
      return;
    }
    setScrollingCacheEnabled(true);
    setScrollState(2);
    paramInt1 = getClientWidth();
    int i4 = paramInt1 / 2;
    float f3 = Math.min(1.0F, Math.abs(i3) * 1.0F / paramInt1);
    float f1 = i4;
    float f2 = i4;
    f3 = a(f3);
    paramInt3 = Math.abs(paramInt3);
    if (paramInt3 > 0) {}
    for (paramInt1 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt3)) * 4;; paramInt1 = (int)((Math.abs(i3) / (f1 * f2 + o) + 1.0F) * 100.0F))
    {
      paramInt1 = Math.min(paramInt1, 600);
      m.startScroll(i1, i2, i3, paramInt2, paramInt1);
      ai.d(this);
      return;
      f1 = paramInt1;
      f2 = h.c(i);
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    y = false;
    a(paramInt, paramBoolean, false);
  }
  
  void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = false;
    if ((h == null) || (h.b() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (i == paramInt1) && (e.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i1;
    if (paramInt1 < 0) {
      i1 = 0;
    }
    for (;;)
    {
      paramInt1 = z;
      if ((i1 <= i + paramInt1) && (i1 >= i - paramInt1)) {
        break;
      }
      paramInt1 = 0;
      while (paramInt1 < e.size())
      {
        e.get(paramInt1)).c = true;
        paramInt1 += 1;
      }
      i1 = paramInt1;
      if (paramInt1 >= h.b()) {
        i1 = h.b() - 1;
      }
    }
    paramBoolean2 = bool;
    if (i != i1) {
      paramBoolean2 = true;
    }
    if (S)
    {
      i = i1;
      if (paramBoolean2) {
        e(i1);
      }
      requestLayout();
      return;
    }
    a(i1);
    a(i1, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  public void a(e parame)
  {
    if (W == null) {
      W = new ArrayList();
    }
    W.add(parame);
  }
  
  public boolean a(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode())
      {
      }
    }
    do
    {
      do
      {
        return false;
        return c(17);
        return c(66);
      } while (Build.VERSION.SDK_INT < 11);
      if (g.a(paramKeyEvent)) {
        return c(2);
      }
    } while (!g.a(paramKeyEvent, 1));
    return c(1);
  }
  
  protected boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i2 = paramView.getScrollX();
      int i3 = paramView.getScrollY();
      i1 = localViewGroup.getChildCount() - 1;
      if (i1 >= 0)
      {
        localView = localViewGroup.getChildAt(i1);
        if ((paramInt2 + i2 < localView.getLeft()) || (paramInt2 + i2 >= localView.getRight()) || (paramInt3 + i3 < localView.getTop()) || (paramInt3 + i3 >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i2 - localView.getLeft(), paramInt3 + i3 - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (ai.a(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i1 -= 1;
      break;
    }
    return false;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i2 = paramArrayList.size();
    int i3 = getDescendantFocusability();
    if (i3 != 393216)
    {
      int i1 = 0;
      while (i1 < getChildCount())
      {
        View localView = getChildAt(i1);
        if (localView.getVisibility() == 0)
        {
          b localb = a(localView);
          if ((localb != null) && (b == i)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
        i1 += 1;
      }
    }
    if (((i3 == 262144) && (i2 != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        b localb = a(localView);
        if ((localb != null) && (b == i)) {
          localView.addTouchables(paramArrayList);
        }
      }
      i1 += 1;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    for (;;)
    {
      LayoutParams localLayoutParams = (LayoutParams)paramLayoutParams;
      a |= paramView instanceof a;
      if (w)
      {
        if ((localLayoutParams != null) && (a)) {
          throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        d = true;
        addViewInLayout(paramView, paramInt, paramLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  b b(int paramInt)
  {
    int i1 = 0;
    while (i1 < e.size())
    {
      b localb = (b)e.get(i1);
      if (b == paramInt) {
        return localb;
      }
      i1 += 1;
    }
    return null;
  }
  
  b b(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return a(paramView);
  }
  
  e b(e parame)
  {
    e locale = ab;
    ab = parame;
    return locale;
  }
  
  void b()
  {
    int i7 = h.b();
    b = i7;
    int i1;
    int i2;
    int i3;
    int i5;
    int i4;
    label67:
    Object localObject;
    int i6;
    if ((e.size() < z * 2 + 1) && (e.size() < i7))
    {
      i1 = 1;
      i2 = i;
      i3 = 0;
      i5 = 0;
      i4 = i1;
      i1 = i2;
      i2 = i3;
      i3 = i5;
      if (i3 >= e.size()) {
        break label299;
      }
      localObject = (b)e.get(i3);
      i5 = h.a(a);
      if (i5 != -1) {
        break label157;
      }
      i5 = i3;
      i6 = i2;
      i3 = i4;
      i2 = i1;
      i1 = i6;
      i4 = i5;
    }
    for (;;)
    {
      i5 = i3;
      i6 = i2;
      i3 = i4 + 1;
      i2 = i1;
      i1 = i6;
      i4 = i5;
      break label67;
      i1 = 0;
      break;
      label157:
      if (i5 == -2)
      {
        e.remove(i3);
        i4 = i3 - 1;
        i3 = i2;
        if (i2 == 0)
        {
          h.a(this);
          i3 = 1;
        }
        h.a(this, b, a);
        if (i == b)
        {
          i2 = Math.max(0, Math.min(i, i7 - 1));
          i1 = i3;
          i3 = 1;
        }
      }
      else
      {
        if (b != i5)
        {
          if (b == i) {
            i1 = i5;
          }
          b = i5;
          i5 = i1;
          i6 = 1;
          i4 = i3;
          i1 = i2;
          i2 = i5;
          i3 = i6;
          continue;
          label299:
          if (i2 != 0) {
            h.b(this);
          }
          Collections.sort(e, c);
          if (i4 != 0)
          {
            i3 = getChildCount();
            i2 = 0;
            while (i2 < i3)
            {
              localObject = (LayoutParams)getChildAt(i2).getLayoutParams();
              if (!a) {
                c = 0.0F;
              }
              i2 += 1;
            }
            a(i1, false, true);
            requestLayout();
          }
          return;
        }
        i5 = i1;
        i6 = i4;
        i4 = i3;
        i1 = i2;
        i2 = i5;
        i3 = i6;
        continue;
      }
      i2 = i1;
      i5 = 1;
      i1 = i3;
      i3 = i5;
    }
  }
  
  void c()
  {
    a(i);
  }
  
  public boolean c(int paramInt)
  {
    View localView = findFocus();
    Object localObject;
    int i2;
    boolean bool;
    if (localView == this)
    {
      localObject = null;
      localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
      if ((localView == null) || (localView == localObject)) {
        break label329;
      }
      if (paramInt != 17) {
        break label266;
      }
      i1 = ag, localView).left;
      i2 = ag, (View)localObject).left;
      if ((localObject != null) && (i1 >= i2))
      {
        bool = d();
        label89:
        if (bool) {
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        }
        return bool;
      }
    }
    else
    {
      if (localView == null) {
        break label375;
      }
      localObject = localView.getParent();
      if (!(localObject instanceof ViewGroup)) {
        break label382;
      }
      if (localObject != this) {}
    }
    label266:
    label329:
    label375:
    label382:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView.getClass().getSimpleName());
        localObject = localView.getParent();
        for (;;)
        {
          if ((localObject instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
            localObject = ((ViewParent)localObject).getParent();
            continue;
            localObject = ((ViewParent)localObject).getParent();
            break;
          }
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localObject = null;
        break;
        bool = localView.requestFocus();
        break label89;
        if (paramInt == 66)
        {
          i1 = ag, localView).left;
          i2 = ag, (View)localObject).left;
          if ((localObject != null) && (i1 <= i2))
          {
            bool = e();
            break label89;
          }
          bool = localView.requestFocus();
          break label89;
          if ((paramInt == 17) || (paramInt == 1))
          {
            bool = d();
            break label89;
          }
          if ((paramInt == 66) || (paramInt == 2))
          {
            bool = e();
            break label89;
          }
        }
        bool = false;
        break label89;
      }
      localObject = localView;
      break;
    }
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (h == null) {}
    int i1;
    int i2;
    do
    {
      return false;
      i1 = getClientWidth();
      i2 = getScrollX();
      if (paramInt < 0)
      {
        if (i2 > (int)(i1 * s)) {}
        for (;;)
        {
          return bool1;
          bool1 = false;
        }
      }
    } while (paramInt <= 0);
    if (i2 < (int)(i1 * t)) {}
    for (bool1 = bool2;; bool1 = false) {
      return bool1;
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!m.isFinished()) && (m.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = m.getCurrX();
      int i4 = m.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!d(i3))
        {
          m.abortAnimation();
          scrollTo(0, i4);
        }
      }
      ai.d(this);
      return;
    }
    a(true);
  }
  
  boolean d()
  {
    if (i > 0)
    {
      a(i - 1, true);
      return true;
    }
    return false;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (a(paramKeyEvent));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool1 = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool1;
    }
    int i2 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i1 >= i2) {
        break;
      }
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        b localb = a(localView);
        if ((localb != null) && (b == i) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
      i1 += 1;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i3 = 0;
    int i1 = 0;
    int i4 = ai.a(this);
    boolean bool;
    if ((i4 == 0) || ((i4 == 1) && (h != null) && (h.b() > 1)))
    {
      int i2;
      if (!Q.a())
      {
        i3 = paramCanvas.save();
        i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        i4 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), s * i4);
        Q.a(i1, i4);
        i2 = false | Q.a(paramCanvas);
        paramCanvas.restoreToCount(i3);
      }
      i3 = i2;
      if (!R.a())
      {
        i4 = paramCanvas.save();
        i3 = getWidth();
        int i5 = getHeight();
        int i6 = getPaddingTop();
        int i7 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(t + 1.0F) * i3);
        R.a(i5 - i6 - i7, i3);
        bool = i2 | R.a(paramCanvas);
        paramCanvas.restoreToCount(i4);
      }
    }
    for (;;)
    {
      if (bool) {
        ai.d(this);
      }
      return;
      Q.b();
      R.b();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = p;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  boolean e()
  {
    if ((h != null) && (i < h.b() - 1))
    {
      a(i + 1, true);
      return true;
    }
    return false;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public ac getAdapter()
  {
    return h;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i1 = paramInt2;
    if (af == 2) {
      i1 = paramInt1 - 1 - paramInt2;
    }
    return ag.get(i1)).getLayoutParams()).f;
  }
  
  public int getCurrentItem()
  {
    return i;
  }
  
  public int getOffscreenPageLimit()
  {
    return z;
  }
  
  public int getPageMargin()
  {
    return o;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    S = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(ai);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i3;
    int i4;
    float f3;
    Object localObject;
    float f1;
    int i5;
    int i1;
    int i6;
    int i2;
    if ((o > 0) && (p != null) && (e.size() > 0) && (h != null))
    {
      i3 = getScrollX();
      i4 = getWidth();
      f3 = o / i4;
      localObject = (b)e.get(0);
      f1 = e;
      i5 = e.size();
      i1 = b;
      i6 = e.get(i5 - 1)).b;
      i2 = 0;
    }
    for (;;)
    {
      float f2;
      if (i1 < i6)
      {
        while ((i1 > b) && (i2 < i5))
        {
          localObject = e;
          i2 += 1;
          localObject = (b)((ArrayList)localObject).get(i2);
        }
        if (i1 != b) {
          break label271;
        }
        f2 = (e + d) * i4;
      }
      label271:
      float f4;
      for (f1 = e + d + f3;; f1 += f4 + f3)
      {
        if (o + f2 > i3)
        {
          p.setBounds((int)f2, q, (int)(o + f2 + 0.5F), r);
          p.draw(paramCanvas);
        }
        if (f2 <= i3 + i4) {
          break;
        }
        return;
        f4 = h.c(i1);
        f2 = (f1 + f4) * i4;
      }
      i1 += 1;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if ((i1 == 3) || (i1 == 1))
    {
      A = false;
      B = false;
      J = -1;
      if (K != null)
      {
        K.recycle();
        K = null;
      }
    }
    do
    {
      return false;
      if (i1 == 0) {
        break;
      }
      if (A) {
        return true;
      }
    } while (B);
    switch (i1)
    {
    }
    for (;;)
    {
      if (K == null) {
        K = VelocityTracker.obtain();
      }
      K.addMovement(paramMotionEvent);
      return A;
      i1 = J;
      if (i1 != -1)
      {
        i1 = t.a(paramMotionEvent, i1);
        float f2 = t.c(paramMotionEvent, i1);
        float f1 = f2 - F;
        float f4 = Math.abs(f1);
        float f3 = t.d(paramMotionEvent, i1);
        float f5 = Math.abs(f3 - I);
        if ((f1 != 0.0F) && (!a(F, f1)) && (a(this, false, (int)f1, (int)f2, (int)f3)))
        {
          F = f2;
          G = f3;
          B = true;
          return false;
        }
        if ((f4 > E) && (0.5F * f4 > f5))
        {
          A = true;
          c(true);
          setScrollState(1);
          if (f1 > 0.0F)
          {
            f1 = H + E;
            label310:
            F = f1;
            G = f3;
            setScrollingCacheEnabled(true);
          }
        }
        while ((A) && (b(f2)))
        {
          ai.d(this);
          break;
          f1 = H - E;
          break label310;
          if (f5 > E) {
            B = true;
          }
        }
        f1 = paramMotionEvent.getX();
        H = f1;
        F = f1;
        f1 = paramMotionEvent.getY();
        I = f1;
        G = f1;
        J = t.b(paramMotionEvent, 0);
        B = false;
        m.computeScrollOffset();
        if ((aj == 2) && (Math.abs(m.getFinalX() - m.getCurrX()) > O))
        {
          m.abortAnimation();
          y = false;
          c();
          A = true;
          c(true);
          setScrollState(1);
        }
        else
        {
          a(false);
          A = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i6 = getChildCount();
    int i8 = paramInt3 - paramInt1;
    int i7 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int i1 = getPaddingRight();
    paramInt3 = getPaddingBottom();
    int i9 = getScrollX();
    int i2 = 0;
    int i4 = 0;
    View localView;
    LayoutParams localLayoutParams;
    int i10;
    int i3;
    label154:
    int i5;
    if (i4 < i6)
    {
      localView = getChildAt(i4);
      if (localView.getVisibility() == 8) {
        break label671;
      }
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (!a) {
        break label671;
      }
      paramInt4 = b;
      i10 = b;
      switch (paramInt4 & 0x7)
      {
      case 2: 
      case 4: 
      default: 
        paramInt4 = paramInt2;
        i3 = paramInt2;
        switch (i10 & 0x70)
        {
        default: 
          i5 = paramInt1;
          paramInt2 = paramInt1;
          paramInt1 = paramInt3;
          paramInt3 = i5;
          label204:
          paramInt4 += i9;
          localView.layout(paramInt4, paramInt3, localView.getMeasuredWidth() + paramInt4, localView.getMeasuredHeight() + paramInt3);
          i2 += 1;
          paramInt4 = i1;
          paramInt3 = i3;
          i1 = paramInt1;
          paramInt1 = i2;
        }
        break;
      }
    }
    for (;;)
    {
      i4 += 1;
      i3 = paramInt3;
      i2 = paramInt1;
      paramInt1 = paramInt2;
      paramInt3 = i1;
      i1 = paramInt4;
      paramInt2 = i3;
      break;
      i3 = localView.getMeasuredWidth();
      paramInt4 = paramInt2;
      i3 += paramInt2;
      break label154;
      paramInt4 = Math.max((i8 - localView.getMeasuredWidth()) / 2, paramInt2);
      i3 = paramInt2;
      break label154;
      i3 = localView.getMeasuredWidth();
      paramInt4 = i1 + localView.getMeasuredWidth();
      i5 = i8 - i1 - i3;
      i1 = paramInt4;
      i3 = paramInt2;
      paramInt4 = i5;
      break label154;
      i5 = localView.getMeasuredHeight();
      paramInt2 = paramInt3;
      i5 += paramInt1;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i5;
      break label204;
      i5 = Math.max((i7 - localView.getMeasuredHeight()) / 2, paramInt1);
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = i5;
      break label204;
      i5 = i7 - paramInt3 - localView.getMeasuredHeight();
      i10 = localView.getMeasuredHeight();
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 + i10;
      paramInt3 = i5;
      break label204;
      i1 = i8 - paramInt2 - i1;
      paramInt4 = 0;
      while (paramInt4 < i6)
      {
        localView = getChildAt(paramInt4);
        if (localView.getVisibility() != 8)
        {
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (!a)
          {
            b localb = a(localView);
            if (localb != null)
            {
              float f1 = i1;
              i3 = (int)(e * f1) + paramInt2;
              if (d)
              {
                d = false;
                f1 = i1;
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(c * f1), 1073741824), View.MeasureSpec.makeMeasureSpec(i7 - paramInt1 - paramInt3, 1073741824));
              }
              localView.layout(i3, paramInt1, localView.getMeasuredWidth() + i3, localView.getMeasuredHeight() + paramInt1);
            }
          }
        }
        paramInt4 += 1;
      }
      q = paramInt1;
      r = (i7 - paramInt3);
      V = i2;
      if (S) {
        a(i, false, 0, false);
      }
      S = false;
      return;
      label671:
      paramInt4 = i2;
      i2 = paramInt1;
      i3 = paramInt2;
      paramInt1 = paramInt4;
      paramInt4 = i1;
      i1 = paramInt3;
      paramInt2 = i2;
      paramInt3 = i3;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    D = Math.min(paramInt1 / 10, C);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i9 = getChildCount();
    int i3 = 0;
    View localView;
    int i1;
    int i2;
    LayoutParams localLayoutParams;
    int i4;
    int i6;
    label183:
    int i5;
    if (i3 < i9)
    {
      localView = getChildAt(i3);
      i1 = paramInt1;
      i2 = paramInt2;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        i1 = paramInt1;
        i2 = paramInt2;
        if (localLayoutParams != null)
        {
          i1 = paramInt1;
          i2 = paramInt2;
          if (a)
          {
            i1 = b & 0x7;
            i4 = b & 0x70;
            i6 = Integer.MIN_VALUE;
            i2 = Integer.MIN_VALUE;
            if ((i4 != 48) && (i4 != 80)) {
              break label333;
            }
            i4 = 1;
            if ((i1 != 3) && (i1 != 5)) {
              break label339;
            }
            i5 = 1;
            label198:
            if (i4 == 0) {
              break label345;
            }
            i1 = 1073741824;
            label208:
            if (width == -2) {
              break label528;
            }
            i6 = 1073741824;
            if (width == -1) {
              break label522;
            }
            i1 = width;
          }
        }
      }
    }
    for (;;)
    {
      int i8;
      if (height != -2)
      {
        i7 = 1073741824;
        i2 = i7;
        if (height != -1)
        {
          i8 = height;
          i2 = i7;
        }
      }
      for (int i7 = i8;; i7 = paramInt2)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i1, i6), View.MeasureSpec.makeMeasureSpec(i7, i2));
        if (i4 != 0)
        {
          i2 = paramInt2 - localView.getMeasuredHeight();
          i1 = paramInt1;
        }
        for (;;)
        {
          i3 += 1;
          paramInt1 = i1;
          paramInt2 = i2;
          break;
          label333:
          i4 = 0;
          break label183;
          label339:
          i5 = 0;
          break label198;
          label345:
          i1 = i6;
          if (i5 == 0) {
            break label208;
          }
          i2 = 1073741824;
          i1 = i6;
          break label208;
          i1 = paramInt1;
          i2 = paramInt2;
          if (i5 != 0)
          {
            i1 = paramInt1 - localView.getMeasuredWidth();
            i2 = paramInt2;
          }
        }
        u = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
        v = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        w = true;
        c();
        w = false;
        i1 = getChildCount();
        paramInt2 = 0;
        while (paramInt2 < i1)
        {
          localView = getChildAt(paramInt2);
          if (localView.getVisibility() != 8)
          {
            localLayoutParams = (LayoutParams)localView.getLayoutParams();
            if ((localLayoutParams == null) || (!a))
            {
              float f1 = paramInt1;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(c * f1), 1073741824), v);
            }
          }
          paramInt2 += 1;
        }
        return;
      }
      label522:
      i1 = paramInt1;
      continue;
      label528:
      i6 = i1;
      i1 = paramInt1;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i3 = -1;
    int i2 = getChildCount();
    int i1;
    if ((paramInt & 0x2) != 0)
    {
      i3 = 1;
      i1 = 0;
    }
    while (i1 != i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        b localb = a(localView);
        if ((localb != null) && (b == i) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i1 = i2 - 1;
          i2 = -1;
          continue;
        }
      }
      i1 += i3;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (h != null)
    {
      h.a(b, c);
      a(a, false, true);
      return;
    }
    j = a;
    k = b;
    l = c;
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    a = i;
    if (h != null) {
      b = h.a();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      a(paramInt1, paramInt3, o, o);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i4 = 0;
    if (P) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((h == null) || (h.b() == 0)) {
      return false;
    }
    if (K == null) {
      K = VelocityTracker.obtain();
    }
    K.addMovement(paramMotionEvent);
    int i1 = i4;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      i1 = i4;
    }
    for (;;)
    {
      if (i1 != 0) {
        ai.d(this);
      }
      return true;
      m.abortAnimation();
      y = false;
      c();
      float f1 = paramMotionEvent.getX();
      H = f1;
      F = f1;
      f1 = paramMotionEvent.getY();
      I = f1;
      G = f1;
      J = t.b(paramMotionEvent, 0);
      i1 = i4;
      continue;
      float f2;
      if (!A)
      {
        i1 = t.a(paramMotionEvent, J);
        f1 = t.c(paramMotionEvent, i1);
        float f3 = Math.abs(f1 - F);
        f2 = t.d(paramMotionEvent, i1);
        float f4 = Math.abs(f2 - G);
        if ((f3 > E) && (f3 > f4))
        {
          A = true;
          c(true);
          if (f1 - H <= 0.0F) {
            break label378;
          }
        }
      }
      Object localObject;
      label378:
      for (f1 = H + E;; f1 = H - E)
      {
        F = f1;
        G = f2;
        setScrollState(1);
        setScrollingCacheEnabled(true);
        localObject = getParent();
        if (localObject != null) {
          ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
        }
        i1 = i4;
        if (!A) {
          break;
        }
        bool1 = false | b(t.c(paramMotionEvent, t.a(paramMotionEvent, J)));
        break;
      }
      boolean bool1 = i4;
      if (A)
      {
        localObject = K;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, M);
        int i2 = (int)ag.a((VelocityTracker)localObject, J);
        y = true;
        i4 = getClientWidth();
        int i5 = getScrollX();
        localObject = i();
        a(a(b, (i5 / i4 - e) / d, i2, (int)(t.c(paramMotionEvent, t.a(paramMotionEvent, J)) - H)), true, true, i2);
        J = -1;
        j();
        boolean bool3 = Q.c();
        boolean bool2 = R.c() | bool3;
        continue;
        bool2 = i4;
        if (A)
        {
          a(i, true, 0, false);
          J = -1;
          j();
          bool3 = Q.c();
          bool2 = R.c() | bool3;
          continue;
          int i3 = t.b(paramMotionEvent);
          F = t.c(paramMotionEvent, i3);
          J = t.b(paramMotionEvent, i3);
          i3 = i4;
          continue;
          a(paramMotionEvent);
          F = t.c(paramMotionEvent, t.a(paramMotionEvent, J));
          i3 = i4;
        }
      }
    }
  }
  
  public void removeView(View paramView)
  {
    if (w)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  public void setAdapter(ac paramac)
  {
    if (h != null)
    {
      h.b(n);
      h.a(this);
      int i1 = 0;
      while (i1 < e.size())
      {
        localObject = (b)e.get(i1);
        h.a(this, b, a);
        i1 += 1;
      }
      h.b(this);
      e.clear();
      g();
      i = 0;
      scrollTo(0, 0);
    }
    Object localObject = h;
    h = paramac;
    b = 0;
    boolean bool;
    if (h != null)
    {
      if (n == null) {
        n = new g(null);
      }
      h.a(n);
      y = false;
      bool = S;
      S = true;
      b = h.b();
      if (j < 0) {
        break label260;
      }
      h.a(k, l);
      a(j, false, true);
      j = -1;
      k = null;
      l = null;
    }
    for (;;)
    {
      if ((ac != null) && (localObject != paramac)) {
        ac.a((ac)localObject, paramac);
      }
      return;
      label260:
      if (!bool) {
        c();
      } else {
        requestLayout();
      }
    }
  }
  
  void setChildrenDrawingOrderEnabledCompat(boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT < 7) || (ae == null)) {}
    try
    {
      ae = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          ae.invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
          return;
        }
        catch (Exception localException)
        {
          Log.e("ViewPager", "Error changing children drawing order", localException);
        }
        localNoSuchMethodException = localNoSuchMethodException;
        Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", localNoSuchMethodException);
      }
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    y = false;
    if (!S) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < 1)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to " + 1);
      i1 = 1;
    }
    if (i1 != z)
    {
      z = i1;
      c();
    }
  }
  
  void setOnAdapterChangeListener(d paramd)
  {
    ac = paramd;
  }
  
  @Deprecated
  public void setOnPageChangeListener(e parame)
  {
    aa = parame;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i1 = o;
    o = paramInt;
    int i2 = getWidth();
    a(i2, i2, paramInt, i1);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    p = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    if (paramDrawable == null) {}
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == p);
  }
  
  public static class LayoutParams
    extends ViewGroup.LayoutParams
  {
    public boolean a;
    public int b;
    float c = 0.0F;
    boolean d;
    int e;
    int f;
    
    public LayoutParams()
    {
      super(-1);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.f());
      b = paramContext.getInteger(0, 48);
      paramContext.recycle();
    }
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = e.a(new f()
    {
      public ViewPager.SavedState b(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new ViewPager.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public ViewPager.SavedState[] b(int paramAnonymousInt)
      {
        return new ViewPager.SavedState[paramAnonymousInt];
      }
    });
    int a;
    Parcelable b;
    ClassLoader c;
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super();
      ClassLoader localClassLoader = paramClassLoader;
      if (paramClassLoader == null) {
        localClassLoader = getClass().getClassLoader();
      }
      a = paramParcel.readInt();
      b = paramParcel.readParcelable(localClassLoader);
      c = localClassLoader;
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + a + "}";
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
      paramParcel.writeParcelable(b, paramInt);
    }
  }
  
  static abstract interface a {}
  
  static class b
  {
    Object a;
    int b;
    boolean c;
    float d;
    float e;
  }
  
  class c
    extends a
  {
    c() {}
    
    private boolean b()
    {
      return (ViewPager.a(ViewPager.this) != null) && (ViewPager.a(ViewPager.this).b() > 1);
    }
    
    public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.a(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ViewPager.class.getName());
      paramView = m.a();
      paramView.a(b());
      if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.a(ViewPager.this) != null))
      {
        paramView.a(ViewPager.a(ViewPager.this).b());
        paramView.b(ViewPager.b(ViewPager.this));
        paramView.c(ViewPager.b(ViewPager.this));
      }
    }
    
    public void a(View paramView, c paramc)
    {
      super.a(paramView, paramc);
      paramc.b(ViewPager.class.getName());
      paramc.i(b());
      if (canScrollHorizontally(1)) {
        paramc.a(4096);
      }
      if (canScrollHorizontally(-1)) {
        paramc.a(8192);
      }
    }
    
    public boolean a(View paramView, int paramInt, Bundle paramBundle)
    {
      if (super.a(paramView, paramInt, paramBundle)) {
        return true;
      }
      switch (paramInt)
      {
      default: 
        return false;
      case 4096: 
        if (canScrollHorizontally(1))
        {
          setCurrentItem(ViewPager.b(ViewPager.this) + 1);
          return true;
        }
        return false;
      }
      if (canScrollHorizontally(-1))
      {
        setCurrentItem(ViewPager.b(ViewPager.this) - 1);
        return true;
      }
      return false;
    }
  }
  
  static abstract interface d
  {
    public abstract void a(ac paramac1, ac paramac2);
  }
  
  public static abstract interface e
  {
    public abstract void a(int paramInt);
    
    public abstract void a(int paramInt1, float paramFloat, int paramInt2);
    
    public abstract void b(int paramInt);
  }
  
  public static abstract interface f
  {
    public abstract void a(View paramView, float paramFloat);
  }
  
  private class g
    extends DataSetObserver
  {
    private g() {}
    
    public void onChanged()
    {
      b();
    }
    
    public void onInvalidated()
    {
      b();
    }
  }
  
  public static class h
    implements ViewPager.e
  {
    public void a(int paramInt) {}
    
    public void a(int paramInt1, float paramFloat, int paramInt2) {}
    
    public void b(int paramInt) {}
  }
  
  static class i
    implements Comparator<View>
  {
    public int a(View paramView1, View paramView2)
    {
      paramView1 = (ViewPager.LayoutParams)paramView1.getLayoutParams();
      paramView2 = (ViewPager.LayoutParams)paramView2.getLayoutParams();
      if (a != a)
      {
        if (a) {
          return 1;
        }
        return -1;
      }
      return e - e;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */