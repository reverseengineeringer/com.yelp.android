package android.support.v7.widget;

import android.view.View;
import java.util.List;

class LinearLayoutManager$c
{
  boolean a = true;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h = 0;
  boolean i = false;
  int j;
  List<RecyclerView.u> k = null;
  
  private View b()
  {
    int n = k.size();
    int m = 0;
    if (m < n)
    {
      View localView = k.get(m)).a;
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
      if (localLayoutParams.c()) {}
      while (d != localLayoutParams.e())
      {
        m += 1;
        break;
      }
      a(localView);
      return localView;
    }
    return null;
  }
  
  View a(RecyclerView.n paramn)
  {
    if (k != null) {
      return b();
    }
    paramn = paramn.c(d);
    d += e;
    return paramn;
  }
  
  public void a()
  {
    a(null);
  }
  
  public void a(View paramView)
  {
    paramView = b(paramView);
    if (paramView == null)
    {
      d = -1;
      return;
    }
    d = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).e();
  }
  
  boolean a(RecyclerView.r paramr)
  {
    return (d >= 0) && (d < paramr.e());
  }
  
  public View b(View paramView)
  {
    int i2 = k.size();
    Object localObject = null;
    int m = Integer.MAX_VALUE;
    int n = 0;
    if (n < i2)
    {
      View localView = k.get(n)).a;
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
      if (localView != paramView) {
        if (!localLayoutParams.c()) {}
      }
      for (;;)
      {
        n += 1;
        break;
        int i1 = (localLayoutParams.e() - d) * e;
        if (i1 >= 0) {
          if (i1 < m)
          {
            if (i1 == 0) {
              return localView;
            }
            localObject = localView;
            m = i1;
          }
        }
      }
    }
    return (View)localObject;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */