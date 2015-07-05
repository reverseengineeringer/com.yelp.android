package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.a;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.f.g;

public class cf
  extends a
{
  final RecyclerView b;
  final a c = new cg(this);
  
  public cf(RecyclerView paramRecyclerView)
  {
    b = paramRecyclerView;
  }
  
  private boolean c()
  {
    return b.p();
  }
  
  public void a(View paramView, g paramg)
  {
    super.a(paramView, paramg);
    paramg.b(RecyclerView.class.getName());
    if ((!c()) && (b.getLayoutManager() != null)) {
      b.getLayoutManager().a(paramg);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!c()) && (b.getLayoutManager() != null)) {
      return b.getLayoutManager().a(paramInt, paramBundle);
    }
    return false;
  }
  
  a b()
  {
    return c;
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (((paramView instanceof RecyclerView)) && (!c()))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.getLayoutManager() != null) {
        paramView.getLayoutManager().a(paramAccessibilityEvent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */