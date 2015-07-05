package com.yelp.android.ui.activities;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.de;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class ActivityCheckInsList
  extends YelpListActivity
  implements AdapterView.OnItemClickListener, m<List<YelpCheckIn>>
{
  protected ApiRequest<?, ?, List<YelpCheckIn>> a;
  protected SimpleAdapter b;
  protected ArrayList<YelpCheckIn> c;
  protected User d;
  private ArrayList<Map<String, ?>> e;
  private de f;
  
  public EnumMap<ActivityCheckInsList.Key, Object> a(YelpCheckIn paramYelpCheckIn, boolean paramBoolean)
  {
    EnumMap localEnumMap = new EnumMap(ActivityCheckInsList.Key.class);
    Object localObject = paramYelpCheckIn.getLocationRankTitle();
    ActivityCheckInsList.Key localKey = ActivityCheckInsList.Key.badgeIcon;
    int i;
    if (localObject == RankTitle.Rank.TOP_USER)
    {
      i = 2130838513;
      localEnumMap.put(localKey, Integer.valueOf(i));
      localEnumMap.put(ActivityCheckInsList.Key.actionTitle, StringUtils.a(this, 2131623942, paramYelpCheckIn.getTotalCount(), new String[0]));
      localEnumMap.put(ActivityCheckInsList.Key.locationTitle, paramYelpCheckIn.getBusinessName());
      localEnumMap.put(ActivityCheckInsList.Key.ratingImage, Double.valueOf(paramYelpCheckIn.getBusiness().getAvgRating()));
      localEnumMap.put(ActivityCheckInsList.Key.reviewCount, getResources().getQuantityString(2131623970, paramYelpCheckIn.getBusiness().getReviewCount(), new Object[] { Integer.valueOf(paramYelpCheckIn.getBusiness().getReviewCount()) }));
      if (!paramBoolean) {
        break label212;
      }
    }
    label212:
    for (localObject = getString(2131165999, new Object[] { StringUtils.a(this, StringUtils.Format.LONG, paramYelpCheckIn.getDateCreated()) });; localObject = paramYelpCheckIn.getBusiness().getCategoryForBusinessSearchResult())
    {
      localEnumMap.put(ActivityCheckInsList.Key.bottomInfoText, localObject);
      localEnumMap.put(ActivityCheckInsList.Key.itemImage, paramYelpCheckIn.getBusiness().getPhotoUrl());
      return localEnumMap;
      i = ((RankTitle.Rank)localObject).getRankIcon();
      break;
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    startActivity(ActivityBusinessPage.b(this, ((YelpCheckIn)c.get(paramInt)).getBusiness()));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpCheckIn> paramList)
  {
    c.addAll(paramList);
    a(paramList);
    disableLoading();
    if (f() <= c.size()) {
      q().f();
    }
  }
  
  public void a(Collection<YelpCheckIn> paramCollection)
  {
    boolean bool = getAppData().m().a(d.getId());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = a((YelpCheckIn)paramCollection.next(), bool);
      HashMap localHashMap = new HashMap(((EnumMap)localObject).size());
      localObject = ((EnumMap)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        localHashMap.put(((ActivityCheckInsList.Key)localEntry.getKey()).name(), localEntry.getValue());
      }
      e.add(localHashMap);
    }
    b.notifyDataSetChanged();
  }
  
  public void a_()
  {
    e.clear();
    c.clear();
    b.notifyDataSetInvalidated();
    d();
  }
  
  protected abstract ApiRequest<?, ?, List<YelpCheckIn>> b_();
  
  public ApiRequest<?, ?, List<YelpCheckIn>> c()
  {
    return (ApiRequest)super.getLastCustomNonConfigurationInstance();
  }
  
  protected void d()
  {
    if (((a == null) || (a.isCompleted())) && (f() > b.getCount()))
    {
      a = b_();
      a.execute(new Object[0]);
      if (b.getCount() == 0) {
        enableLoading(a);
      }
    }
  }
  
  protected abstract int f();
  
  protected User g()
  {
    return d;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return g.b(d.getId());
  }
  
  public ApiRequest<?, ?, List<YelpCheckIn>> h()
  {
    return a;
  }
  
  public int i()
  {
    return 2131166187;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((paramBundle != null) && (paramBundle.containsKey("check_ins"))) {}
    for (c = paramBundle.getParcelableArrayList("check_ins");; c = new ArrayList())
    {
      f = new de(2130837648);
      a = c();
      if (a != null) {
        a.setCallback(this);
      }
      d = ((User)getIntent().getParcelableExtra("user"));
      paramBundle = q();
      e = new ArrayList();
      Pair localPair = ActivityCheckInsList.Key.getIds();
      b = new SimpleAdapter(this, e, 2130903313, (String[])first, (int[])second);
      b.setViewBinder(f);
      paramBundle.setDividerHeight(0);
      paramBundle.setAdapter(b);
      if (c.size() > 0) {
        a(c);
      }
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    populateError(paramYelpException);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((a != null) && (a.isFetching())) {
      enableLoading(a);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("check_ins", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCheckInsList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */