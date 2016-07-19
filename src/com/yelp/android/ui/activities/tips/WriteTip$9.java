package com.yelp.android.ui.activities.tips;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;

class WriteTip$9
  implements MenuItem.OnMenuItemClickListener
{
  WriteTip$9(WriteTip paramWriteTip) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (k.a(a, PermissionGroup.CAMERA))
    {
      WriteTip.j(a).a(a, ImageInputHelper.ImageSource.CAMERA);
      return true;
    }
    k.a(a, 250, new PermissionGroup[] { PermissionGroup.CAMERA });
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */