package com.yelp.android.ui.activities.profile;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dp;
import com.yelp.android.appdata.webrequests.dq;
import com.yelp.android.appdata.webrequests.fo;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.OfferSummary;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.ActivityMyOffers;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn;
import com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard;
import com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard.LeaderboardType;
import com.yelp.android.ui.panels.LeaderboardHeader;
import com.yelp.android.ui.panels.TitleWithSubTitleView;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.util.StringUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ActivityUserCheckIns
  extends YelpListActivity
  implements m<dq>
{
  private User a;
  private t b;
  private OfferSummary c;
  private int[] d;
  private dp e;
  
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, ActivityUserCheckIns.class);
    paramContext.putExtra("user.xtra", paramUser);
    if ((paramUser != null) && (paramUser.getCheckInCount() == 0)) {}
    for (boolean bool = true;; bool = false)
    {
      paramContext.putExtra("known empty", bool);
      return paramContext;
    }
  }
  
  private LeaderboardHeader a(int paramInt1, int paramInt2, int paramInt3)
  {
    AbsListView.LayoutParams localLayoutParams = new AbsListView.LayoutParams(-1, -2);
    LeaderboardHeader localLeaderboardHeader = new LeaderboardHeader(this);
    localLeaderboardHeader.setLayoutParams(localLayoutParams);
    localLeaderboardHeader.a(paramInt1, paramInt2, paramInt3);
    return localLeaderboardHeader;
  }
  
  private TitleWithSubTitleView a(OfferSummary paramOfferSummary)
  {
    AbsListView.LayoutParams localLayoutParams = new AbsListView.LayoutParams(-1, -2);
    TitleWithSubTitleView localTitleWithSubTitleView = new TitleWithSubTitleView(this);
    localTitleWithSubTitleView.setLayoutParams(localLayoutParams);
    localTitleWithSubTitleView.getTitle().setText(2131166135);
    int i = paramOfferSummary.getCount();
    paramOfferSummary = StringUtils.a(this, paramOfferSummary.getNames(), 2, i - paramOfferSummary.getNames().size(), ", ");
    localTitleWithSubTitleView.getSubTitle().setText(paramOfferSummary);
    localTitleWithSubTitleView.getSubTitle().setVisibility(0);
    return localTitleWithSubTitleView;
  }
  
  private void f()
  {
    LeaderboardHeader localLeaderboardHeader = a(d[0], d[1], d[2]);
    ScrollToLoadListView localScrollToLoadListView = q();
    if (localLeaderboardHeader.getFriendsActiveCount() == 0) {}
    for (ActivityLeaderboard.LeaderboardType localLeaderboardType = ActivityLeaderboard.LeaderboardType.WEEK;; localLeaderboardType = ActivityLeaderboard.LeaderboardType.FRIENDS)
    {
      localScrollToLoadListView.addHeaderView(localLeaderboardHeader, localLeaderboardType, true);
      if ((c != null) && (c.getCount() > 0)) {
        q().addHeaderView(a(c), c, true);
      }
      return;
    }
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof YelpCheckIn)) {
      startActivity(ActivityBusinessPage.b(this, ((YelpCheckIn)paramListView).getBusiness()));
    }
    do
    {
      return;
      if ((paramListView instanceof OfferSummary))
      {
        startActivity(ActivityMyOffers.a(this));
        return;
      }
    } while (!(paramListView instanceof ActivityLeaderboard.LeaderboardType));
    startActivity(ActivityLeaderboard.a(this, (ActivityLeaderboard.LeaderboardType)paramListView));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dq paramdq)
  {
    disableLoading();
    c = d;
    d = new int[] { a, b, c };
    if (e.isEmpty())
    {
      q().setEmptyView(a(q(), i()));
      q().f();
    }
    for (;;)
    {
      b.a(e);
      c(b.getCount());
      b.notifyDataSetChanged();
      return;
      if (q().getHeaderViewsCount() == 0)
      {
        f();
        q().setAdapter(b);
      }
    }
  }
  
  void a(YelpCheckIn paramYelpCheckIn, boolean paramBoolean)
  {
    String str = paramYelpCheckIn.getId();
    Object localObject = paramYelpCheckIn.getFeedback();
    if (paramBoolean) {
      ((Feedback)localObject).addPositiveFeedback();
    }
    for (;;)
    {
      localObject = new HashMap();
      ((Map)localObject).put("business_id", paramYelpCheckIn.getBusinessId());
      ((Map)localObject).put("check_in_id", str);
      ((Map)localObject).put("is_positive", Boolean.valueOf(paramBoolean));
      ((Map)localObject).put("source", "users_check_ins");
      AppData.a(EventIri.CheckInFeedback, (Map)localObject);
      new fo(str, paramBoolean).execute(new Void[0]);
      b.a(paramYelpCheckIn);
      return;
      ((Feedback)localObject).removePositiveFeedback();
    }
  }
  
  public dp c()
  {
    return (dp)super.getLastCustomNonConfigurationInstance();
  }
  
  protected void d()
  {
    if ((a != null) && (a.getCheckInCount() == 0)) {
      q().f();
    }
    do
    {
      return;
      if ((e == null) || (e.is(AsyncTask.Status.FINISHED)))
      {
        e = new dp(this, r());
        e.execute(new Void[0]);
      }
    } while ((b.getCount() != 0) || (!e.is(AsyncTask.Status.RUNNING)));
    enableLoading(e);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileCheckIns;
  }
  
  public int i()
  {
    return 2131166137;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    boolean bool = true;
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
          } while (paramInt2 != -1);
          a((YelpCheckIn)paramIntent.getParcelableExtra("key.data"), paramIntent.getBooleanExtra("key.checked", false));
          return;
        } while (paramInt2 != -1);
        AppData.a(EventIri.CheckInComment);
        startActivity(CommentOnCheckIn.a(this, (YelpCheckIn)paramIntent.getParcelableExtra("key.data"), true));
        return;
      } while (paramInt2 != -1);
      AppData.a(EventIri.CheckInCommentBubble);
      paramIntent = (YelpCheckIn)paramIntent.getParcelableExtra("key.data");
      paramInt1 = paramIntent.getFeedback().getPositiveFeedbackCount();
      paramInt2 = paramIntent.getCommentsCount();
      if ((paramInt1 == 0) && (paramInt2 == 0)) {}
      for (;;)
      {
        startActivity(CommentOnCheckIn.a(this, paramIntent, bool));
        return;
        bool = false;
      }
    } while (paramInt2 != -1);
    paramIntent = CommentOnCheckIn.a(paramIntent);
    b.a(paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166136);
    a = ((User)getIntent().getParcelableExtra("user.xtra"));
    PendingIntent localPendingIntent1 = createPendingResult(103, new Intent("like"), 0);
    PendingIntent localPendingIntent2 = createPendingResult(102, new Intent("comment"), 0);
    PendingIntent localPendingIntent3 = createPendingResult(104, new Intent("comment_or_like"), 0);
    b = new t(a, localPendingIntent1, localPendingIntent2, localPendingIntent3);
    if (paramBundle != null)
    {
      b.b(paramBundle);
      d = paramBundle.getIntArray("key.leaderboardArray");
      c = ((OfferSummary)paramBundle.getParcelable("key.offer"));
    }
    if ((b.getCount() != 0) && (d != null))
    {
      f();
      q().setAdapter(b);
    }
    e = c();
    d();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a(q(), paramYelpException.getMessageResource());
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return e;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    b.a(paramBundle);
    paramBundle.putIntArray("key.leaderboardArray", d);
    paramBundle.putParcelable("key.offer", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserCheckIns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */