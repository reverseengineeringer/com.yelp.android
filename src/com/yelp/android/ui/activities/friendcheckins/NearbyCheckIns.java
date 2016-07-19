package com.yelp.android.ui.activities.friendcheckins;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.CheckInRankingsRequest;
import com.yelp.android.appdata.webrequests.CheckInRankingsRequest.SearchMode;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cb;
import com.yelp.android.appdata.webrequests.cb.a;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.ek;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.CheckIn;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.serializable.Royal;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInType;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.activities.ActivityContributionSearch;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard;
import com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard.LeaderboardType;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter.RankMode;
import com.yelp.android.ui.activities.profile.ActivityUserCheckIns;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.panels.LeaderboardHeader;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.TitleWithSubTitleView;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.util.e;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class NearbyCheckIns
  extends YelpActivity
  implements AdapterView.OnItemClickListener, b.e, com.yelp.android.ui.k, PanelError.a
{
  int[] a;
  CheckinRankAdapter b;
  aj c;
  aj d;
  a e = new a()
  {
    protected void a(YelpCheckIn paramAnonymousYelpCheckIn)
    {
      int[] arrayOfInt = a;
      int j = arrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        int k = arrayOfInt[i];
        ((a)d.a(k).a).b(paramAnonymousYelpCheckIn);
        i += 1;
      }
    }
  };
  private View f;
  private cb g;
  private CheckInRankingsRequest h;
  private b i;
  private LeaderboardHeader j;
  private TitleWithSubTitleView k;
  private ActivityLeaderboard.LeaderboardType l;
  private ListView m;
  private e n;
  private ArrayList<String> o;
  private boolean p;
  private long q;
  private int r;
  private int s;
  private int t;
  private boolean u;
  private final k.b<cb.a> v = new k.b()
  {
    public void a(Location paramAnonymousLocation)
    {
      Log.d("NearbyFriendsActivity", "Got location, beginning API request");
      enableLoading(NearbyCheckIns.e(NearbyCheckIns.this));
    }
    
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, cb.a paramAnonymousa)
    {
      paramAnonymousApiRequest = (cb)paramAnonymousApiRequest;
      NearbyCheckIns.a(NearbyCheckIns.this, System.currentTimeMillis());
      disableLoading();
      TextView localTextView = (TextView)findViewById(2131689773);
      localTextView.setVisibility(8);
      if (paramAnonymousApiRequest.A() == 0)
      {
        paramAnonymousa = new aj();
        paramAnonymousa.a(2131689969, "", NearbyCheckIns.b(NearbyCheckIns.this));
        NearbyCheckIns.c(NearbyCheckIns.this).setAdapter(paramAnonymousa);
        localTextView.setVisibility(0);
        localTextView.setText(2131165405);
      }
      for (;;)
      {
        a(paramAnonymousApiRequest.x(), paramAnonymousApiRequest.y(), paramAnonymousApiRequest.z());
        if (paramAnonymousApiRequest.z() > 0) {
          NearbyCheckIns.a(NearbyCheckIns.this, ActivityLeaderboard.LeaderboardType.FRIENDS);
        }
        NearbyCheckIns.a(NearbyCheckIns.this, paramAnonymousApiRequest.B());
        a(NearbyCheckIns.d(NearbyCheckIns.this));
        return;
        ((a)d.a(a[0]).a).a(paramAnonymousa.a());
        ((a)d.a(a[1]).a).a(paramAnonymousa.b());
        ((a)d.a(a[2]).a).a(paramAnonymousa.c());
      }
    }
    
    public boolean a()
    {
      return true;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      Log.d("NearbyFriendsActivity", "API error: " + paramAnonymousYelpException.getMessage(NearbyCheckIns.this));
      populateError(ErrorType.getTypeFromException(paramAnonymousYelpException));
    }
  };
  private AdapterView.OnItemClickListener w = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousView = paramAnonymousView.getContext();
      paramAnonymousAdapterView = paramAnonymousAdapterView.getAdapter().getItem(paramAnonymousInt);
      if ((paramAnonymousAdapterView instanceof Royal)) {
        paramAnonymousView.startActivity(ActivityUserProfile.a(paramAnonymousView, ((Royal)paramAnonymousAdapterView).e()));
      }
      while (!(paramAnonymousAdapterView instanceof DisplayableAsUserBadge)) {
        return;
      }
      paramAnonymousView.startActivity(ActivityUserProfile.a(paramAnonymousView, ((DisplayableAsUserBadge)paramAnonymousAdapterView).i()));
    }
  };
  
  private void a(ActivityLeaderboard.LeaderboardType paramLeaderboardType)
  {
    l = paramLeaderboardType;
    j.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivity(ActivityLeaderboard.a(NearbyCheckIns.this, NearbyCheckIns.a(NearbyCheckIns.this)));
      }
    });
  }
  
  private ViewGroup f()
  {
    ViewGroup localViewGroup = (ViewGroup)getLayoutInflater().inflate(2130903412, m, false);
    f = localViewGroup.findViewById(2131689755);
    f.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivity(ActivityContributionSearch.a(NearbyCheckIns.this, BusinessContributionType.CHECK_IN));
      }
    });
    j = ((LeaderboardHeader)localViewGroup.findViewById(2131690698));
    a(ActivityLeaderboard.LeaderboardType.WEEK);
    k = ((TitleWithSubTitleView)localViewGroup.findViewById(2131690699));
    k.setVisibility(g());
    k.getTitle().setText(2131166190);
    k.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = paramAnonymousView.getContext();
        paramAnonymousView.startActivity(ActivityUserCheckIns.a(paramAnonymousView, null));
      }
    });
    return localViewGroup;
  }
  
  private int g()
  {
    if (getAppData().q().b()) {
      return 0;
    }
    return 8;
  }
  
  protected void a(int paramInt1, int paramInt2, int paramInt3)
  {
    r = paramInt1;
    s = paramInt2;
    t = paramInt3;
    j.a(paramInt1, paramInt2, paramInt3);
  }
  
  void a(ArrayList<String> paramArrayList)
  {
    k.setVisibility(0);
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      paramArrayList = StringUtils.a(this, paramArrayList, 2, 0, ", ");
      k.getSubTitle().setText(getString(2131166053, new Object[] { paramArrayList }));
      k.getSubTitle().setVisibility(0);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    populateError(ErrorType.NO_LOCATION);
  }
  
  protected void addStatusView(View paramView)
  {
    if ((paramView instanceof PanelLoading))
    {
      ViewGroup localViewGroup = (ViewGroup)findViewById(2131689772);
      paramView.setId(2131690115);
      localViewGroup.addView(paramView);
      return;
    }
    super.addStatusView(paramView);
  }
  
  public void b()
  {
    p_();
  }
  
  public Pair<CheckInRankingsRequest, cb> c()
  {
    return Pair.create(h, g);
  }
  
  public void clearError()
  {
    super.clearError();
    if (j != null) {
      j.setVisibility(0);
    }
    if (k != null) {
      k.setVisibility(g());
    }
    if (f != null) {
      f.setVisibility(0);
    }
  }
  
  public Pair<CheckInRankingsRequest, cb> e()
  {
    return (Pair)super.getLastCustomNonConfigurationInstance();
  }
  
  public void enableLoading(ApiRequest<?, ?, ?> paramApiRequest)
  {
    super.enableLoading(paramApiRequest);
    d.clear();
    c.clear();
    findViewById(2131689773).setVisibility(8);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.CheckInsFriends;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (!e.a(this, paramInt1, paramInt2, paramIntent)) {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903079);
    u = false;
    m = ((ListView)findViewById(2131689771));
    m.setItemsCanFocus(true);
    n = new e(new View[] { f() })
    {
      public void clear() {}
    };
    a = new int[] { 2131165629, 2131165631, 2131165630 };
    d = new aj();
    d.a(2131689969, "", n);
    Object localObject = createPendingResult(103, new Intent("like", null, this, CommentOnCheckIn.class), 0);
    PendingIntent localPendingIntent1 = createPendingResult(102, new Intent("comment", null, this, CommentOnCheckIn.class), 0);
    PendingIntent localPendingIntent2 = createPendingResult(104, new Intent("view_like_comment", null, this, NearbyCheckIns.class), 0);
    int[] arrayOfInt = a;
    int i2 = arrayOfInt.length;
    int i1 = 0;
    int i3;
    if (i1 < i2)
    {
      i3 = arrayOfInt[i1];
      if (i3 == 2131165630) {}
      for (boolean bool = true;; bool = false)
      {
        a locala = new a(bool, false);
        locala.a((PendingIntent)localObject);
        locala.b(localPendingIntent1);
        locala.c(localPendingIntent2);
        d.a(i3, getString(i3), locala);
        i1 += 1;
        break;
      }
    }
    c = new aj();
    c.a(2131689969, "", n);
    b = new CheckinRankAdapter(this, CheckinRankAdapter.RankMode.WEEK);
    c.a(2131690710, "", b);
    r = -1;
    s = -1;
    t = -1;
    if (paramBundle != null)
    {
      localObject = a;
      i2 = localObject.length;
      i1 = 0;
      while (i1 < i2)
      {
        i3 = localObject[i1];
        ((a)d.a(i3).a).a(paramBundle.getParcelableArrayList(getString(i3)));
        i1 += 1;
      }
      r = paramBundle.getInt("weekly_rank", -1);
      s = paramBundle.getInt("friend_rank", -1);
      t = paramBundle.getInt("friend_active_count", -1);
      a(r, s, t);
      o = paramBundle.getStringArrayList("recent_locations");
      a(o);
      a(ActivityLeaderboard.LeaderboardType.values()[paramBundle.getInt("rank_target", 0)]);
    }
    paramBundle = e();
    if (paramBundle != null)
    {
      h = ((CheckInRankingsRequest)first);
      g = ((cb)second);
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (!(paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo)) {}
    do
    {
      return;
      int i1 = position;
      localObject = ((AdapterView)paramView).getAdapter().getItem(i1);
    } while (!(localObject instanceof CheckIn));
    Object localObject = (CheckIn)localObject;
    paramContextMenu.setHeaderIcon(2130837646);
    paramContextMenu.setHeaderTitle(getString(2131165612, new Object[] { ((CheckIn)localObject).a() }));
    ab.a(this, paramContextMenu, (CheckIn)localObject);
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if ((paramAdapterView instanceof CheckIn)) {
      startActivity(ActivityBusinessPage.b(this, ((CheckIn)paramAdapterView).d()));
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    d.clear();
    c.clear();
    if (h != null) {
      h.a(true);
    }
    h = null;
    if (g != null) {
      g.a(true);
    }
    g = null;
    u = false;
  }
  
  public void onResume()
  {
    super.onResume();
    Notifier.a(this, Notifier.NotificationType.Checkin, Integer.valueOf(CheckInPushNotificationHandler.CheckInType.getIdForCheckInFriends()));
    if (getAppData().q().d())
    {
      if (!u)
      {
        u = true;
        m.setOnItemClickListener(this);
        registerForContextMenu(m);
        m.setItemsCanFocus(true);
        m.setAdapter(d);
        if (!TextUtils.isEmpty(j.getSubTitle().getText())) {
          j.getSubTitle().setVisibility(0);
        }
        if (g != null) {
          g.a(v);
        }
      }
      if (g == null) {
        p_();
      }
    }
    do
    {
      do
      {
        do
        {
          return;
          if (g.u())
          {
            enableLoading(g);
            return;
          }
          if (g.d())
          {
            enableLoading(g, 2131165907);
            return;
          }
        } while ((c != null) && (c.getCount() != 0));
        p_();
        return;
        u = false;
        unregisterForContextMenu(m);
        j.getSubTitle().setVisibility(8);
        i = new b(b);
        m.setOnItemClickListener(w);
        m.setAdapter(c);
        if (h != null) {
          h.a(i);
        }
        if (g == null) {
          break;
        }
        if (g.u())
        {
          enableLoading(g);
          return;
        }
      } while (!g.d());
      enableLoading(g, 2131165907);
      return;
    } while (((!d.a(a)) || (p)) && (System.currentTimeMillis() - q <= TimeUnit.MILLISECONDS.convert(600L, TimeUnit.SECONDS)));
    p_();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if ((d != null) && (d.a(a)))
    {
      int i1 = a[0];
      ArrayList localArrayList = new ArrayList(((a)d.a(i1).a).b());
      paramBundle.putParcelableArrayList(getString(i1), localArrayList);
      i1 = a[1];
      localArrayList = new ArrayList(((a)d.a(i1).a).b());
      paramBundle.putParcelableArrayList(getString(i1), localArrayList);
      i1 = a[2];
      localArrayList = new ArrayList(((a)d.a(i1).a).b());
      paramBundle.putParcelableArrayList(getString(i1), localArrayList);
    }
    paramBundle.putInt("weekly_rank", r);
    paramBundle.putInt("friend_rank", s);
    paramBundle.putInt("friend_active_count", t);
    paramBundle.putInt("rank_target", l.ordinal());
    paramBundle.putStringArrayList("recent_locations", o);
  }
  
  public void p_()
  {
    clearError();
    p = false;
    if (g != null) {
      g.a(true);
    }
    if (h != null) {
      h.a(true);
    }
    if (getAppData().q().d()) {
      g = new cb(v);
    }
    for (Object localObject = g;; localObject = h)
    {
      enableLoading((ApiRequest)localObject);
      ((com.yelp.android.appdata.webrequests.k)localObject).a(new Void[0]);
      return;
      h = CheckInRankingsRequest.a(i, CheckInRankingsRequest.SearchMode.WEEK);
    }
  }
  
  public void populateError(ErrorType paramErrorType)
  {
    super.populateError(paramErrorType);
    d.clear();
    c.clear();
    if (j != null) {
      j.setVisibility(8);
    }
    if (k != null) {
      k.setVisibility(8);
    }
    if (f != null) {
      f.setVisibility(8);
    }
  }
  
  public void q_()
  {
    p_();
  }
  
  public static abstract class a
  {
    protected abstract void a(YelpCheckIn paramYelpCheckIn);
    
    public boolean a(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
    {
      boolean bool2 = false;
      YelpCheckIn localYelpCheckIn = null;
      switch (paramInt1)
      {
      default: 
        return false;
      case 102: 
        if (paramInt2 == -1)
        {
          localYelpCheckIn = (YelpCheckIn)paramIntent.getParcelableExtra("extra.data");
          AppData.a(EventIri.CheckInComment);
          paramActivity.startActivityForResult(CommentOnCheckIn.a(paramActivity, localYelpCheckIn, true), 101);
        }
        break;
      }
      for (;;)
      {
        if (localYelpCheckIn != null) {
          a(localYelpCheckIn);
        }
        return true;
        if (paramInt2 == -1)
        {
          localYelpCheckIn = (YelpCheckIn)paramIntent.getParcelableExtra("extra.data");
          paramActivity = localYelpCheckIn.z();
          boolean bool1;
          if (!localYelpCheckIn.n().c())
          {
            bool1 = true;
            label124:
            if (!bool1) {
              break label234;
            }
            localYelpCheckIn.n().a();
          }
          for (;;)
          {
            paramIntent = new HashMap();
            paramIntent.put("business_id", localYelpCheckIn.k());
            paramIntent.put("check_in_id", paramActivity);
            paramIntent.put("is_positive", Boolean.valueOf(bool1));
            paramIntent.put("source", "friends_check_ins");
            AppData.a(EventIri.CheckInFeedback, paramIntent);
            new ek(paramActivity, bool1).f(new Void[0]);
            break;
            bool1 = false;
            break label124;
            label234:
            localYelpCheckIn.n().b();
          }
          if (paramInt2 == -1)
          {
            localYelpCheckIn = (YelpCheckIn)paramIntent.getParcelableExtra("extra.data");
            AppData.a(EventIri.CheckInCommentBubble);
            paramInt1 = localYelpCheckIn.n().d();
            bool1 = bool2;
            if (localYelpCheckIn.u() == 0)
            {
              bool1 = bool2;
              if (paramInt1 == 0) {
                bool1 = true;
              }
            }
            paramActivity.startActivityForResult(CommentOnCheckIn.a(paramActivity, localYelpCheckIn, bool1), 101);
            continue;
            if (paramInt2 == -1) {
              localYelpCheckIn = CommentOnCheckIn.a(paramIntent);
            }
          }
        }
      }
    }
  }
  
  private class b
    extends k.b<ArrayList<Ranking>>
  {
    private final CheckinRankAdapter b;
    
    public b(CheckinRankAdapter paramCheckinRankAdapter)
    {
      b = paramCheckinRankAdapter;
    }
    
    public void a(Location paramLocation)
    {
      super.a(paramLocation);
      enableLoading(NearbyCheckIns.f(NearbyCheckIns.this));
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<Ranking> paramArrayList)
    {
      b.a(paramArrayList);
      disableLoading();
    }
    
    public boolean a()
    {
      onProvidersRequired(NearbyCheckIns.this, false, 0);
      return false;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      disableLoading();
      populateError(ErrorType.getTypeFromException(paramYelpException));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */