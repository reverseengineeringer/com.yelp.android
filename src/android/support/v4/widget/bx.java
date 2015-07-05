package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ba;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public class bx
{
  private static final Interpolator v = new by();
  private int a;
  private int b;
  private int c = -1;
  private float[] d;
  private float[] e;
  private float[] f;
  private float[] g;
  private int[] h;
  private int[] i;
  private int[] j;
  private int k;
  private VelocityTracker l;
  private float m;
  private float n;
  private int o;
  private int p;
  private ax q;
  private final ca r;
  private View s;
  private boolean t;
  private final ViewGroup u;
  private final Runnable w = new bz(this);
  
  private bx(Context paramContext, ViewGroup paramViewGroup, ca paramca)
  {
    if (paramViewGroup == null) {
      throw new IllegalArgumentException("Parent view may not be null");
    }
    if (paramca == null) {
      throw new IllegalArgumentException("Callback may not be null");
    }
    u = paramViewGroup;
    r = paramca;
    paramViewGroup = ViewConfiguration.get(paramContext);
    o = ((int)(getResourcesgetDisplayMetricsdensity * 20.0F + 0.5F));
    b = paramViewGroup.getScaledTouchSlop();
    m = paramViewGroup.getScaledMaximumFlingVelocity();
    n = paramViewGroup.getScaledMinimumFlingVelocity();
    q = ax.a(paramContext, v);
  }
  
  private float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = Math.abs(paramFloat1);
    if (f1 < paramFloat2) {
      paramFloat2 = 0.0F;
    }
    do
    {
      return paramFloat2;
      if (f1 <= paramFloat3) {
        break;
      }
      paramFloat2 = paramFloat3;
    } while (paramFloat1 > 0.0F);
    return -paramFloat3;
    return paramFloat1;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i1 = u.getWidth();
    int i2 = i1 / 2;
    float f3 = Math.min(1.0F, Math.abs(paramInt1) / i1);
    float f1 = i2;
    float f2 = i2;
    f3 = b(f3);
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {}
    for (paramInt1 = Math.round(Math.abs((f3 * f2 + f1) / paramInt2) * 1000.0F) * 4;; paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F)) {
      return Math.min(paramInt1, 600);
    }
  }
  
  private int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = b(paramInt3, (int)n, (int)m);
    paramInt4 = b(paramInt4, (int)n, (int)m);
    int i1 = Math.abs(paramInt1);
    int i2 = Math.abs(paramInt2);
    int i3 = Math.abs(paramInt3);
    int i4 = Math.abs(paramInt4);
    int i5 = i3 + i4;
    int i6 = i1 + i2;
    float f1;
    if (paramInt3 != 0)
    {
      f1 = i3 / i5;
      if (paramInt4 == 0) {
        break label165;
      }
    }
    label165:
    for (float f2 = i4 / i5;; f2 = i2 / i6)
    {
      paramInt1 = a(paramInt1, paramInt3, r.a(paramView));
      paramInt2 = a(paramInt2, paramInt4, r.b(paramView));
      float f3 = paramInt1;
      return (int)(f2 * paramInt2 + f1 * f3);
      f1 = i1 / i6;
      break;
    }
  }
  
  public static bx a(ViewGroup paramViewGroup, float paramFloat, ca paramca)
  {
    paramViewGroup = a(paramViewGroup, paramca);
    b = ((int)(b * (1.0F / paramFloat)));
    return paramViewGroup;
  }
  
  public static bx a(ViewGroup paramViewGroup, ca paramca)
  {
    return new bx(paramViewGroup.getContext(), paramViewGroup, paramca);
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    t = true;
    r.a(s, paramFloat1, paramFloat2);
    t = false;
    if (a == 1) {
      c(0);
    }
  }
  
  private void a(float paramFloat1, float paramFloat2, int paramInt)
  {
    f(paramInt);
    float[] arrayOfFloat = d;
    f[paramInt] = paramFloat1;
    arrayOfFloat[paramInt] = paramFloat1;
    arrayOfFloat = e;
    g[paramInt] = paramFloat2;
    arrayOfFloat[paramInt] = paramFloat2;
    h[paramInt] = e((int)paramFloat1, (int)paramFloat2);
    k |= 1 << paramInt;
  }
  
  private boolean a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    if (((h[paramInt1] & paramInt2) != paramInt2) || ((p & paramInt2) == 0) || ((j[paramInt1] & paramInt2) == paramInt2) || ((i[paramInt1] & paramInt2) == paramInt2) || ((paramFloat1 <= b) && (paramFloat2 <= b))) {}
    do
    {
      return false;
      if ((paramFloat1 < paramFloat2 * 0.5F) && (r.b(paramInt2)))
      {
        int[] arrayOfInt = j;
        arrayOfInt[paramInt1] |= paramInt2;
        return false;
      }
    } while (((i[paramInt1] & paramInt2) != 0) || (paramFloat1 <= b));
    return true;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = s.getLeft();
    int i2 = s.getTop();
    paramInt1 -= i1;
    paramInt2 -= i2;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      q.h();
      c(0);
      return false;
    }
    paramInt3 = a(s, paramInt1, paramInt2, paramInt3, paramInt4);
    q.a(i1, i2, paramInt1, paramInt2, paramInt3);
    c(2);
    return true;
  }
  
  private boolean a(View paramView, float paramFloat1, float paramFloat2)
  {
    boolean bool = true;
    if (paramView == null) {
      bool = false;
    }
    label27:
    label80:
    label86:
    do
    {
      int i2;
      do
      {
        return bool;
        int i1;
        if (r.a(paramView) > 0)
        {
          i1 = 1;
          if (r.b(paramView) <= 0) {
            break label80;
          }
        }
        for (i2 = 1;; i2 = 0)
        {
          if ((i1 == 0) || (i2 == 0)) {
            break label86;
          }
          if (paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 > b * b) {
            break;
          }
          return false;
          i1 = 0;
          break label27;
        }
        if (i1 == 0) {
          break;
        }
      } while (Math.abs(paramFloat1) > b);
      return false;
      if (i2 == 0) {
        break;
      }
    } while (Math.abs(paramFloat2) > b);
    return false;
    return false;
  }
  
  private float b(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = Math.abs(paramInt1);
    if (i1 < paramInt2) {
      paramInt2 = 0;
    }
    do
    {
      return paramInt2;
      if (i1 <= paramInt3) {
        break;
      }
      paramInt2 = paramInt3;
    } while (paramInt1 > 0);
    return -paramInt3;
    return paramInt1;
  }
  
  private void b(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i2 = 1;
    if (a(paramFloat1, paramFloat2, paramInt, 1)) {}
    for (;;)
    {
      int i1 = i2;
      if (a(paramFloat2, paramFloat1, paramInt, 4)) {
        i1 = i2 | 0x4;
      }
      i2 = i1;
      if (a(paramFloat1, paramFloat2, paramInt, 2)) {
        i2 = i1 | 0x2;
      }
      i1 = i2;
      if (a(paramFloat2, paramFloat1, paramInt, 8)) {
        i1 = i2 | 0x8;
      }
      if (i1 != 0)
      {
        int[] arrayOfInt = i;
        arrayOfInt[paramInt] |= i1;
        r.b(i1, paramInt);
      }
      return;
      i2 = 0;
    }
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = s.getLeft();
    int i2 = s.getTop();
    if (paramInt3 != 0)
    {
      paramInt1 = r.a(s, paramInt1, paramInt3);
      s.offsetLeftAndRight(paramInt1 - i1);
    }
    for (;;)
    {
      if (paramInt4 != 0)
      {
        paramInt2 = r.b(s, paramInt2, paramInt4);
        s.offsetTopAndBottom(paramInt2 - i2);
      }
      for (;;)
      {
        if ((paramInt3 != 0) || (paramInt4 != 0)) {
          r.a(s, paramInt1, paramInt2, paramInt1 - i1, paramInt2 - i2);
        }
        return;
      }
    }
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    int i2 = ba.c(paramMotionEvent);
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = ba.b(paramMotionEvent, i1);
      float f1 = ba.c(paramMotionEvent, i1);
      float f2 = ba.d(paramMotionEvent, i1);
      f[i3] = f1;
      g[i3] = f2;
      i1 += 1;
    }
  }
  
  private int e(int paramInt1, int paramInt2)
  {
    int i2 = 0;
    if (paramInt1 < u.getLeft() + o) {
      i2 = 1;
    }
    int i1 = i2;
    if (paramInt2 < u.getTop() + o) {
      i1 = i2 | 0x4;
    }
    i2 = i1;
    if (paramInt1 > u.getRight() - o) {
      i2 = i1 | 0x2;
    }
    paramInt1 = i2;
    if (paramInt2 > u.getBottom() - o) {
      paramInt1 = i2 | 0x8;
    }
    return paramInt1;
  }
  
  private void e(int paramInt)
  {
    if (d == null) {
      return;
    }
    d[paramInt] = 0.0F;
    e[paramInt] = 0.0F;
    f[paramInt] = 0.0F;
    g[paramInt] = 0.0F;
    h[paramInt] = 0;
    i[paramInt] = 0;
    j[paramInt] = 0;
    k &= (1 << paramInt ^ 0xFFFFFFFF);
  }
  
  private void f(int paramInt)
  {
    if ((d == null) || (d.length <= paramInt))
    {
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      float[] arrayOfFloat4 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (d != null)
      {
        System.arraycopy(d, 0, arrayOfFloat1, 0, d.length);
        System.arraycopy(e, 0, arrayOfFloat2, 0, e.length);
        System.arraycopy(f, 0, arrayOfFloat3, 0, f.length);
        System.arraycopy(g, 0, arrayOfFloat4, 0, g.length);
        System.arraycopy(h, 0, arrayOfInt1, 0, h.length);
        System.arraycopy(i, 0, arrayOfInt2, 0, i.length);
        System.arraycopy(j, 0, arrayOfInt3, 0, j.length);
      }
      d = arrayOfFloat1;
      e = arrayOfFloat2;
      f = arrayOfFloat3;
      g = arrayOfFloat4;
      h = arrayOfInt1;
      i = arrayOfInt2;
      j = arrayOfInt3;
    }
  }
  
  private void g()
  {
    if (d == null) {
      return;
    }
    Arrays.fill(d, 0.0F);
    Arrays.fill(e, 0.0F);
    Arrays.fill(f, 0.0F);
    Arrays.fill(g, 0.0F);
    Arrays.fill(h, 0);
    Arrays.fill(i, 0);
    Arrays.fill(j, 0);
    k = 0;
  }
  
  private void h()
  {
    l.computeCurrentVelocity(1000, m);
    a(a(android.support.v4.view.bz.a(l, c), n, m), a(android.support.v4.view.bz.b(l, c), n, m));
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(float paramFloat)
  {
    n = paramFloat;
  }
  
  public void a(int paramInt)
  {
    p = paramInt;
  }
  
  public void a(View paramView, int paramInt)
  {
    if (paramView.getParent() != u) {
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + u + ")");
    }
    s = paramView;
    c = paramInt;
    r.b(paramView, paramInt);
    c(1);
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    if (!t) {
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }
    return a(paramInt1, paramInt2, (int)android.support.v4.view.bz.a(l, c), (int)android.support.v4.view.bz.b(l, c));
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    int i2 = ba.a(paramMotionEvent);
    int i1 = ba.b(paramMotionEvent);
    if (i2 == 0) {
      e();
    }
    if (l == null) {
      l = VelocityTracker.obtain();
    }
    l.addMovement(paramMotionEvent);
    switch (i2)
    {
    }
    while (a == 1)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      i1 = ba.b(paramMotionEvent, 0);
      a(f1, f2, i1);
      paramMotionEvent = d((int)f1, (int)f2);
      if ((paramMotionEvent == s) && (a == 2)) {
        b(paramMotionEvent, i1);
      }
      i2 = h[i1];
      if ((p & i2) != 0)
      {
        r.a(i2 & p, i1);
        continue;
        i2 = ba.b(paramMotionEvent, i1);
        f1 = ba.c(paramMotionEvent, i1);
        f2 = ba.d(paramMotionEvent, i1);
        a(f1, f2, i2);
        if (a == 0)
        {
          i1 = h[i2];
          if ((p & i1) != 0) {
            r.a(i1 & p, i2);
          }
        }
        else if (a == 2)
        {
          paramMotionEvent = d((int)f1, (int)f2);
          if (paramMotionEvent == s)
          {
            b(paramMotionEvent, i2);
            continue;
            if ((d != null) && (e != null))
            {
              int i3 = ba.c(paramMotionEvent);
              i1 = 0;
              for (;;)
              {
                int i4;
                float f3;
                float f4;
                View localView;
                if (i1 < i3)
                {
                  i4 = ba.b(paramMotionEvent, i1);
                  f1 = ba.c(paramMotionEvent, i1);
                  f2 = ba.d(paramMotionEvent, i1);
                  f3 = f1 - d[i4];
                  f4 = f2 - e[i4];
                  localView = d((int)f1, (int)f2);
                  if ((localView == null) || (!a(localView, f3, f4))) {
                    break label541;
                  }
                  i2 = 1;
                  label410:
                  if (i2 == 0) {
                    break label547;
                  }
                  int i5 = localView.getLeft();
                  int i6 = (int)f3;
                  i6 = r.a(localView, i6 + i5, (int)f3);
                  int i7 = localView.getTop();
                  int i8 = (int)f4;
                  i8 = r.b(localView, i8 + i7, (int)f4);
                  int i9 = r.a(localView);
                  int i10 = r.b(localView);
                  if (((i9 != 0) && ((i9 <= 0) || (i6 != i5))) || ((i10 != 0) && ((i10 <= 0) || (i8 != i7)))) {
                    break label547;
                  }
                }
                label541:
                label547:
                do
                {
                  c(paramMotionEvent);
                  break;
                  i2 = 0;
                  break label410;
                  b(f3, f4, i4);
                } while ((a == 1) || ((i2 != 0) && (b(localView, i4))));
                i1 += 1;
              }
              e(ba.b(paramMotionEvent, i1));
              continue;
              e();
            }
          }
        }
      }
    }
    return false;
  }
  
  public boolean a(View paramView, int paramInt1, int paramInt2)
  {
    s = paramView;
    c = -1;
    boolean bool = a(paramInt1, paramInt2, 0, 0);
    if ((!bool) && (a == 0) && (s != null)) {
      s = null;
    }
    return bool;
  }
  
  public boolean a(boolean paramBoolean)
  {
    boolean bool;
    if (a == 2)
    {
      bool = q.g();
      int i1 = q.b();
      int i2 = q.c();
      int i3 = i1 - s.getLeft();
      int i4 = i2 - s.getTop();
      if (i3 != 0) {
        s.offsetLeftAndRight(i3);
      }
      if (i4 != 0) {
        s.offsetTopAndBottom(i4);
      }
      if ((i3 != 0) || (i4 != 0)) {
        r.a(s, i1, i2, i3, i4);
      }
      if ((!bool) || (i1 != q.d()) || (i2 != q.e())) {
        break label188;
      }
      q.h();
      bool = false;
    }
    label178:
    label188:
    for (;;)
    {
      if (!bool)
      {
        if (!paramBoolean) {
          break label178;
        }
        u.post(w);
      }
      while (a == 2)
      {
        return true;
        c(0);
      }
      return false;
    }
  }
  
  public int b()
  {
    return o;
  }
  
  public void b(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    int i2 = 0;
    int i4 = ba.a(paramMotionEvent);
    int i3 = ba.b(paramMotionEvent);
    if (i4 == 0) {
      e();
    }
    if (l == null) {
      l = VelocityTracker.obtain();
    }
    l.addMovement(paramMotionEvent);
    float f1;
    float f2;
    switch (i4)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
      do
      {
        do
        {
          do
          {
            return;
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            i1 = ba.b(paramMotionEvent, 0);
            paramMotionEvent = d((int)f1, (int)f2);
            a(f1, f2, i1);
            b(paramMotionEvent, i1);
            i2 = h[i1];
          } while ((p & i2) == 0);
          r.a(i2 & p, i1);
          return;
          i1 = ba.b(paramMotionEvent, i3);
          f1 = ba.c(paramMotionEvent, i3);
          f2 = ba.d(paramMotionEvent, i3);
          a(f1, f2, i1);
          if (a != 0) {
            break;
          }
          b(d((int)f1, (int)f2), i1);
          i2 = h[i1];
        } while ((p & i2) == 0);
        r.a(i2 & p, i1);
        return;
      } while (!c((int)f1, (int)f2));
      b(s, i1);
      return;
    case 2: 
      if (a == 1)
      {
        i1 = ba.a(paramMotionEvent, c);
        f1 = ba.c(paramMotionEvent, i1);
        f2 = ba.d(paramMotionEvent, i1);
        i1 = (int)(f1 - f[c]);
        i2 = (int)(f2 - g[c]);
        b(s.getLeft() + i1, s.getTop() + i2, i1, i2);
        c(paramMotionEvent);
        return;
      }
      i3 = ba.c(paramMotionEvent);
      i1 = i2;
      for (;;)
      {
        float f3;
        float f4;
        if (i1 < i3)
        {
          i2 = ba.b(paramMotionEvent, i1);
          f1 = ba.c(paramMotionEvent, i1);
          f2 = ba.d(paramMotionEvent, i1);
          f3 = f1 - d[i2];
          f4 = f2 - e[i2];
          b(f3, f4, i2);
          if (a != 1) {
            break label461;
          }
        }
        View localView;
        do
        {
          c(paramMotionEvent);
          return;
          localView = d((int)f1, (int)f2);
        } while ((a(localView, f3, f4)) && (b(localView, i2)));
        i1 += 1;
      }
    case 6: 
      label461:
      i2 = ba.b(paramMotionEvent, i3);
      if ((a == 1) && (i2 == c))
      {
        i3 = ba.c(paramMotionEvent);
        if (i1 >= i3) {
          break label669;
        }
        i4 = ba.b(paramMotionEvent, i1);
        if (i4 == c) {}
        do
        {
          i1 += 1;
          break;
          f1 = ba.c(paramMotionEvent, i1);
          f2 = ba.d(paramMotionEvent, i1);
        } while ((d((int)f1, (int)f2) != s) || (!b(s, i4)));
      }
      break;
    }
    label669:
    for (i1 = c;; i1 = -1)
    {
      if (i1 == -1) {
        h();
      }
      e(i2);
      return;
      if (a == 1) {
        h();
      }
      e();
      return;
      if (a == 1) {
        a(0.0F, 0.0F);
      }
      e();
      return;
    }
  }
  
  public boolean b(int paramInt)
  {
    return (k & 1 << paramInt) != 0;
  }
  
  public boolean b(int paramInt1, int paramInt2)
  {
    boolean bool = true;
    if (!b(paramInt2)) {
      bool = false;
    }
    label27:
    float f2;
    label105:
    label110:
    do
    {
      float f1;
      do
      {
        return bool;
        int i1;
        if ((paramInt1 & 0x1) == 1)
        {
          i1 = 1;
          if ((paramInt1 & 0x2) != 2) {
            break label105;
          }
        }
        for (paramInt1 = 1;; paramInt1 = 0)
        {
          f1 = f[paramInt2] - d[paramInt2];
          f2 = g[paramInt2] - e[paramInt2];
          if ((i1 == 0) || (paramInt1 == 0)) {
            break label110;
          }
          if (f1 * f1 + f2 * f2 > b * b) {
            break;
          }
          return false;
          i1 = 0;
          break label27;
        }
        if (i1 == 0) {
          break;
        }
      } while (Math.abs(f1) > b);
      return false;
      if (paramInt1 == 0) {
        break;
      }
    } while (Math.abs(f2) > b);
    return false;
    return false;
  }
  
  boolean b(View paramView, int paramInt)
  {
    if ((paramView == s) && (c == paramInt)) {
      return true;
    }
    if ((paramView != null) && (r.a(paramView, paramInt)))
    {
      c = paramInt;
      a(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  public boolean b(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView == null) {}
    while ((paramInt1 < paramView.getLeft()) || (paramInt1 >= paramView.getRight()) || (paramInt2 < paramView.getTop()) || (paramInt2 >= paramView.getBottom())) {
      return false;
    }
    return true;
  }
  
  public View c()
  {
    return s;
  }
  
  void c(int paramInt)
  {
    u.removeCallbacks(w);
    if (a != paramInt)
    {
      a = paramInt;
      r.a(paramInt);
      if (a == 0) {
        s = null;
      }
    }
  }
  
  public boolean c(int paramInt1, int paramInt2)
  {
    return b(s, paramInt1, paramInt2);
  }
  
  public int d()
  {
    return b;
  }
  
  public View d(int paramInt1, int paramInt2)
  {
    int i1 = u.getChildCount() - 1;
    while (i1 >= 0)
    {
      View localView = u.getChildAt(r.c(i1));
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom())) {
        return localView;
      }
      i1 -= 1;
    }
    return null;
  }
  
  public boolean d(int paramInt)
  {
    boolean bool2 = false;
    int i2 = d.length;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (b(paramInt, i1)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public void e()
  {
    c = -1;
    g();
    if (l != null)
    {
      l.recycle();
      l = null;
    }
  }
  
  public void f()
  {
    e();
    if (a == 2)
    {
      int i1 = q.b();
      int i2 = q.c();
      q.h();
      int i3 = q.b();
      int i4 = q.c();
      r.a(s, i3, i4, i3 - i1, i4 - i2);
    }
    c(0);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */