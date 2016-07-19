package android.support.v7.widget;

import android.view.View;

final class i$2
  extends i
{
  i$2(RecyclerView.i parami)
  {
    super(parami, null);
  }
  
  public int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return a.h(paramView) - topMargin;
  }
  
  public void a(int paramInt)
  {
    a.h(paramInt);
  }
  
  public int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = a.j(paramView);
    return bottomMargin + i;
  }
  
  public int c()
  {
    return a.v();
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
    return a.t() - a.x();
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
    return a.t();
  }
  
  public int f()
  {
    return a.t() - a.v() - a.x();
  }
  
  public int g()
  {
    return a.x();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.i.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */