package com.yelp.android.ui.activities.feed.viewbinder;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.c;
import com.yelp.android.util.c.a;
import java.util.ArrayList;

public class ActivityRecentBookmarks
  extends YelpListActivity
{
  private s a;
  private c b;
  private YelpBusiness c;
  private final c.a d = new c.a()
  {
    public void a(boolean paramAnonymousBoolean)
    {
      ActivityRecentBookmarks.a(ActivityRecentBookmarks.this).a(paramAnonymousBoolean);
      new ObjectDirtyEvent(ActivityRecentBookmarks.a(ActivityRecentBookmarks.this), "com.yelp.android.business.update").a(ActivityRecentBookmarks.this);
      ActivityRecentBookmarks.a(ActivityRecentBookmarks.this, null);
      ActivityRecentBookmarks.b(ActivityRecentBookmarks.this).notifyDataSetChanged();
    }
  };
  private final s.a e = new s.a()
  {
    public void a(YelpBusiness paramAnonymousYelpBusiness)
    {
      ActivityRecentBookmarks.a(ActivityRecentBookmarks.this, paramAnonymousYelpBusiness);
      ActivityRecentBookmarks.c(ActivityRecentBookmarks.this).a(paramAnonymousYelpBusiness);
    }
  };
  
  public static Intent a(Context paramContext, ArrayList<YelpBusiness> paramArrayList, User paramUser)
  {
    paramContext = new Intent(paramContext, ActivityRecentBookmarks.class);
    paramContext.putParcelableArrayListExtra("businesses", paramArrayList);
    paramContext.putExtra("user", paramUser);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    c = b.a(paramInt1, paramInt2, c);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      c = ((YelpBusiness)paramBundle.getParcelable("business_to_bookmark"));
    }
    setTitle(getString(2131166769, new Object[] { ((User)getIntent().getParcelableExtra("user")).Z() }));
    paramBundle = getIntent().getParcelableArrayListExtra("businesses");
    b = new c(this, d, c);
    a = new s(e);
    a.a(paramBundle);
    r().setAdapter(a);
    r().f();
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("add_bookmark", b.a());
    freezeRequest("remove_bookmark", b.b());
  }
  
  public void onResume()
  {
    super.onResume();
    thawRequest("remove_bookmark", null, b.d());
    thawRequest("add_bookmark", null, b.c());
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("business_to_bookmark", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.viewbinder.ActivityRecentBookmarks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */