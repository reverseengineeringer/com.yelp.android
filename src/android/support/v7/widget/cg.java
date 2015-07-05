package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.a;
import android.view.View;
import com.yelp.android.f.g;

class cg
  extends a
{
  cg(cf paramcf) {}
  
  public void a(View paramView, g paramg)
  {
    super.a(paramView, paramg);
    if ((!cf.a(b)) && (b.b.getLayoutManager() != null)) {
      b.b.getLayoutManager().a(paramView, paramg);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!cf.a(b)) && (b.b.getLayoutManager() != null)) {
      return b.b.getLayoutManager().a(paramView, paramInt, paramBundle);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */