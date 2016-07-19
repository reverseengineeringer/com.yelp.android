package android.support.v7.widget;

import android.support.v4.os.i;
import android.view.ViewGroup;
import java.util.List;

public abstract class RecyclerView$a<VH extends RecyclerView.u>
{
  private final RecyclerView.b a = new RecyclerView.b();
  private boolean b = false;
  
  public abstract int a();
  
  public int a(int paramInt)
  {
    return 0;
  }
  
  public abstract VH a(ViewGroup paramViewGroup, int paramInt);
  
  public void a(RecyclerView.c paramc)
  {
    a.registerObserver(paramc);
  }
  
  public void a(VH paramVH) {}
  
  public abstract void a(VH paramVH, int paramInt);
  
  public void a(VH paramVH, int paramInt, List<Object> paramList)
  {
    a(paramVH, paramInt);
  }
  
  public void a(RecyclerView paramRecyclerView) {}
  
  public long b(int paramInt)
  {
    return -1L;
  }
  
  public final VH b(ViewGroup paramViewGroup, int paramInt)
  {
    i.a("RV CreateView");
    paramViewGroup = a(paramViewGroup, paramInt);
    e = paramInt;
    i.a();
    return paramViewGroup;
  }
  
  public void b(RecyclerView.c paramc)
  {
    a.unregisterObserver(paramc);
  }
  
  public final void b(VH paramVH, int paramInt)
  {
    b = paramInt;
    if (b()) {
      d = b(paramInt);
    }
    paramVH.a(1, 519);
    i.a("RV OnBindView");
    a(paramVH, paramInt, paramVH.t());
    paramVH.s();
    i.a();
  }
  
  public void b(RecyclerView paramRecyclerView) {}
  
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
 * Qualified Name:     android.support.v7.widget.RecyclerView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */