package android.support.v7.widget;

import android.view.View;

final class bb
  extends ba
{
  bb(br parambr)
  {
    super(parambr, null);
  }
  
  public int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return a.g(paramView) - leftMargin;
  }
  
  public void a(int paramInt)
  {
    a.f(paramInt);
  }
  
  public int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = a.i(paramView);
    return rightMargin + i;
  }
  
  public int c()
  {
    return a.t();
  }
  
  public int c(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = a.e(paramView);
    int j = leftMargin;
    return rightMargin + (i + j);
  }
  
  public int d()
  {
    return a.r() - a.v();
  }
  
  public int d(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = a.f(paramView);
    int j = topMargin;
    return bottomMargin + (i + j);
  }
  
  public int e()
  {
    return a.r();
  }
  
  public int f()
  {
    return a.r() - a.t() - a.v();
  }
  
  public int g()
  {
    return a.v();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */