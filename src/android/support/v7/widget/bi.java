package android.support.v7.widget;

import android.view.ViewGroup;
import com.yelp.android.c.h;

public abstract class bi<VH extends ce>
{
  private final bj a = new bj();
  private boolean b = false;
  
  public abstract int a();
  
  public int a(int paramInt)
  {
    return 0;
  }
  
  public abstract VH a(ViewGroup paramViewGroup, int paramInt);
  
  public void a(RecyclerView paramRecyclerView) {}
  
  public void a(bk parambk)
  {
    a.registerObserver(parambk);
  }
  
  public void a(VH paramVH) {}
  
  public abstract void a(VH paramVH, int paramInt);
  
  public long b(int paramInt)
  {
    return -1L;
  }
  
  public final VH b(ViewGroup paramViewGroup, int paramInt)
  {
    h.a("RV CreateView");
    paramViewGroup = a(paramViewGroup, paramInt);
    e = paramInt;
    h.a();
    return paramViewGroup;
  }
  
  public void b(RecyclerView paramRecyclerView) {}
  
  public void b(bk parambk)
  {
    a.unregisterObserver(parambk);
  }
  
  public final void b(VH paramVH, int paramInt)
  {
    b = paramInt;
    if (b()) {
      d = b(paramInt);
    }
    paramVH.a(1, 519);
    h.a("RV OnBindView");
    a(paramVH, paramInt);
    h.a();
  }
  
  public final boolean b()
  {
    return b;
  }
  
  public boolean b(VH paramVH)
  {
    return false;
  }
  
  public final void c()
  {
    a.a();
  }
  
  public void c(VH paramVH) {}
  
  public void d(VH paramVH) {}
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */