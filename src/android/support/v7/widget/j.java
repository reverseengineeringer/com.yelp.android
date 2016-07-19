package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.a;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.c;

public class j
  extends a
{
  final RecyclerView a;
  final a c = new a()
  {
    public void a(View paramAnonymousView, c paramAnonymousc)
    {
      super.a(paramAnonymousView, paramAnonymousc);
      if ((!j.a(j.this)) && (a.getLayoutManager() != null)) {
        a.getLayoutManager().a(paramAnonymousView, paramAnonymousc);
      }
    }
    
    public boolean a(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      if (super.a(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle)) {
        return true;
      }
      if ((!j.a(j.this)) && (a.getLayoutManager() != null)) {
        return a.getLayoutManager().a(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
      }
      return false;
    }
  };
  
  public j(RecyclerView paramRecyclerView)
  {
    a = paramRecyclerView;
  }
  
  private boolean c()
  {
    return a.q();
  }
  
  public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (((paramView instanceof RecyclerView)) && (!c()))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.getLayoutManager() != null) {
        paramView.getLayoutManager().a(paramAccessibilityEvent);
      }
    }
  }
  
  public void a(View paramView, c paramc)
  {
    super.a(paramView, paramc);
    paramc.b(RecyclerView.class.getName());
    if ((!c()) && (a.getLayoutManager() != null)) {
      a.getLayoutManager().a(paramc);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!c()) && (a.getLayoutManager() != null)) {
      return a.getLayoutManager().a(paramInt, paramBundle);
    }
    return false;
  }
  
  a b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */