package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.ae;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter.RankMode;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ar;
import java.util.ArrayList;
import java.util.Map;

public class ActivityRegularUsers
  extends YelpListActivity
  implements ApiRequest.b<ArrayList<Ranking>>
{
  private ArrayList<Ranking> a;
  private CheckinRankAdapter b;
  private ae c;
  private String d;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityRegularUsers.class);
    paramContext.putExtra("business_name", paramYelpBusiness.z());
    paramContext.putExtra("business_id", paramYelpBusiness.aD());
    return paramContext;
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof Ranking)) {
      startActivity(ActivityUserProfile.a(this, ((Ranking)paramListView).i()));
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<Ranking> paramArrayList)
  {
    d(paramArrayList.size());
    b.a(paramArrayList);
    a.addAll(paramArrayList);
    r().f();
    ar.a(r(), CheckinRankAdapter.a(paramArrayList, AppData.b().q().a()), true);
    disableLoading();
  }
  
  public ae b()
  {
    return (ae)super.getLastCustomNonConfigurationInstance();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessRegulars;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
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
      r().f();
      r().setAdapter(b);
      setTitle(2131165620);
      return;
    }
    a = new ArrayList();
    c = b();
    if ((c != null) && (c.u())) {
      c.a(this);
    }
    for (;;)
    {
      enableLoading(c);
      break;
      c = new ae(d, s(), s_(), this);
      c.f(new Void[0]);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    if ((isFinishing()) && (c != null) && (!c.v())) {
      c.a(true);
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
  
  public int s_()
  {
    return 40;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRegularUsers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */