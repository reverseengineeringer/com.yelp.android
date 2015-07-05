package android.support.v7.widget;

import android.util.SparseArray;
import android.view.View;
import com.yelp.android.e.a;
import java.util.ArrayList;
import java.util.List;

public class cb
{
  a<ce, bq> a = new a();
  a<ce, bq> b = new a();
  a<Long, ce> c = new a();
  final List<View> d = new ArrayList();
  int e = 0;
  private int f = -1;
  private SparseArray<Object> g;
  private int h = 0;
  private int i = 0;
  private boolean j = false;
  private boolean k = false;
  private boolean l = false;
  private boolean m = false;
  
  private void a(a<Long, ce> parama, ce paramce)
  {
    int n = parama.size() - 1;
    for (;;)
    {
      if (n >= 0)
      {
        if (paramce == parama.c(n)) {
          parama.d(n);
        }
      }
      else {
        return;
      }
      n -= 1;
    }
  }
  
  void a(ce paramce)
  {
    a.remove(paramce);
    b.remove(paramce);
    if (c != null) {
      a(c, paramce);
    }
    d.remove(a);
  }
  
  void a(View paramView)
  {
    d.remove(paramView);
  }
  
  public boolean a()
  {
    return k;
  }
  
  void b(View paramView)
  {
    if (!d.contains(paramView)) {
      d.add(paramView);
    }
  }
  
  public boolean b()
  {
    return m;
  }
  
  public int c()
  {
    return f;
  }
  
  public boolean d()
  {
    return f != -1;
  }
  
  public int e()
  {
    if (k) {
      return h - i;
    }
    return e;
  }
  
  public String toString()
  {
    return "State{mTargetPosition=" + f + ", mPreLayoutHolderMap=" + a + ", mPostLayoutHolderMap=" + b + ", mData=" + g + ", mItemCount=" + e + ", mPreviousLayoutItemCount=" + h + ", mDeletedInvisibleItemCountSincePreviousLayout=" + i + ", mStructureChanged=" + j + ", mInPreLayout=" + k + ", mRunSimpleAnimations=" + l + ", mRunPredictiveAnimations=" + m + '}';
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */