package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

class ef
  implements ec
{
  public void a(ViewParent paramViewParent, View paramView)
  {
    if ((paramViewParent instanceof bl)) {
      ((bl)paramViewParent).onStopNestedScroll(paramView);
    }
  }
  
  public void a(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramViewParent instanceof bl)) {
      ((bl)paramViewParent).onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public void a(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramViewParent instanceof bl)) {
      ((bl)paramViewParent).onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt);
    }
  }
  
  public boolean a(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2)
  {
    if ((paramViewParent instanceof bl)) {
      return ((bl)paramViewParent).onNestedPreFling(paramView, paramFloat1, paramFloat2);
    }
    return false;
  }
  
  public boolean a(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((paramViewParent instanceof bl)) {
      return ((bl)paramViewParent).onNestedFling(paramView, paramFloat1, paramFloat2, paramBoolean);
    }
    return false;
  }
  
  public boolean a(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
  {
    if ((paramViewParent instanceof bl)) {
      return ((bl)paramViewParent).onStartNestedScroll(paramView1, paramView2, paramInt);
    }
    return false;
  }
  
  public void b(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
  {
    if ((paramViewParent instanceof bl)) {
      ((bl)paramViewParent).onNestedScrollAccepted(paramView1, paramView2, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */