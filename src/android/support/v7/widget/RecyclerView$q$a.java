package android.support.v7.widget;

import android.util.Log;
import android.view.animation.Interpolator;

public class RecyclerView$q$a
{
  private int a;
  private int b;
  private int c;
  private int d;
  private Interpolator e;
  private boolean f;
  private int g;
  
  private void a(RecyclerView paramRecyclerView)
  {
    if (d >= 0)
    {
      int i = d;
      d = -1;
      RecyclerView.c(paramRecyclerView, i);
      f = false;
      return;
    }
    if (f)
    {
      b();
      if (e == null) {
        if (c == Integer.MIN_VALUE) {
          RecyclerView.p(paramRecyclerView).b(a, b);
        }
      }
      for (;;)
      {
        g += 1;
        if (g > 10) {
          Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        f = false;
        return;
        RecyclerView.p(paramRecyclerView).a(a, b, c);
        continue;
        RecyclerView.p(paramRecyclerView).a(a, b, c, e);
      }
    }
    g = 0;
  }
  
  private void b()
  {
    if ((e != null) && (c < 1)) {
      throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
    }
    if (c < 1) {
      throw new IllegalStateException("Scroll duration must be a positive number");
    }
  }
  
  boolean a()
  {
    return d >= 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.q.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */