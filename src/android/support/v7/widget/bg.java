package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;

class bg
  implements t
{
  bg(RecyclerView paramRecyclerView) {}
  
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
    ce localce = RecyclerView.b(paramView);
    if (localce != null)
    {
      if ((!localce.q()) && (!localce.c())) {
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + localce);
      }
      localce.k();
    }
    RecyclerView.a(a, paramView, paramInt, paramLayoutParams);
  }
  
  public ce b(View paramView)
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
        if ((((ce)localObject).q()) && (!((ce)localObject).c())) {
          throw new IllegalArgumentException("called detach on an already detached child " + localObject);
        }
        ((ce)localObject).a(256);
      }
    }
    RecyclerView.a(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */