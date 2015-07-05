package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class RecyclerView$LayoutParams
  extends ViewGroup.MarginLayoutParams
{
  ce a;
  final Rect b = new Rect();
  boolean c = true;
  boolean d = false;
  
  public RecyclerView$LayoutParams(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public RecyclerView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RecyclerView$LayoutParams(LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public RecyclerView$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public RecyclerView$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  public boolean c()
  {
    return a.p();
  }
  
  public boolean d()
  {
    return a.n();
  }
  
  public int e()
  {
    return a.d();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */