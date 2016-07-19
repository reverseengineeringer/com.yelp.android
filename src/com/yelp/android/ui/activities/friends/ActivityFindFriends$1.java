package com.yelp.android.ui.activities.friends;

import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.util.ar;

class ActivityFindFriends$1
  implements TextView.OnEditorActionListener
{
  ActivityFindFriends$1(ActivityFindFriends paramActivityFindFriends) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) && (ar.a(paramKeyEvent)))
    {
      String str = paramTextView.getText().toString();
      FindFriendsSearchResultsFragment localFindFriendsSearchResultsFragment = (FindFriendsSearchResultsFragment)a.getSupportFragmentManager().a("search_result_fragment");
      paramKeyEvent = localFindFriendsSearchResultsFragment;
      if (localFindFriendsSearchResultsFragment == null) {
        paramKeyEvent = FindFriendsSearchResultsFragment.c();
      }
      if (!paramKeyEvent.isVisible()) {
        ActivityFindFriends.a(a).a(2131689866, paramKeyEvent, "search_result_fragment").a("search_result_fragment").a();
      }
      paramKeyEvent.a(str);
      ar.c(paramTextView);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ActivityFindFriends.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */