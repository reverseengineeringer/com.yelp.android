package com.yelp.android.ui.activities.tips;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;

class q
  implements MenuItem.OnMenuItemClickListener
{
  q(WriteTip paramWriteTip) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    WriteTip.i(a).a(a, ImageInputHelper.ImageSource.GALLERY);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */