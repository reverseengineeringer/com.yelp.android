package com.yelp.android.ui.activities.friendcheckins;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.CheckInRankingsRequest;
import com.yelp.android.appdata.webrequests.CheckInRankingsRequest.SearchMode;
import com.yelp.android.appdata.webrequests.cj;
import com.yelp.android.appdata.webrequests.ck;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.CheckIn;
import com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInType;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard.LeaderboardType;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter.RankMode;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.LeaderboardHeader;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.TitleWithSubTitleView;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.bf;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class NearbyCheckIns
  extends YelpActivity
  implements AdapterView.OnItemClickListener, com.yelp.android.ui.activities.support.o, com.yelp.android.ui.p, aa
{
  int[] a;
  CheckinRankAdapter b;
  bs c;
  bs d;
  p e = new n(this);
  private View f;
  private cj g;
  private CheckInRankingsRequest h;
  private q i;
  private LeaderboardHeader j;
  private TitleWithSubTitleView k;
  private ActivityLeaderboard.LeaderboardType l;
  private ListView m;
  private com.yelp.android.ui.util.h n;
  private ArrayList<String> o;
  private boolean p;
  private long q;
  private int r;
  private int s;
  private int t;
  private boolean u;
  private final com.yelp.android.appdata.webrequests.j<ck> v = new m(this);
  private AdapterView.OnItemClickListener w = new o(this);
  
  private void a(ActivityLeaderboard.LeaderboardType paramLeaderboardType)
  {
    l = paramLeaderboardType;
    j.setOnClickListener(new l(this));
  }
  
  private ViewGroup e()
  {
    ViewGroup localViewGroup = (ViewGroup)getLayoutInflater().inflate(2130903315, m, false);
    f = localViewGroup.findViewById(2131493071);
    f.setOnClickListener(new j(this));
    j = ((LeaderboardHeader)localViewGroup.findViewById(2131493859));
    a(ActivityLeaderboard.LeaderboardType.WEEK);
    k = ((TitleWithSubTitleView)localViewGroup.findViewById(2131493860));
    k.setVisibility(f());
    k.getTitle().setText(2131166136);
    k.setOnClickListener(new k(this));
    return localViewGroup;
  }
  
  private int f()
  {
    if (getAppData().m().c()) {
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
      k.getSubTitle().setText(getString(2131165998, new Object[] { paramArrayList }));
      k.getSubTitle().setVisibility(0);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    populateError(ErrorType.NO_LOCATION);
  }
  
  public void a_()
  {
    clearError();
    p = false;
    if (g != null) {
      g.cancel(true);
    }
    if (h != null) {
      h.cancel(true);
    }
    if (getAppData().m().e()) {
      g = new cj(v);
    }
    for (Object localObject = g;; localObject = h)
    {
      enableLoading((ApiRequest)localObject);
      ((com.yelp.android.appdata.webrequests.h)localObject).executeWithLocation(new Void[0]);
      return;
      h = CheckInRankingsRequest.a(i, CheckInRankingsRequest.SearchMode.WEEK);
    }
  }
  
  protected void addStatusView(View paramView)
  {
    if ((paramView instanceof PanelLoading))
    {
      ViewGroup localViewGroup = (ViewGroup)findViewById(2131493088);
      paramView.setId(2131493436);
      localViewGroup.addView(paramView);
      return;
    }
    super.addStatusView(paramView);
  }
  
  public Pair<CheckInRankingsRequest, cj> c()
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
      k.setVisibility(f());
    }
    if (f != null) {
      f.setVisibility(0);
    }
  }
  
  public Pair<CheckInRankingsRequest, cj> d()
  {
    return (Pair)super.getLastCustomNonConfigurationInstance();
  }
  
  public void enableLoading(ApiRequest<?, ?, ?> paramApiRequest)
  {
    super.enableLoading(paramApiRequest);
    d.clear();
    c.clear();
    findViewById(2131493089).setVisibility(8);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.CheckInsFriends;
  }
  
  public void k_()
  {
    a_();
  }
  
  public void m_()
  {
    a_();
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
    setContentView(2130903071);
    u = false;
    m = ((ListView)findViewById(2131493087));
    m.setItemsCanFocus(true);
    n = new i(this, new View[] { e() });
    a = new int[] { 2131165499, 2131165501, 2131165500 };
    d = new bs();
    d.a(2131493313, "", n);
    Object localObject = createPendingResult(103, new Intent("like"), 0);
    PendingIntent localPendingIntent1 = createPendingResult(102, new Intent("comment"), 0);
    PendingIntent localPendingIntent2 = createPendingResult(104, new Intent("view_like_comment"), 0);
    int[] arrayOfInt = a;
    int i2 = arrayOfInt.length;
    int i1 = 0;
    int i3;
    if (i1 < i2)
    {
      i3 = arrayOfInt[i1];
      if (i3 == 2131165500) {}
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
    c = new bs();
    c.a(2131493313, "", n);
    b = new CheckinRankAdapter(this, CheckinRankAdapter.RankMode.WEEK);
    c.a(2131493873, "", b);
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
    paramBundle = d();
    if (paramBundle != null)
    {
      h = ((CheckInRankingsRequest)first);
      g = ((cj)second);
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
    paramContextMenu.setHeaderIcon(2130837624);
    paramContextMenu.setHeaderTitle(getString(2131165485, new Object[] { ((CheckIn)localObject).getUserName() }));
    bf.a(this, paramContextMenu, (CheckIn)localObject);
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if ((paramAdapterView instanceof CheckIn)) {
      startActivity(ActivityBusinessPage.b(this, ((CheckIn)paramAdapterView).getBusiness()));
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    d.clear();
    c.clear();
    if (h != null) {
      h.cancel(true);
    }
    h = null;
    if (g != null) {
      g.cancel(true);
    }
    g = null;
    u = false;
  }
  
  public void onResume()
  {
    super.onResume();
    Notifier.a(this, Notifier.NotificationType.Checkin, Integer.valueOf(CheckInPushNotificationHandler.CheckInType.getIdForCheckInFriends()));
    if (getAppData().m().e())
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
          g.setCallback(v);
        }
      }
      if (g == null) {
        a_();
      }
    }
    do
    {
      do
      {
        do
        {
          return;
          if (g.isFetching())
          {
            enableLoading(g);
            return;
          }
          if (g.isWaitingForLocation())
          {
            enableLoading(g, 2131165825);
            return;
          }
        } while ((c != null) && (c.getCount() != 0));
        a_();
        return;
        u = false;
        unregisterForContextMenu(m);
        j.getSubTitle().setVisibility(8);
        i = new q(this, b);
        m.setOnItemClickListener(w);
        m.setAdapter(c);
        if (h != null) {
          h.setCallback(i);
        }
        if (g == null) {
          break;
        }
        if (g.isFetching())
        {
          enableLoading(g);
          return;
        }
      } while (!g.isWaitingForLocation());
      enableLoading(g, 2131165825);
      return;
    } while (((!d.a(a)) || (p)) && (System.currentTimeMillis() - q <= TimeUnit.MILLISECONDS.convert(600L, TimeUnit.SECONDS)));
    a_();
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
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */