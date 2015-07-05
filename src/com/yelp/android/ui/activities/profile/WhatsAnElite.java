package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.ao;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;

public class WhatsAnElite
  extends YelpListActivity
{
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, WhatsAnElite.class);
    paramContext.putExtra("extra.user", paramUser);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.WhatsAnElite;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (User)getIntent().getParcelableExtra("extra.user");
    int i = 2131166594;
    if (paramBundle.isEliteUser()) {
      i = 2131166593;
    }
    setTitle(getString(i, new Object[] { paramBundle.getFirstName() }));
    bs localbs = new bs();
    af localaf = new af(paramBundle.getYearsElite());
    localbs.a(2131166595, bw.a(getString(2131166595, new Object[] { paramBundle.getFirstName() }), localaf).a(2130772318).a(2131492893, 0, ao.c * 4).a());
    q().setAdapter(localbs);
    q().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.WhatsAnElite
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */