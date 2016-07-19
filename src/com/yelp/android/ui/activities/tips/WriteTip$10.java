package com.yelp.android.ui.activities.tips;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;

class WriteTip$10
  implements MenuItem.OnMenuItemClickListener
{
  WriteTip$10(WriteTip paramWriteTip) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    WriteTip.j(a).a(a, ImageInputHelper.ImageSource.GALLERY);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */