package com.yelp.android.ui.activities.badges;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.m;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Badge;
import com.yelp.android.serializable.BadgesViewModel;
import com.yelp.android.ui.activities.ActivityBadge;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.k;
import com.yelp.android.ui.panels.PanelError.a;
import java.util.List;

public class ActivityBadges
  extends YelpActivity
  implements b.c, k, PanelError.a
{
  private GridView a;
  private a b;
  private b.a c;
  private AdapterView.OnItemClickListener d = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      if (ActivityBadges.a(ActivityBadges.this).getAdapter().isEnabled(paramAnonymousInt)) {
        ActivityBadges.c(ActivityBadges.this).a(ActivityBadges.b(ActivityBadges.this).a(paramAnonymousInt));
      }
    }
  };
  
  public void a(YelpException paramYelpException)
  {
    populateError(paramYelpException);
  }
  
  public void a(Badge paramBadge)
  {
    startActivity(ActivityBadge.a(this, paramBadge));
    overridePendingTransition(2130968607, 2130968587);
  }
  
  public void a(List<Badge> paramList)
  {
    b.a(paramList);
  }
  
  public void b()
  {
    enableLoading();
  }
  
  public void c()
  {
    disableLoading();
  }
  
  public ViewIri getIri()
  {
    if (c.e()) {
      return ViewIri.ProfileBadges;
    }
    return ViewIri.UserBadges;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903072);
    if (paramBundle == null) {}
    for (paramBundle = b.b.a(getIntent());; paramBundle = BadgesViewModel.b(paramBundle))
    {
      c = AppData.b().B().a(this, paramBundle);
      setPresenter(c);
      b = new a(this, c);
      a = ((GridView)findViewById(2131689721));
      a.setAdapter(b);
      a.setOnItemClickListener(d);
      c.a();
      return;
    }
  }
  
  public void p_()
  {
    c.d();
  }
  
  public void q_()
  {
    c.d();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.badges.ActivityBadges
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */