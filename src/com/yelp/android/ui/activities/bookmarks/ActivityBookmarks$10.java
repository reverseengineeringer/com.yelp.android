package com.yelp.android.ui.activities.bookmarks;

import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.LinearLayout;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.af;
import com.yelp.android.ui.widgets.EditTextAndClearButton;

class ActivityBookmarks$10
  implements View.OnFocusChangeListener
{
  ActivityBookmarks$10(ActivityBookmarks paramActivityBookmarks) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ActivityBookmarks.s(a).setVisibility(8);
      a.getSupportFragmentManager().a().a(2131689724, ActivityBookmarks.t(a), "suggest_fragment").a("suggest_fragment").a();
      ActivityBookmarks.r(a).filter("");
      ActivityBookmarks.q(a).setHint(2131166497);
      AppData.a(EventIri.BookmarksSearchBar);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */