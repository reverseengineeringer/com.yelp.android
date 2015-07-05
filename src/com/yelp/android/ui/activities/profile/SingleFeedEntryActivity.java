package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.activities.feed.CurrentUserFeedFragment;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.activities.feed.aq;
import com.yelp.android.ui.activities.feed.u;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.List;

public abstract class SingleFeedEntryActivity<ObjectType extends FeedEntry>
  extends YelpActivity
  implements m<List<ObjectType>>, u
{
  private int a;
  protected CurrentUserFeedFragment b;
  private DataSetObserver c = new r(this);
  
  public static Intent a(Context paramContext, Class<? extends SingleFeedEntryActivity<?>> paramClass, int paramInt)
  {
    paramContext = new Intent(paramContext, paramClass);
    paramContext.putExtra("extra.total_feed_items", paramInt);
    return paramContext;
  }
  
  public abstract int a();
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<ObjectType> paramList)
  {
    if ((b.e() == 0) && (b.f() == null))
    {
      b.a(FeedType.ME);
      b.a(this);
      b.f().registerDataSetObserver(c);
    }
    a(paramList);
    if ((paramList.isEmpty()) || (b.e() >= a)) {
      b.m().f();
    }
    disableLoading();
  }
  
  protected void a(List<ObjectType> paramList)
  {
    b.a(paramList);
    b.setRetainInstance(true);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903115);
    b = ((CurrentUserFeedFragment)getSupportFragmentManager().findFragmentById(2131493298));
    a = getIntent().getIntExtra("extra.total_feed_items", 0);
    enableLoading(a(0, 20));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.SingleFeedEntryActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */