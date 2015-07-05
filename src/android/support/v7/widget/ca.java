package android.support.v7.widget;

import android.util.Log;
import android.view.animation.Interpolator;

public class ca
{
  private int a;
  private int b;
  private int c;
  private Interpolator d;
  private boolean e;
  private int f;
  
  private void a()
  {
    if ((d != null) && (c < 1)) {
      throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
    }
    if (c < 1) {
      throw new IllegalStateException("Scroll duration must be a positive number");
    }
  }
  
  private void a(RecyclerView paramRecyclerView)
  {
    if (e)
    {
      a();
      if (d == null) {
        if (c == Integer.MIN_VALUE) {
          RecyclerView.p(paramRecyclerView).b(a, b);
        }
      }
      for (;;)
      {
        f += 1;
        if (f > 10) {
          Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        e = false;
        return;
        RecyclerView.p(paramRecyclerView).a(a, b, c);
        continue;
        RecyclerView.p(paramRecyclerView).a(a, b, c, d);
      }
    }
    f = 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */