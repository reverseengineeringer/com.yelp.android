package com.yelp.android.ui.activities.feed;

import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fo;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.CheckInFeedEntry;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.GenericFeedEntry;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.ReviewDraftFeedEntry;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.ui.activities.tips.WriteTip;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;
import java.util.List;

public class CurrentUserFeedFragment
  extends YelpSwipeRefreshListFragment
  implements ay, br, n
{
  protected aq a;
  protected ArrayList<FeedEntry> b;
  private u c;
  private ApiRequest<?, ?, ?> d;
  private FeedType e;
  private boolean g;
  
  private void g()
  {
    b("com.yelp.android.review.state.update", new p(this));
    b("com.yelp.android.tips.update", new q(this));
    b("com.yelp.android.tips.delete", new r(this));
    b("com.yelp.android.media.delete", new s(this));
    b("com.yelp.android.review.update", new t(this));
  }
  
  public void a(int paramInt, CheckInFeedEntry paramCheckInFeedEntry)
  {
    AppData.b();
    AppData.a(EventIri.FeedFriendCheckInComment, "check_in_id", paramCheckInFeedEntry.getId());
    FragmentActivity localFragmentActivity = getActivity();
    YelpCheckIn localYelpCheckIn = paramCheckInFeedEntry.getCheckIn();
    if (paramCheckInFeedEntry.getCheckIn().getCommentsCount() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      startActivityForResult(CommentOnCheckIn.a(localFragmentActivity, localYelpCheckIn, bool), 0);
      return;
    }
  }
  
  public void a(int paramInt, CheckInFeedEntry paramCheckInFeedEntry, boolean paramBoolean)
  {
    paramCheckInFeedEntry = paramCheckInFeedEntry.getCheckIn();
    if (paramBoolean) {
      paramCheckInFeedEntry.getFeedback().addPositiveFeedback();
    }
    for (;;)
    {
      new fo(paramCheckInFeedEntry.getId(), paramBoolean).execute(new Void[0]);
      a.notifyDataSetChanged();
      return;
      paramCheckInFeedEntry.getFeedback().removePositiveFeedback();
    }
  }
  
  public void a(int paramInt, TipFeedEntry paramTipFeedEntry)
  {
    startActivityForResult(TipComplimentsLikes.a(getActivity(), paramTipFeedEntry.getTip(), paramTipFeedEntry.getBusinessName()), 0);
  }
  
  public void a(int paramInt, TipFeedEntry paramTipFeedEntry, boolean paramBoolean)
  {
    new fq(paramTipFeedEntry.getId(), paramBoolean).execute(new Void[0]);
    if (paramBoolean) {
      paramTipFeedEntry.getTip().getFeedback().addPositiveFeedback();
    }
    for (;;)
    {
      a.notifyDataSetChanged();
      return;
      paramTipFeedEntry.getTip().getFeedback().removePositiveFeedback();
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if ((paramInt < paramListView.getHeaderViewsCount()) || (paramInt > paramListView.getCount() - paramListView.getFooterViewsCount())) {}
    do
    {
      return;
      paramView = paramListView.getItemAtPosition(paramInt);
      paramListView = getActivity();
      if ((paramView instanceof ReviewDraftFeedEntry))
      {
        paramView = (ReviewDraftFeedEntry)paramView;
        YelpBusiness localYelpBusiness = paramView.getBusiness();
        if (localYelpBusiness != null) {}
        for (paramListView = ActivityReviewWrite.a(paramListView, localYelpBusiness, ReviewSource.ProfileReviewDrafts);; paramListView = ActivityReviewWrite.a(paramListView, paramView.getBusinessId(), ReviewState.DRAFTED, ReviewSource.ProfileReviewDrafts))
        {
          startActivity(paramListView);
          return;
        }
      }
      if ((paramView instanceof ReviewFeedEntry))
      {
        startActivityForResult(((ReviewFeedEntry)paramView).getIntentForClick(paramListView), 1046);
        return;
      }
      if ((paramView instanceof GenericFeedEntry))
      {
        startActivity(new Intent("android.intent.action.VIEW", ((GenericFeedEntry)paramView).getUri()));
        return;
      }
      if ((paramView instanceof TipFeedEntry))
      {
        startActivity(((TipFeedEntry)paramView).getIntentForClick(paramListView));
        return;
      }
      if ((paramView instanceof BizPhotoFeedEntry))
      {
        startActivity(ActivityBusinessPage.a(paramListView, ((BizPhotoFeedEntry)paramView).getBusinessId()));
        return;
      }
    } while (!(paramView instanceof FeedEntry));
    paramView = (FeedEntry)paramView;
    if (paramView.getBusiness() == null)
    {
      startActivity(ActivityBusinessPage.a(paramListView, paramView.getBusinessId()));
      return;
    }
    startActivity(ActivityBusinessPage.b(paramListView, paramView.getBusiness()));
  }
  
  public void a(FeedType paramFeedType)
  {
    m().setItemsCanFocus(true);
    e = paramFeedType;
    a = new aq(paramFeedType, new v());
    paramFeedType = new aw(this);
    a.a(BizPhotoFeedEntry.class, paramFeedType);
    paramFeedType = new k(this);
    a.a(CheckInFeedEntry.class, paramFeedType);
    paramFeedType = new bl(this);
    a.a(TipFeedEntry.class, paramFeedType);
    a.a(UserIdOverridenTipFeedEntry.class, paramFeedType);
    a(a);
  }
  
  public void a(u paramu)
  {
    c = paramu;
  }
  
  public void a(ArrayList<Photo> paramArrayList, int paramInt1, int paramInt2)
  {
    startActivityForResult(ActivityMediaViewer.a(getActivity(), paramArrayList, paramInt1), 1058);
  }
  
  public void a(List<? extends FeedEntry> paramList)
  {
    b.addAll(paramList);
    a.a(paramList);
    b(b.size());
  }
  
  public void b()
  {
    if (c != null) {
      if (ApiRequest.isNullOr(d, new AsyncTask.Status[] { AsyncTask.Status.FINISHED, AsyncTask.Status.PENDING })) {
        d = c.a(p(), q());
      }
    }
  }
  
  public void b(int paramInt, TipFeedEntry paramTipFeedEntry)
  {
    if (AppData.b().m().e())
    {
      startActivity(SendCompliment.a(getActivity(), paramTipFeedEntry.getTip()));
      return;
    }
    startActivity(ActivityLogin.a(getActivity(), 2131166038));
  }
  
  public void b(List<? extends FeedEntry> paramList)
  {
    b = new ArrayList();
    a.clear();
    a(paramList);
  }
  
  public void c(int paramInt, TipFeedEntry paramTipFeedEntry)
  {
    Intent localIntent = WriteTip.a(getActivity(), paramTipFeedEntry.getTip(), paramTipFeedEntry.getBusinessId());
    localIntent.putExtra("changed entry id", paramTipFeedEntry.getId());
    startActivityForResult(localIntent, 1026);
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected List<FeedEntry> d()
  {
    return b;
  }
  
  public int e()
  {
    if (b == null) {
      return 0;
    }
    return b.size();
  }
  
  public aq f()
  {
    return a;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (Build.VERSION.SDK_INT >= 16) {
      m().setBackground(null);
    }
    for (;;)
    {
      b = new ArrayList();
      if (paramBundle != null)
      {
        ArrayList localArrayList = paramBundle.getParcelableArrayList("all_entries");
        e = ((FeedType)paramBundle.getSerializable("feed_type"));
        g = paramBundle.getBoolean("has_user_scrolled");
        b.addAll(localArrayList);
        b(b.size());
      }
      g();
      return;
      m().setBackgroundDrawable(null);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramIntent.hasExtra("changed entry id")) {
        if (!paramIntent.getBooleanExtra("did we delete it?", false))
        {
          a.a(paramIntent.getStringExtra("changed entry id"), (Bundle)paramIntent.getParcelableExtra("bundle to be passed"));
        }
        else
        {
          a.a(paramIntent.getStringExtra("changed entry id"));
          continue;
          YelpActivity.IntentData.popData();
          continue;
          YelpBusinessReview localYelpBusinessReview = ActivityReviewPager.a(paramIntent);
          if (localYelpBusinessReview != null) {
            a.a(localYelpBusinessReview.getId(), ReviewFeedEntry.getFeedUpdate(localYelpBusinessReview));
          }
        }
      }
    }
  }
  
  public void onDestroy()
  {
    if (d != null) {
      d.abortIfAny(new AsyncTask.Status[] { AsyncTask.Status.RUNNING, AsyncTask.Status.PENDING });
    }
    super.onDestroy();
  }
  
  public void onPause()
  {
    super.onPause();
    g = m().h();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("all_entries", b);
    paramBundle.putSerializable("feed_type", e);
    paramBundle.putBoolean("has_user_scrolled", g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.CurrentUserFeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */