package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gh;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Badge;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.p;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;

public class ActivityBadges
  extends YelpActivity
  implements AdapterView.OnItemClickListener, p, aa
{
  private GridView a;
  private f b;
  private ArrayList<Badge> c;
  private String d;
  private gh e;
  private final m<ArrayList<Badge>> f = new e(this);
  
  public static Intent a(Context paramContext, User paramUser)
  {
    return a(paramContext, paramUser.getId());
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityBadges.class);
    paramContext.putExtra("user_id", paramString);
    return paramContext;
  }
  
  public void a_()
  {
    if ((e != null) && (!e.isCompleted()))
    {
      e.setCallback(null);
      e.cancel(true);
    }
    b.clear();
    e = new gh(d, 0, 50, f);
    e.execute(new Void[0]);
    enableLoading(e);
  }
  
  public ViewIri getIri()
  {
    if (getAppData().m().a(d)) {
      return ViewIri.ProfileBadges;
    }
    return ViewIri.UserBadges;
  }
  
  public void m_()
  {
    a_();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903066);
    d = getIntent().getStringExtra("user_id");
    if (d == null)
    {
      YelpLog.e(this, "User id required for this activity");
      finish();
    }
    if (paramBundle != null)
    {
      c = paramBundle.getParcelableArrayList("badges");
      a = ((GridView)findViewById(2131493039));
      paramBundle = c;
      if (getAppData().m().a(d)) {
        break label144;
      }
    }
    label144:
    for (boolean bool = true;; bool = false)
    {
      b = new f(this, paramBundle, bool, null);
      a.setAdapter(b);
      a.setOnItemClickListener(this);
      return;
      c = new ArrayList(20);
      break;
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if (!a.getAdapter().isEnabled(paramInt)) {}
    while ((!(paramAdapterView instanceof Badge)) || (!((Badge)paramAdapterView).isAssigned())) {
      return;
    }
    startActivity(ActivityBadge.a(this, (Badge)paramAdapterView, false));
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((c.isEmpty()) && (e == null)) {
      a_();
    }
    while ((e == null) || (!e.isFetching())) {
      return;
    }
    enableLoading(e);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("badges", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityBadges
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */