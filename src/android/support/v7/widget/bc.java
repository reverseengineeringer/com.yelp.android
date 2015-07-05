package android.support.v7.widget;

import android.view.View;

final class bc
  extends ba
{
  bc(br parambr)
  {
    super(parambr, null);
  }
  
  public int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return a.h(paramView) - topMargin;
  }
  
  public void a(int paramInt)
  {
    a.g(paramInt);
  }
  
  public int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = a.j(paramView);
    return bottomMargin + i;
  }
  
  public int c()
  {
    return a.u();
  }
  
  public int c(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = a.f(paramView);
    int j = topMargin;
    return bottomMargin + (i + j);
  }
  
  public int d()
  {
    return a.s() - a.w();
  }
  
  public int d(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = a.e(paramView);
    int j = leftMargin;
    return rightMargin + (i + j);
  }
  
  public int e()
  {
    return a.s();
  }
  
  public int f()
  {
    return a.s() - a.u() - a.w();
  }
  
  public int g()
  {
    return a.w();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */