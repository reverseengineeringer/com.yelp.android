package android.support.v4.view;

import android.view.View;
import android.view.View.OnClickListener;

class bp
  implements View.OnClickListener
{
  bp(PagerTabStrip paramPagerTabStrip) {}
  
  public void onClick(View paramView)
  {
    a.a.setCurrentItem(a.a.getCurrentItem() - 1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */