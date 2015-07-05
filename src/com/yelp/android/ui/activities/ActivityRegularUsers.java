package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ab;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter.RankMode;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.cp;
import java.util.ArrayList;
import java.util.Map;

public class ActivityRegularUsers
  extends YelpListActivity
  implements m<ArrayList<Ranking>>
{
  private ArrayList<Ranking> a;
  private CheckinRankAdapter b;
  private ab c;
  private String d;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityRegularUsers.class);
    paramContext.putExtra("business_name", paramYelpBusiness.getDisplayName());
    paramContext.putExtra("business_id", paramYelpBusiness.getId());
    return paramContext;
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof Ranking)) {
      startActivity(ActivityUserProfile.a(this, ((Ranking)paramListView).getUserId()));
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<Ranking> paramArrayList)
  {
    d(paramArrayList.size());
    b.a(paramArrayList);
    a.addAll(paramArrayList);
    q().f();
    cp.a(q(), CheckinRankAdapter.a(paramArrayList, AppData.b().m().b()), true);
    disableLoading();
  }
  
  public ab c()
  {
    return (ab)super.getLastCustomNonConfigurationInstance();
  }
  
  public int e_()
  {
    return 40;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessRegulars;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return g.b(getIntent().getStringExtra("business_id"));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    if ((!localIntent.hasExtra("business_name")) || (!localIntent.hasExtra("business_id")))
    {
      Log.e("ActivityRegularUsers", "Activity started without required intent parameters, exiting");
      finish();
    }
    d = localIntent.getStringExtra("business_id");
    b = new CheckinRankAdapter(this, CheckinRankAdapter.RankMode.BIZ);
    if ((paramBundle != null) && (paramBundle.containsKey("rankings")))
    {
      a = paramBundle.getParcelableArrayList("rankings");
      b.a(a);
      q().f();
      q().setAdapter(b);
      setTitle(2131165492);
      return;
    }
    a = new ArrayList();
    c = c();
    if ((c != null) && (c.isFetching())) {
      c.setCallback(this);
    }
    for (;;)
    {
      enableLoading(c);
      break;
      c = new ab(d, r(), e_(), this);
      c.execute(new Void[0]);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    if ((isFinishing()) && (c != null) && (!c.isCompleted())) {
      c.cancel(true);
    }
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return c;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("rankings", a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRegularUsers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */