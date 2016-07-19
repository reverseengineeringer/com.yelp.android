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
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cu;
import com.yelp.android.appdata.webrequests.cu.a;
import com.yelp.android.appdata.webrequests.ek;
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
  implements ApiRequest.b<cu.a>
{
  private User a;
  private f b;
  private OfferSummary c;
  private int[] d;
  private cu e;
  
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, ActivityUserCheckIns.class);
    paramContext.putExtra("user.xtra", paramUser);
    if ((paramUser != null) && (paramUser.P() == 0)) {}
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
    localTitleWithSubTitleView.getTitle().setText(2131166189);
    int i = paramOfferSummary.a();
    paramOfferSummary = StringUtils.a(this, paramOfferSummary.b(), 2, i - paramOfferSummary.b().size(), ", ");
    localTitleWithSubTitleView.getSubTitle().setText(paramOfferSummary);
    localTitleWithSubTitleView.getSubTitle().setVisibility(0);
    return localTitleWithSubTitleView;
  }
  
  private void f()
  {
    LeaderboardHeader localLeaderboardHeader = a(d[0], d[1], d[2]);
    ScrollToLoadListView localScrollToLoadListView = r();
    if (localLeaderboardHeader.getFriendsActiveCount() == 0) {}
    for (ActivityLeaderboard.LeaderboardType localLeaderboardType = ActivityLeaderboard.LeaderboardType.WEEK;; localLeaderboardType = ActivityLeaderboard.LeaderboardType.FRIENDS)
    {
      localScrollToLoadListView.addHeaderView(localLeaderboardHeader, localLeaderboardType, true);
      if ((c != null) && (c.a() > 0)) {
        r().addHeaderView(a(c), c, true);
      }
      return;
    }
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof YelpCheckIn)) {
      startActivity(ActivityBusinessPage.b(this, ((YelpCheckIn)paramListView).d()));
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
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cu.a parama)
  {
    disableLoading();
    c = d;
    d = new int[] { a, b, c };
    if (e.isEmpty())
    {
      r().setEmptyView(a(r(), h()));
      r().f();
    }
    for (;;)
    {
      b.a(e);
      c(b.getCount());
      b.notifyDataSetChanged();
      return;
      if (r().getHeaderViewsCount() == 0)
      {
        f();
        r().setAdapter(b);
      }
    }
  }
  
  void a(YelpCheckIn paramYelpCheckIn, boolean paramBoolean)
  {
    String str = paramYelpCheckIn.z();
    Object localObject = paramYelpCheckIn.n();
    if (paramBoolean) {
      ((Feedback)localObject).a();
    }
    for (;;)
    {
      localObject = new HashMap();
      ((Map)localObject).put("business_id", paramYelpCheckIn.k());
      ((Map)localObject).put("check_in_id", str);
      ((Map)localObject).put("is_positive", Boolean.valueOf(paramBoolean));
      ((Map)localObject).put("source", "users_check_ins");
      AppData.a(EventIri.CheckInFeedback, (Map)localObject);
      new ek(str, paramBoolean).f(new Void[0]);
      b.b(paramYelpCheckIn);
      return;
      ((Feedback)localObject).b();
    }
  }
  
  public cu b()
  {
    return (cu)super.getLastCustomNonConfigurationInstance();
  }
  
  protected void c()
  {
    if ((a != null) && (a.P() == 0)) {
      r().f();
    }
    do
    {
      return;
      if ((e == null) || (e.a(AsyncTask.Status.FINISHED)))
      {
        e = new cu(this, s());
        e.f(new Void[0]);
      }
    } while ((b.getCount() != 0) || (!e.a(AsyncTask.Status.RUNNING)));
    enableLoading(e);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileCheckIns;
  }
  
  public int h()
  {
    return 2131166191;
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
      paramInt1 = paramIntent.n().d();
      paramInt2 = paramIntent.u();
      if ((paramInt1 == 0) && (paramInt2 == 0)) {}
      for (;;)
      {
        startActivity(CommentOnCheckIn.a(this, paramIntent, bool));
        return;
        bool = false;
      }
    } while (paramInt2 != -1);
    paramIntent = CommentOnCheckIn.a(paramIntent);
    b.b(paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166190);
    a = ((User)getIntent().getParcelableExtra("user.xtra"));
    PendingIntent localPendingIntent1 = createPendingResult(103, new Intent("like", null, this, ActivityUserCheckIns.class), 0);
    PendingIntent localPendingIntent2 = createPendingResult(102, new Intent("comment", null, this, ActivityUserCheckIns.class), 0);
    PendingIntent localPendingIntent3 = createPendingResult(104, new Intent("comment_or_like", null, this, ActivityUserCheckIns.class), 0);
    b = new f(a, localPendingIntent1, localPendingIntent2, localPendingIntent3);
    if (paramBundle != null)
    {
      b.b(paramBundle);
      d = paramBundle.getIntArray("key.leaderboardArray");
      c = ((OfferSummary)paramBundle.getParcelable("key.offer"));
    }
    if ((b.getCount() != 0) && (d != null))
    {
      f();
      r().setAdapter(b);
    }
    e = b();
    c();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a(r(), paramYelpException.getMessageResource());
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