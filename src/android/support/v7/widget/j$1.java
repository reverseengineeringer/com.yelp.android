package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.a;
import android.view.View;
import com.yelp.android.h.c;

class j$1
  extends a
{
  j$1(j paramj) {}
  
  public void a(View paramView, c paramc)
  {
    super.a(paramView, paramc);
    if ((!j.a(a)) && (a.a.getLayoutManager() != null)) {
      a.a.getLayoutManager().a(paramView, paramc);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!j.a(a)) && (a.a.getLayoutManager() != null)) {
      return a.a.getLayoutManager().a(paramView, paramInt, paramBundle);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.j.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */