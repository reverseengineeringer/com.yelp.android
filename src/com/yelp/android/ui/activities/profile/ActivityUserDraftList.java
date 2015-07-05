package com.yelp.android.ui.activities.profile;

import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.go;
import com.yelp.android.serializable.ReviewDraftFeedEntry;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.feed.CurrentUserFeedFragment;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.util.ScrollToLoadListView;

public class ActivityUserDraftList
  extends SingleFeedEntryActivity<ReviewDraftFeedEntry>
{
  public int a()
  {
    return 2131166141;
  }
  
  public ApiRequest<?, ?, ?> a(int paramInt1, int paramInt2)
  {
    go localgo = new go(this, paramInt2, paramInt1);
    localgo.execute(new Void[0]);
    return localgo;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileDrafts;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166140);
    registerForContextMenu(b.m());
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramView = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    paramView = (ReviewDraftFeedEntry)b.m().getItemAtPosition(position);
    paramContextMenu.setHeaderTitle(paramView.getBusinessName());
    paramContextMenu.add(2131166161).setIntent(ActivityBusinessPage.a(this, paramView.getBusinessId()));
    paramContextMenu.add(2131165826).setIntent(ActivityReviewWrite.a(this, paramView.getBusinessId(), ReviewState.DRAFTED, ReviewSource.ProfileReviewDrafts));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserDraftList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */