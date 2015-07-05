package com.yelp.android.ui.activities.feed;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.widget.bt;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView.RecyclerListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.bumptech.glide.h;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest;
import com.yelp.android.appdata.webrequests.ce;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.appdata.webrequests.gx;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.bd.c;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.BookmarkFeedEntry;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.SpannedTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class FeedFragment
  extends YelpSwipeRefreshListFragment
{
  private static final int a = com.yelp.android.appdata.ao.c;
  private FeedType b;
  private aq c;
  private ArrayList<FeedEntry> d;
  private boolean e;
  private ce g;
  private gx h;
  private ReviewVoteRequest i;
  private fq j;
  private SpannedTextView k;
  private SpannedTextView l;
  private boolean m = false;
  private String n = null;
  private boolean o = false;
  private com.bumptech.glide.j p;
  private final com.yelp.android.av.i q = new ap(this);
  private final com.yelp.android.av.i r = new y(this);
  private final com.yelp.android.appdata.webrequests.j<FeedRequestResult> s = new z(this);
  private final bd t = new aa(this);
  private final bh u = new ab(this);
  private final com.yelp.android.ui.panels.aa v = new ac(this);
  private final com.yelp.android.ui.panels.aa w = new ad(this);
  private final m<User> x = new ae(this);
  private final AbsListView.RecyclerListener y = new af(this);
  private final bt z = new ag(this);
  
  private void a(LayoutInflater paramLayoutInflater)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903203, m(), false);
    paramLayoutInflater.setOnTouchListener(new x(this));
    k = ((SpannedTextView)paramLayoutInflater.findViewById(2131493529));
    k.setOnClickListener(new ai(this));
    l = ((SpannedTextView)paramLayoutInflater.findViewById(2131493531));
    l.setOnClickListener(new aj(this));
    f();
    m().addHeaderView(paramLayoutInflater);
  }
  
  private void f()
  {
    int i1 = com.yelp.android.appdata.ab.a().f();
    c localc;
    if (i1 > 0)
    {
      localc = new c(getActivity(), 2130837635, i1);
      localc.a(a);
      localc.setBounds(0, 0, localc.getIntrinsicWidth(), localc.getIntrinsicHeight());
    }
    for (;;)
    {
      k.setCompoundDrawables(k.getCompoundDrawables()[0], null, localc, null);
      i1 = com.yelp.android.appdata.ab.a().e();
      if (i1 > 0)
      {
        localc = new c(getActivity(), 2130837635, i1);
        localc.a(a);
        localc.setBounds(0, 0, localc.getIntrinsicWidth(), localc.getIntrinsicHeight());
      }
      for (;;)
      {
        l.setCompoundDrawables(l.getCompoundDrawables()[0], null, localc, null);
        return;
        localc = null;
      }
      localc = null;
    }
  }
  
  private void g()
  {
    b("com.yelp.android.review.state.update", new ak(this));
    b("com.yelp.android.tips.update", new al(this));
    b("com.yelp.android.tips.delete", new am(this));
    b("com.yelp.android.media.delete", new an(this));
    b("com.yelp.android.review.update", new ao(this));
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if ((paramInt < paramListView.getHeaderViewsCount()) || (paramInt > paramListView.getCount() - paramListView.getFooterViewsCount())) {}
    do
    {
      return;
      paramListView = paramListView.getItemAtPosition(paramInt);
      if ((paramListView instanceof FeedEntry)) {
        a((FeedEntry)paramListView);
      }
      if ((paramListView instanceof ReviewFeedEntry))
      {
        startActivityForResult(((ReviewFeedEntry)paramListView).getIntentForClick(getActivity()), 1046);
        return;
      }
      if ((paramListView instanceof TipFeedEntry))
      {
        startActivity(((TipFeedEntry)paramListView).getIntentForClick(getActivity()));
        return;
      }
      if ((paramListView instanceof BizPhotoFeedEntry))
      {
        startActivity(ActivityBusinessPage.a(getActivity(), ((BizPhotoFeedEntry)paramListView).getBusinessId()));
        return;
      }
    } while (!(paramListView instanceof FeedEntry));
    paramListView = (FeedEntry)paramListView;
    if (paramListView.getBusiness() == null)
    {
      startActivity(ActivityBusinessPage.a(getActivity(), paramListView.getBusinessId()));
      return;
    }
    startActivity(ActivityBusinessPage.b(getActivity(), paramListView.getBusiness()));
  }
  
  public void a(FeedEntry paramFeedEntry)
  {
    if ((paramFeedEntry instanceof ReviewFeedEntry))
    {
      HashMap localHashMap = new HashMap();
      AppData.a(FeedEventIriType.FEED_SELECTED.getFeedEventIriByFeedType(b), paramFeedEntry.setupIriParams(localHashMap));
    }
  }
  
  public void a(FeedType paramFeedType)
  {
    b = paramFeedType;
    m().setItemsCanFocus(true);
    c = new aq(paramFeedType, new v());
    paramFeedType = new ba(t);
    c.a(ReviewFeedEntry.class, paramFeedType);
    paramFeedType = new d(z, p);
    c.a(BizPhotoFeedEntry.class, paramFeedType);
    paramFeedType = new i();
    c.a(BookmarkFeedEntry.class, paramFeedType);
    paramFeedType = new bg(u);
    c.a(TipFeedEntry.class, paramFeedType);
    c.a(UserIdOverridenTipFeedEntry.class, paramFeedType);
    a(c);
  }
  
  public void a(List<? extends FeedEntry> paramList)
  {
    d.addAll(paramList);
    c.a(paramList);
    b(d.size());
  }
  
  public void a_()
  {
    if (d.size() == 0) {
      a(null);
    }
    m = true;
    b();
  }
  
  public void b()
  {
    String str2;
    FeedType localFeedType;
    com.yelp.android.appdata.webrequests.j localj;
    if (!o)
    {
      o = true;
      super.b();
      str2 = AppData.b().m().b();
      localFeedType = b;
      localj = s;
      if (!m) {
        break label75;
      }
    }
    label75:
    for (String str1 = null;; str1 = n)
    {
      g = new ce(str2, localFeedType, localj, str1);
      g.execute(new Void[0]);
      return;
    }
  }
  
  public void b(List<? extends FeedEntry> paramList)
  {
    d = new ArrayList();
    c.clear();
    a(paramList);
  }
  
  protected boolean c()
  {
    return true;
  }
  
  public aq d()
  {
    return c;
  }
  
  public void e()
  {
    Object localObject = c.c().entrySet().iterator();
    int i2;
    for (int i1 = 0; ((Iterator)localObject).hasNext(); i1 = i2 + i1)
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      i2 = ((at)localEntry.getValue()).a();
      ((at)localEntry.getValue()).b();
    }
    if (i1 > 0)
    {
      localObject = new HashMap();
      ((Map)localObject).put("seen_item_count", Integer.valueOf(i1));
      ((Map)localObject).put("total_media_count", Integer.valueOf(r().getCount()));
      if (getView() == null) {
        break label173;
      }
      ((Map)localObject).put("user_did_scroll", Boolean.valueOf(m().h()));
      m().i();
    }
    for (;;)
    {
      AppData.a(FeedEventIriType.FEED_SEEN.getFeedEventIriByFeedType(b), (Map)localObject);
      return;
      label173:
      ((Map)localObject).put("user_did_scroll", Boolean.valueOf(e));
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (Build.VERSION.SDK_INT >= 16)
    {
      m().setBackground(null);
      d = new ArrayList();
      if (paramBundle != null)
      {
        ArrayList localArrayList = paramBundle.getParcelableArrayList("all_entries");
        b = ((FeedType)paramBundle.getSerializable("feed_type"));
        e = paramBundle.getBoolean("has_user_scrolled");
        d.addAll(localArrayList);
        b(d.size());
      }
      g();
      p = h.a(this);
      a(FeedType.FRIEND);
      if (d.size() != 0) {
        break label224;
      }
      a_();
    }
    for (;;)
    {
      int i1 = cp.a(getActivity(), 2130772042);
      m().setDividerHeight(0);
      m().setClipToPadding(false);
      m().setPadding(0, 0, 0, i1);
      m().setRecyclerListener(y);
      m().setBackgroundColor(getResources().getColor(2131361878));
      a(getLayoutInflater(paramBundle));
      if (paramBundle != null) {
        n = paramBundle.getString("next_page_index");
      }
      return;
      m().setBackgroundDrawable(null);
      break;
      label224:
      b(d);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      YelpActivity.IntentData.popData();
      continue;
      YelpBusinessReview localYelpBusinessReview = ActivityReviewPager.a(paramIntent);
      if (localYelpBusinessReview != null) {
        c.a(localYelpBusinessReview.getId(), ReviewFeedEntry.getFeedUpdate(localYelpBusinessReview));
      }
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    b(g);
    b(h);
    b(i);
    b(j);
  }
  
  public void onPause()
  {
    super.onPause();
    e = m().h();
    a("feed", g);
    a("user", h);
    a("review_vote", i);
    a("tip_feedback", j);
  }
  
  public void onResume()
  {
    super.onResume();
    a("feed", g, s);
    a("user", h, x);
    a("review_vote", i, q);
    a("tip_feedback", j, r);
    f();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("all_entries", d);
    paramBundle.putSerializable("feed_type", b);
    paramBundle.putBoolean("has_user_scrolled", e);
    paramBundle.putString("next_page_index", n);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.FeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */