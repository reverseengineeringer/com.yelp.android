package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.widget.aa;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager
  extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private static final dz ag = new dz();
  private static final Comparator<dr> c = new dn();
  private static final Interpolator d = new do();
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
  private aa Q;
  private aa R;
  private boolean S = true;
  private boolean T = false;
  private boolean U;
  private int V;
  private du W;
  private du aa;
  private dt ab;
  private dv ac;
  private Method ad;
  private int ae;
  private ArrayList<View> af;
  private final Runnable ah = new dp(this);
  private int ai = 0;
  private int b;
  private final ArrayList<dr> e = new ArrayList();
  private final dr f = new dr();
  private final Rect g = new Rect();
  private bo h;
  private int i;
  private int j = -1;
  private Parcelable k = null;
  private ClassLoader l = null;
  private Scroller m;
  private dw n;
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
          dr localdr1 = (dr)e.get(0);
          dr localdr2 = (dr)e.get(e.size() - 1);
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
        localdr = b(i);
        m.startScroll(paramInt2, 0, (int)(e * paramInt1), 0, paramInt3 - paramInt4);
      }
      return;
    }
    dr localdr = b(i);
    if (localdr != null) {}
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
    dr localdr = b(paramInt1);
    float f1;
    if (localdr != null) {
      f1 = getClientWidth();
    }
    for (int i1 = (int)(Math.max(s, Math.min(e, t)) * f1);; i1 = 0)
    {
      if (paramBoolean1)
      {
        a(i1, 0, paramInt2);
        if ((paramBoolean2) && (W != null)) {
          W.a(paramInt1);
        }
        if ((paramBoolean2) && (aa != null)) {
          aa.a(paramInt1);
        }
        return;
      }
      if ((paramBoolean2) && (W != null)) {
        W.a(paramInt1);
      }
      if ((paramBoolean2) && (aa != null)) {
        aa.a(paramInt1);
      }
      a(false);
      scrollTo(i1, 0);
      d(i1);
      return;
    }
  }
  
  private void a(dr paramdr1, int paramInt, dr paramdr2)
  {
    int i4 = h.getCount();
    int i1 = getClientWidth();
    float f2;
    if (i1 > 0)
    {
      f2 = o / i1;
      if (paramdr2 == null) {
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
        for (paramdr2 = (dr)e.get(i2);; paramdr2 = (dr)e.get(i2))
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
          f3 += h.getPageWidth(i3) + f2;
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
        for (paramdr2 = (dr)e.get(i2);; paramdr2 = (dr)e.get(i2))
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
          f3 -= h.getPageWidth(i3) + f2;
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
      paramdr2 = (dr)e.get(i2);
      for (;;)
      {
        if (i1 > b)
        {
          f1 -= h.getPageWidth(i1) + f2;
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
      paramdr1 = (dr)e.get(i1);
      while (paramInt < b)
      {
        f1 = h.getPageWidth(paramInt) + f2 + f1;
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
    int i1 = ba.b(paramMotionEvent);
    if (ba.b(paramMotionEvent, i1) == J) {
      if (i1 != 0) {
        break label56;
      }
    }
    label56:
    for (i1 = 1;; i1 = 0)
    {
      F = ba.c(paramMotionEvent, i1);
      J = ba.b(paramMotionEvent, i1);
      if (K != null) {
        K.clear();
      }
      return;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (ai == 2) {}
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
        dr localdr = (dr)e.get(i1);
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
        ce.a(this, ah);
      }
    }
    else {
      return;
    }
    ah.run();
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    return ((paramFloat1 < D) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - D) && (paramFloat2 < 0.0F));
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
        ce.a(getChildAt(i1), i2, null);
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
    dr localdr1 = (dr)e.get(0);
    dr localdr2 = (dr)e.get(e.size() - 1);
    if (b != 0) {
      paramFloat = e * i3;
    }
    for (int i1 = 0;; i1 = 1)
    {
      if (b != h.getCount() - 1)
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
      dr localdr = i();
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
    if (ae != 0)
    {
      if (af == null) {
        af = new ArrayList();
      }
      for (;;)
      {
        int i2 = getChildCount();
        int i1 = 0;
        while (i1 < i2)
        {
          View localView = getChildAt(i1);
          af.add(localView);
          i1 += 1;
        }
        af.clear();
      }
      Collections.sort(af, ag);
    }
  }
  
  private dr i()
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
    dr localdr;
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
        localdr = (dr)e.get(i1);
        if ((i2 != 0) || (b == i3 + 1)) {
          break label249;
        }
        localdr = f;
        e = (f4 + f3 + f2);
        b = (i3 + 1);
        d = h.getPageWidth(b);
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
        localObject2 = localdr;
      }
      return (dr)localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      i3 = b;
      f4 = d;
      i2 = 0;
      i1 += 1;
      localObject1 = localdr;
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
    if (ai == paramInt) {
      return;
    }
    ai = paramInt;
    if (ac != null) {
      if (paramInt == 0) {
        break label50;
      }
    }
    label50:
    for (boolean bool = true;; bool = false)
    {
      b(bool);
      if (W == null) {
        break;
      }
      W.b(paramInt);
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
  
  dr a(int paramInt1, int paramInt2)
  {
    dr localdr = new dr();
    b = paramInt1;
    a = h.instantiateItem(this, paramInt1);
    d = h.getPageWidth(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= e.size()))
    {
      e.add(localdr);
      return localdr;
    }
    e.add(paramInt2, localdr);
    return localdr;
  }
  
  dr a(View paramView)
  {
    int i1 = 0;
    while (i1 < e.size())
    {
      dr localdr = (dr)e.get(i1);
      if (h.isViewFromObject(paramView, a)) {
        return localdr;
      }
      i1 += 1;
    }
    return null;
  }
  
  du a(du paramdu)
  {
    du localdu = aa;
    aa = paramdu;
    return localdu;
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
    E = cx.a(localViewConfiguration);
    L = ((int)(400.0F * f1));
    M = localViewConfiguration.getScaledMaximumFlingVelocity();
    Q = new aa(localContext);
    R = new aa(localContext);
    N = ((int)(25.0F * f1));
    O = ((int)(2.0F * f1));
    C = ((int)(16.0F * f1));
    ce.a(this, new ds(this));
    if (ce.e(this) == 0) {
      ce.c(this, 1);
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
      h.startUpdate(this);
      paramInt = z;
      int i8 = Math.max(0, i - paramInt);
      int i6 = h.getCount();
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
        localObject1 = (dr)e.get(paramInt);
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
            localObject1 = (dr)e.get(i5);
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
              localObject1 = (dr)e.get(paramInt);
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
            a((dr)localObject3, i3, (dr)localObject2);
            localObject2 = h;
            paramInt = i;
            if (localObject3 == null) {
              break label1145;
            }
            localObject1 = a;
            ((bo)localObject2).setPrimaryItem(this, paramInt, localObject1);
            h.finishUpdate(this);
            i1 = getChildCount();
            paramInt = 0;
            while (paramInt < i1)
            {
              localObject2 = getChildAt(paramInt);
              localObject1 = (ViewPager.LayoutParams)((View)localObject2).getLayoutParams();
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
                h.destroyItem(this, i4, a);
                paramInt = i5 - 1;
                i1 = i3 - 1;
                if (paramInt < 0) {
                  break label792;
                }
                localObject1 = (dr)e.get(paramInt);
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
                  localObject1 = (dr)e.get(paramInt);
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
                  localObject1 = (dr)e.get(i5);
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
            h.destroyItem(this, i1, a);
            if (paramInt < e.size()) {
              localObject1 = (dr)e.get(paramInt);
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
              for (localObject1 = (dr)e.get(paramInt);; localObject1 = null)
              {
                f1 += f3;
                break;
              }
            }
            localObject1 = a(i1, paramInt);
            paramInt += 1;
            f3 = d;
            if (paramInt < e.size()) {}
            for (localObject1 = (dr)e.get(paramInt);; localObject1 = null)
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
        ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
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
    if (W != null) {
      W.a(paramInt1, paramFloat, paramInt2);
    }
    if (aa != null) {
      aa.a(paramInt1, paramFloat, paramInt2);
    }
    if (ac != null)
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
          ac.a(localView, paramFloat);
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
      ce.d(this);
      return;
      f1 = paramInt1;
      f2 = h.getPageWidth(i);
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
    if ((h == null) || (h.getCount() <= 0))
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
      if (paramInt1 >= h.getCount()) {
        i1 = h.getCount() - 1;
      }
    }
    paramBoolean2 = bool;
    if (i != i1) {
      paramBoolean2 = true;
    }
    if (S)
    {
      i = i1;
      if ((paramBoolean2) && (W != null)) {
        W.a(i1);
      }
      if ((paramBoolean2) && (aa != null)) {
        aa.a(i1);
      }
      requestLayout();
      return;
    }
    a(i1);
    a(i1, paramBoolean1, paramInt2, paramBoolean2);
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
      if (v.a(paramKeyEvent)) {
        return c(2);
      }
    } while (!v.a(paramKeyEvent, 1));
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
    while ((paramBoolean) && (ce.a(paramView, -paramInt1)))
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
          dr localdr = a(localView);
          if ((localdr != null) && (b == i)) {
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
        dr localdr = a(localView);
        if ((localdr != null) && (b == i)) {
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
      ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)paramLayoutParams;
      a |= paramView instanceof dq;
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
  
  dr b(int paramInt)
  {
    int i1 = 0;
    while (i1 < e.size())
    {
      dr localdr = (dr)e.get(i1);
      if (b == paramInt) {
        return localdr;
      }
      i1 += 1;
    }
    return null;
  }
  
  dr b(View paramView)
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
  
  void b()
  {
    int i7 = h.getCount();
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
      localObject = (dr)e.get(i3);
      i5 = h.getItemPosition(a);
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
          h.startUpdate(this);
          i3 = 1;
        }
        h.destroyItem(this, b, a);
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
            h.finishUpdate(this);
          }
          Collections.sort(e, c);
          if (i4 != 0)
          {
            i3 = getChildCount();
            i2 = 0;
            while (i2 < i3)
            {
              localObject = (ViewPager.LayoutParams)getChildAt(i2).getLayoutParams();
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
    return ((paramLayoutParams instanceof ViewPager.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
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
      ce.d(this);
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
        dr localdr = a(localView);
        if ((localdr != null) && (b == i) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
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
    int i4 = ce.a(this);
    boolean bool;
    if ((i4 == 0) || ((i4 == 1) && (h != null) && (h.getCount() > 1)))
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
        ce.d(this);
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
    if ((h != null) && (i < h.getCount() - 1))
    {
      a(i + 1, true);
      return true;
    }
    return false;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewPager.LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewPager.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public bo getAdapter()
  {
    return h;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i1 = paramInt2;
    if (ae == 2) {
      i1 = paramInt1 - 1 - paramInt2;
    }
    return af.get(i1)).getLayoutParams()).f;
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
    removeCallbacks(ah);
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
      localObject = (dr)e.get(0);
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
          localObject = (dr)((ArrayList)localObject).get(i2);
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
        f4 = h.getPageWidth(i1);
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
        i1 = ba.a(paramMotionEvent, i1);
        float f2 = ba.c(paramMotionEvent, i1);
        float f1 = f2 - F;
        float f4 = Math.abs(f1);
        float f3 = ba.d(paramMotionEvent, i1);
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
          ce.d(this);
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
        J = ba.b(paramMotionEvent, 0);
        B = false;
        m.computeScrollOffset();
        if ((ai == 2) && (Math.abs(m.getFinalX() - m.getCurrX()) > O))
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
    ViewPager.LayoutParams localLayoutParams;
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
      localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
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
          localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
          if (!a)
          {
            dr localdr = a(localView);
            if (localdr != null)
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
    ViewPager.LayoutParams localLayoutParams;
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
        localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
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
            localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
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
        dr localdr = a(localView);
        if ((localdr != null) && (b == i) && (localView.requestFocus(paramInt, paramRect)))
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
    if (!(paramParcelable instanceof ViewPager.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (ViewPager.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (h != null)
    {
      h.restoreState(adapterState, loader);
      a(position, false, true);
      return;
    }
    j = position;
    k = adapterState;
    l = loader;
  }
  
  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    position = i;
    if (h != null) {
      adapterState = h.saveState();
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
    if ((h == null) || (h.getCount() == 0)) {
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
        ce.d(this);
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
      J = ba.b(paramMotionEvent, 0);
      i1 = i4;
      continue;
      float f2;
      if (!A)
      {
        i1 = ba.a(paramMotionEvent, J);
        f1 = ba.c(paramMotionEvent, i1);
        float f3 = Math.abs(f1 - F);
        f2 = ba.d(paramMotionEvent, i1);
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
        bool1 = false | b(ba.c(paramMotionEvent, ba.a(paramMotionEvent, J)));
        break;
      }
      boolean bool1 = i4;
      if (A)
      {
        localObject = K;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, M);
        int i2 = (int)bz.a((VelocityTracker)localObject, J);
        y = true;
        i4 = getClientWidth();
        int i5 = getScrollX();
        localObject = i();
        a(a(b, (i5 / i4 - e) / d, i2, (int)(ba.c(paramMotionEvent, ba.a(paramMotionEvent, J)) - H)), true, true, i2);
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
          int i3 = ba.b(paramMotionEvent);
          F = ba.c(paramMotionEvent, i3);
          J = ba.b(paramMotionEvent, i3);
          i3 = i4;
          continue;
          a(paramMotionEvent);
          F = ba.c(paramMotionEvent, ba.a(paramMotionEvent, J));
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
  
  public void setAdapter(bo parambo)
  {
    if (h != null)
    {
      h.unregisterDataSetObserver(n);
      h.startUpdate(this);
      int i1 = 0;
      while (i1 < e.size())
      {
        localObject = (dr)e.get(i1);
        h.destroyItem(this, b, a);
        i1 += 1;
      }
      h.finishUpdate(this);
      e.clear();
      g();
      i = 0;
      scrollTo(0, 0);
    }
    Object localObject = h;
    h = parambo;
    b = 0;
    boolean bool;
    if (h != null)
    {
      if (n == null) {
        n = new dw(this, null);
      }
      h.registerDataSetObserver(n);
      y = false;
      bool = S;
      S = true;
      b = h.getCount();
      if (j < 0) {
        break label260;
      }
      h.restoreState(k, l);
      a(j, false, true);
      j = -1;
      k = null;
      l = null;
    }
    for (;;)
    {
      if ((ab != null) && (localObject != parambo)) {
        ab.a((bo)localObject, parambo);
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
    if ((Build.VERSION.SDK_INT < 7) || (ad == null)) {}
    try
    {
      ad = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          ad.invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
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
  
  void setOnAdapterChangeListener(dt paramdt)
  {
    ab = paramdt;
  }
  
  public void setOnPageChangeListener(du paramdu)
  {
    W = paramdu;
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
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */