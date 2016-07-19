package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;

class RecyclerView$4
  implements e.b
{
  RecyclerView$4(RecyclerView paramRecyclerView) {}
  
  public int a()
  {
    return a.getChildCount();
  }
  
  public int a(View paramView)
  {
    return a.indexOfChild(paramView);
  }
  
  public void a(int paramInt)
  {
    View localView = a.getChildAt(paramInt);
    if (localView != null) {
      RecyclerView.b(a, localView);
    }
    a.removeViewAt(paramInt);
  }
  
  public void a(View paramView, int paramInt)
  {
    a.addView(paramView, paramInt);
    RecyclerView.a(a, paramView);
  }
  
  public void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    RecyclerView.u localu = RecyclerView.b(paramView);
    if (localu != null)
    {
      if ((!localu.q()) && (!localu.c())) {
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + localu);
      }
      localu.k();
    }
    RecyclerView.a(a, paramView, paramInt, paramLayoutParams);
  }
  
  public RecyclerView.u b(View paramView)
  {
    return RecyclerView.b(paramView);
  }
  
  public View b(int paramInt)
  {
    return a.getChildAt(paramInt);
  }
  
  public void b()
  {
    int j = a();
    int i = 0;
    while (i < j)
    {
      RecyclerView.b(a, b(i));
      i += 1;
    }
    a.removeAllViews();
  }
  
  public void c(int paramInt)
  {
    Object localObject = b(paramInt);
    if (localObject != null)
    {
      localObject = RecyclerView.b((View)localObject);
      if (localObject != null)
      {
        if ((((RecyclerView.u)localObject).q()) && (!((RecyclerView.u)localObject).c())) {
          throw new IllegalArgumentException("called detach on an already detached child " + localObject);
        }
        ((RecyclerView.u)localObject).b(256);
      }
    }
    RecyclerView.a(a, paramInt);
  }
  
  public void c(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    if (paramView != null) {
      RecyclerView.u.a(paramView);
    }
  }
  
  public void d(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    if (paramView != null) {
      RecyclerView.u.b(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */