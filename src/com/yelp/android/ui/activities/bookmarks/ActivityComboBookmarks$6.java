package com.yelp.android.ui.activities.bookmarks;

import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.util.ErrorType;

class ActivityComboBookmarks$6
  implements PanelError.a
{
  ActivityComboBookmarks$6(ActivityComboBookmarks paramActivityComboBookmarks) {}
  
  public void q_()
  {
    if (ActivityComboBookmarks.h(a).getErrorType() == ErrorType.NO_LOCATION_PERMISSION)
    {
      k.a(a, 250, new PermissionGroup[] { PermissionGroup.LOCATION });
      return;
    }
    a.p_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */