package android.support.v7.widget;

import android.support.v4.widget.ax;
import android.view.View;
import android.view.animation.Interpolator;
import com.yelp.android.c.h;
import java.util.ArrayList;

class cd
  implements Runnable
{
  private int b;
  private int c;
  private ax d;
  private Interpolator e = RecyclerView.q();
  private boolean f = false;
  private boolean g = false;
  
  public cd(RecyclerView paramRecyclerView)
  {
    d = ax.a(paramRecyclerView.getContext(), RecyclerView.q());
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
    android.support.v4.view.ce.a(a, this);
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
    a(paramInt1, paramInt2, paramInt3, RecyclerView.q());
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
      d = ax.a(a.getContext(), paramInterpolator);
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
    ax localax = d;
    bz localbz = da).s;
    int i6;
    int i7;
    int i4;
    int i5;
    int j;
    int m;
    int i1;
    int n;
    int i;
    int k;
    if (localax.g())
    {
      i6 = localax.b();
      i7 = localax.c();
      i4 = i6 - b;
      i5 = i7 - c;
      j = 0;
      int i3 = 0;
      m = 0;
      i1 = 0;
      b = i6;
      c = i7;
      n = 0;
      i = 0;
      k = 0;
      i2 = 0;
      if (RecyclerView.f(a) != null)
      {
        a.b();
        RecyclerView.g(a);
        h.a("RV Scroll");
        j = i3;
        if (i4 != 0)
        {
          j = RecyclerView.d(a).a(i4, a.a, a.e);
          i = i4 - j;
        }
        k = i2;
        m = i1;
        if (i5 != 0)
        {
          m = RecyclerView.d(a).b(i5, a.a, a.e);
          k = i5 - m;
        }
        h.a();
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
        if ((localbz != null) && (!localbz.b()) && (localbz.c()))
        {
          n = a.e.e();
          if (n != 0) {
            break label739;
          }
          localbz.a();
        }
        RecyclerView.i(a);
        a.a(false);
        n = i;
      }
      if (!RecyclerView.j(a).isEmpty()) {
        a.invalidate();
      }
      if (android.support.v4.view.ce.a(a) != 2) {
        RecyclerView.a(a, i4, i5);
      }
      if ((n != 0) || (k != 0))
      {
        i1 = (int)localax.f();
        if (n == i6) {
          break label845;
        }
        if (n >= 0) {
          break label790;
        }
        i = -i1;
      }
    }
    label504:
    label521:
    label648:
    label674:
    label694:
    label739:
    label790:
    label823:
    label828:
    label833:
    label845:
    for (int i2 = i;; i2 = 0)
    {
      if (k != i7) {
        if (k < 0) {
          i = -i1;
        }
      }
      for (;;)
      {
        if (android.support.v4.view.ce.a(a) != 2) {
          a.c(i2, i);
        }
        if (((i2 != 0) || (n == i6) || (localax.d() == 0)) && ((i != 0) || (k == i7) || (localax.e() == 0))) {
          localax.h();
        }
        if ((j != 0) || (m != 0)) {
          a.h(j, m);
        }
        if (!RecyclerView.k(a)) {
          a.invalidate();
        }
        if ((i5 != 0) && (RecyclerView.d(a).e()) && (m == i5))
        {
          i = 1;
          if ((i4 == 0) || (!RecyclerView.d(a).d()) || (j != i4)) {
            break label823;
          }
          j = 1;
          if (((i4 != 0) || (i5 != 0)) && (j == 0) && (i == 0)) {
            break label828;
          }
          i = 1;
          if ((!localax.a()) && (i != 0)) {
            break label833;
          }
          RecyclerView.b(a, 0);
        }
        for (;;)
        {
          if ((localbz != null) && (localbz.b())) {
            bz.a(localbz, 0, 0);
          }
          d();
          return;
          if (localbz.d() >= n)
          {
            localbz.a(n - 1);
            bz.a(localbz, i4 - i, i5 - k);
            break;
          }
          bz.a(localbz, i4 - i, i5 - k);
          break;
          if (n > 0)
          {
            i = i1;
            break label504;
          }
          i = 0;
          break label504;
          i = i1;
          if (k > 0) {
            break label521;
          }
          i = 0;
          break label521;
          i = 0;
          break label648;
          j = 0;
          break label674;
          i = 0;
          break label694;
          a();
        }
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */