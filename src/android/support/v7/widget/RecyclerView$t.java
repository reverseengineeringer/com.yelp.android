package android.support.v7.widget;

import android.support.v4.os.i;
import android.support.v4.view.ai;
import android.support.v4.widget.v;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;

class RecyclerView$t
  implements Runnable
{
  private int b;
  private int c;
  private v d;
  private Interpolator e = RecyclerView.r();
  private boolean f = false;
  private boolean g = false;
  
  public RecyclerView$t(RecyclerView paramRecyclerView)
  {
    d = v.a(paramRecyclerView.getContext(), RecyclerView.r());
  }
  
  private float a(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = Math.abs(paramInt1);
    int k = Math.abs(paramInt2);
    int i;
    if (j > k)
    {
      i = 1;
      paramInt3 = (int)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
      paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      if (i == 0) {
        break label140;
      }
    }
    label140:
    for (paramInt1 = a.getWidth();; paramInt1 = a.getHeight())
    {
      paramInt4 = paramInt1 / 2;
      float f3 = Math.min(1.0F, paramInt2 * 1.0F / paramInt1);
      float f1 = paramInt4;
      float f2 = paramInt4;
      f3 = a(f3);
      if (paramInt3 <= 0) {
        break label151;
      }
      paramInt1 = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / paramInt3)) * 4;
      return Math.min(paramInt1, 2000);
      i = 0;
      break;
    }
    label151:
    if (i != 0) {}
    for (paramInt2 = j;; paramInt2 = k)
    {
      paramInt1 = (int)((paramInt2 / paramInt1 + 1.0F) * 300.0F);
      break;
    }
  }
  
  private void c()
  {
    g = false;
    f = true;
  }
  
  private void d()
  {
    f = false;
    if (g) {
      a();
    }
  }
  
  void a()
  {
    if (f)
    {
      g = true;
      return;
    }
    a.removeCallbacks(this);
    ai.a(a, this);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    RecyclerView.b(a, 2);
    c = 0;
    b = 0;
    d.a(0, 0, paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
    a();
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3, RecyclerView.r());
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a(paramInt1, paramInt2, b(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    if (e != paramInterpolator)
    {
      e = paramInterpolator;
      d = v.a(a.getContext(), paramInterpolator);
    }
    RecyclerView.b(a, 2);
    c = 0;
    b = 0;
    d.a(0, 0, paramInt1, paramInt2, paramInt3);
    a();
  }
  
  public void b()
  {
    a.removeCallbacks(this);
    d.h();
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    a(paramInt1, paramInt2, 0, 0);
  }
  
  public void run()
  {
    c();
    RecyclerView.e(a);
    v localv = d;
    RecyclerView.q localq = da).s;
    int i6;
    int i7;
    int i4;
    int i5;
    int i1;
    int k;
    int j;
    int i3;
    int i;
    int n;
    int m;
    if (localv.g())
    {
      i6 = localv.b();
      i7 = localv.c();
      i4 = i6 - b;
      i5 = i7 - c;
      i1 = 0;
      k = 0;
      i2 = 0;
      j = 0;
      b = i6;
      c = i7;
      i3 = 0;
      i = 0;
      n = 0;
      m = 0;
      if (RecyclerView.f(a) == null) {
        break label849;
      }
      a.b();
      RecyclerView.g(a);
      i.a("RV Scroll");
      if (i4 != 0)
      {
        k = RecyclerView.d(a).a(i4, a.a, a.e);
        i = i4 - k;
      }
      if (i5 != 0)
      {
        j = RecyclerView.d(a).b(i5, a.a, a.e);
        m = i5 - j;
      }
      i.a();
      if (RecyclerView.h(a))
      {
        i1 = a.c.b();
        n = 0;
        while (n < i1)
        {
          View localView = a.c.b(n);
          Object localObject = a.a(localView);
          if ((localObject != null) && (h != null))
          {
            localObject = h.a;
            i2 = localView.getLeft();
            i3 = localView.getTop();
            if ((i2 != ((View)localObject).getLeft()) || (i3 != ((View)localObject).getTop())) {
              ((View)localObject).layout(i2, i3, ((View)localObject).getWidth() + i2, ((View)localObject).getHeight() + i3);
            }
          }
          n += 1;
        }
      }
      RecyclerView.i(a);
      a.a(false);
      n = m;
      i2 = j;
      i3 = i;
      i1 = k;
      if (localq == null) {
        break label849;
      }
      n = m;
      i2 = j;
      i3 = i;
      i1 = k;
      if (localq.b()) {
        break label849;
      }
      n = m;
      i2 = j;
      i3 = i;
      i1 = k;
      if (!localq.c()) {
        break label849;
      }
      n = a.e.e();
      if (n != 0) {
        break label781;
      }
      localq.a();
      n = j;
      j = i;
      if (!RecyclerView.j(a).isEmpty()) {
        a.invalidate();
      }
      if (ai.a(a) != 2) {
        RecyclerView.a(a, i4, i5);
      }
      if ((j != 0) || (m != 0))
      {
        i1 = (int)localv.f();
        if (j == i6) {
          break label921;
        }
        if (j >= 0) {
          break label866;
        }
        i = -i1;
      }
    }
    label532:
    label551:
    label678:
    label704:
    label724:
    label781:
    label849:
    label866:
    label899:
    label904:
    label909:
    label921:
    for (int i2 = i;; i2 = 0)
    {
      if (m != i7) {
        if (m < 0) {
          i = -i1;
        }
      }
      for (;;)
      {
        if (ai.a(a) != 2) {
          a.c(i2, i);
        }
        if (((i2 != 0) || (j == i6) || (localv.d() == 0)) && ((i != 0) || (m == i7) || (localv.e() == 0))) {
          localv.h();
        }
        if ((k != 0) || (n != 0)) {
          a.g(k, n);
        }
        if (!RecyclerView.k(a)) {
          a.invalidate();
        }
        if ((i5 != 0) && (RecyclerView.d(a).e()) && (n == i5))
        {
          i = 1;
          if ((i4 == 0) || (!RecyclerView.d(a).d()) || (k != i4)) {
            break label899;
          }
          j = 1;
          if (((i4 != 0) || (i5 != 0)) && (j == 0) && (i == 0)) {
            break label904;
          }
          i = 1;
          if ((!localv.a()) && (i != 0)) {
            break label909;
          }
          RecyclerView.b(a, 0);
        }
        for (;;)
        {
          if (localq != null)
          {
            if (localq.b()) {
              RecyclerView.q.a(localq, 0, 0);
            }
            if (!g) {
              localq.a();
            }
          }
          d();
          return;
          if (localq.d() >= n)
          {
            localq.a(n - 1);
            RecyclerView.q.a(localq, i4 - i, i5 - m);
            n = j;
            j = i;
            break;
          }
          RecyclerView.q.a(localq, i4 - i, i5 - m);
          i1 = k;
          i3 = i;
          i2 = j;
          n = m;
          j = i3;
          m = n;
          n = i2;
          k = i1;
          break;
          if (j > 0)
          {
            i = i1;
            break label532;
          }
          i = 0;
          break label532;
          i = i1;
          if (m > 0) {
            break label551;
          }
          i = 0;
          break label551;
          i = 0;
          break label678;
          j = 0;
          break label704;
          i = 0;
          break label724;
          a();
        }
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */