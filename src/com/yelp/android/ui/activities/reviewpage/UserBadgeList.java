package com.yelp.android.ui.activities.reviewpage;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.as;
import java.util.ArrayList;
import java.util.List;

public abstract class UserBadgeList
  extends YelpListActivity
{
  private f a;
  private ApiRequest<Void, ?, ?> b;
  
  public static Intent a(Intent paramIntent, ArrayList<? extends DisplayableAsUserBadge> paramArrayList)
  {
    paramIntent.putExtra("pre_populated", paramArrayList);
    return paramIntent;
  }
  
  public abstract ApiRequest<Void, ?, ?> a(ApiRequest<Void, ?, ?> paramApiRequest);
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof DisplayableAsUserBadge)) {
      startActivity(ActivityUserProfile.a(this, ((DisplayableAsUserBadge)paramListView).i()));
    }
  }
  
  protected void a(List<? extends DisplayableAsUserBadge> paramList)
  {
    a.a(paramList);
    a.notifyDataSetChanged();
    if (a.isEmpty())
    {
      as.a(2131165375, 0);
      finish();
    }
  }
  
  public ApiRequest<?, ?, ?> b()
  {
    return b;
  }
  
  public ApiRequest<?, ?, ?> f()
  {
    return (ApiRequest)super.getLastCustomNonConfigurationInstance();
  }
  
  public void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    a = f.b(paramBundle);
    paramBundle = localIntent.getParcelableArrayListExtra("pre_populated");
    if (a == null)
    {
      a = new f();
      if (paramBundle != null) {
        a.a(paramBundle);
      }
    }
    setTitle(localIntent.getIntExtra("title_res", 2131166374));
    r().setAdapter(a);
    r().setOnLoadNeeded(new Runnable()
    {
      public void run()
      {
        UserBadgeList.a(UserBadgeList.this, a(UserBadgeList.a(UserBadgeList.this)));
        if ((paramBundle == null) && (!UserBadgeList.a(UserBadgeList.this).u()))
        {
          UserBadgeList.a(UserBadgeList.this).f(new Void[0]);
          enableLoading(UserBadgeList.a(UserBadgeList.this));
        }
      }
    });
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.UserBadgeList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */