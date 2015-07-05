package com.yelp.android.ui.activities.friends;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.util.cp;

class a
  implements TextView.OnEditorActionListener
{
  a(ActivityFindFriends paramActivityFindFriends) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) && (cp.a(paramKeyEvent)))
    {
      String str = paramTextView.getText().toString();
      FindFriendsSearchResultsFragment localFindFriendsSearchResultsFragment = (FindFriendsSearchResultsFragment)a.getSupportFragmentManager().findFragmentByTag("search_result_fragment");
      paramKeyEvent = localFindFriendsSearchResultsFragment;
      if (localFindFriendsSearchResultsFragment == null) {
        paramKeyEvent = FindFriendsSearchResultsFragment.c();
      }
      if (!paramKeyEvent.isVisible()) {
        ActivityFindFriends.a(a).add(2131493195, paramKeyEvent, "search_result_fragment").addToBackStack("search_result_fragment").commit();
      }
      paramKeyEvent.a(str);
      cp.b(paramTextView);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */