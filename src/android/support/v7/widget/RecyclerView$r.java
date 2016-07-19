package android.support.v7.widget;

import android.util.SparseArray;
import android.view.View;
import com.yelp.android.g.a;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView$r
{
  a<RecyclerView.u, RecyclerView.h> a = new a();
  a<RecyclerView.u, RecyclerView.h> b = new a();
  a<Long, RecyclerView.u> c = new a();
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
  
  private void a(a<Long, RecyclerView.u> parama, RecyclerView.u paramu)
  {
    int n = parama.size() - 1;
    for (;;)
    {
      if (n >= 0)
      {
        if (paramu == parama.c(n)) {
          parama.d(n);
        }
      }
      else {
        return;
      }
      n -= 1;
    }
  }
  
  void a(RecyclerView.u paramu)
  {
    a.remove(paramu);
    b.remove(paramu);
    if (c != null) {
      a(c, paramu);
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
 * Qualified Name:     android.support.v7.widget.RecyclerView.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */