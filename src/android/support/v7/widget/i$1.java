package android.support.v7.widget;

import android.view.View;

final class i$1
  extends i
{
  i$1(RecyclerView.i parami)
  {
    super(parami, null);
  }
  
  public int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return a.g(paramView) - leftMargin;
  }
  
  public void a(int paramInt)
  {
    a.g(paramInt);
  }
  
  public int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = a.i(paramView);
    return rightMargin + i;
  }
  
  public int c()
  {
    return a.u();
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
    return a.s() - a.w();
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
 * Qualified Name:     android.support.v7.widget.i.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */