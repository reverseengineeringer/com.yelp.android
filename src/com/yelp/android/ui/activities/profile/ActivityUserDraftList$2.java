package com.yelp.android.ui.activities.profile;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.ui.dialogs.TwoButtonDialog;

class ActivityUserDraftList$2
  implements MenuItem.OnMenuItemClickListener
{
  ActivityUserDraftList$2(ActivityUserDraftList paramActivityUserDraftList, ReviewDraft paramReviewDraft) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = TwoButtonDialog.a(2131165763, 2131165764, 2131166033, 2131165760);
    paramMenuItem.a(ActivityUserDraftList.b(b));
    paramMenuItem.show(b.getSupportFragmentManager(), "delete_draft_confirmation");
    ActivityUserDraftList.a(b, a);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserDraftList.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */