package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;

public abstract class RecyclerView$g
{
  @Deprecated
  public void a(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
  
  public void a(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.r paramr)
  {
    a(paramCanvas, paramRecyclerView);
  }
  
  @Deprecated
  public void a(Rect paramRect, int paramInt, RecyclerView paramRecyclerView)
  {
    paramRect.set(0, 0, 0, 0);
  }
  
  public void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.r paramr)
  {
    a(paramRect, ((RecyclerView.LayoutParams)paramView.getLayoutParams()).e(), paramRecyclerView);
  }
  
  @Deprecated
  public void b(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
  
  public void b(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.r paramr)
  {
    b(paramCanvas, paramRecyclerView);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */