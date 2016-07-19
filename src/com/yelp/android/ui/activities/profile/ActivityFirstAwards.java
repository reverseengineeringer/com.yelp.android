package com.yelp.android.ui.activities.profile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.appdata.webrequests.fo;
import com.yelp.android.appdata.webrequests.fp;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.SingleFeedEntry;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.t;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class ActivityFirstAwards
  extends YelpListActivity
{
  private int a;
  private int b;
  private User c;
  private fo d;
  private fp e;
  private d f;
  private em g;
  private final ApiRequest.b<List<Tip>> h = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<Tip> paramAnonymousList)
    {
      ActivityFirstAwards.a(ActivityFirstAwards.this, paramAnonymousList.size());
      ActivityFirstAwards.a(ActivityFirstAwards.this, paramAnonymousList);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      populateError(paramAnonymousYelpException);
    }
  };
  private final ApiRequest.b<List<YelpBusinessReview>> i = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<YelpBusinessReview> paramAnonymousList)
    {
      ActivityFirstAwards.b(ActivityFirstAwards.this, paramAnonymousList.size());
      ActivityFirstAwards.a(ActivityFirstAwards.this, paramAnonymousList);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      populateError(paramAnonymousYelpException);
    }
  };
  private final Comparator<SingleFeedEntry> j = new Comparator()
  {
    public int a(SingleFeedEntry paramAnonymousSingleFeedEntry1, SingleFeedEntry paramAnonymousSingleFeedEntry2)
    {
      return paramAnonymousSingleFeedEntry2.d().compareTo(paramAnonymousSingleFeedEntry1.d());
    }
  };
  private final c.a k = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      if (ActivityFirstAwards.a(ActivityFirstAwards.this) == null) {
        return;
      }
      paramAnonymousApiRequest = (em)paramAnonymousApiRequest;
      paramAnonymousVoid = (Tip)ActivityFirstAwards.a(ActivityFirstAwards.this).a(paramAnonymousApiRequest.b());
      if (paramAnonymousApiRequest.d()) {
        paramAnonymousVoid.g().a();
      }
      for (;;)
      {
        new ObjectDirtyEvent(paramAnonymousVoid, "com.yelp.android.tips.update").a(ActivityFirstAwards.this);
        return;
        paramAnonymousVoid.g().b();
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      YelpLog.remoteError(paramAnonymousYelpException);
    }
  };
  private final d.c l = new d.c()
  {
    public void a(Tip paramAnonymousTip)
    {
      ActivityFirstAwards localActivityFirstAwards = ActivityFirstAwards.this;
      String str = paramAnonymousTip.a();
      if (!paramAnonymousTip.g().c()) {}
      for (boolean bool = true;; bool = false)
      {
        ActivityFirstAwards.a(localActivityFirstAwards, new em(str, bool, ActivityFirstAwards.c(ActivityFirstAwards.this)));
        ActivityFirstAwards.d(ActivityFirstAwards.this).f(new Void[0]);
        return;
      }
    }
  };
  
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, ActivityFirstAwards.class);
    paramContext.putExtra("extra.user", paramUser);
    return paramContext;
  }
  
  private boolean a(ApiRequest paramApiRequest)
  {
    return (paramApiRequest == null) || (paramApiRequest.v());
  }
  
  private void c(List<? extends SingleFeedEntry> paramList)
  {
    a(paramList);
    paramList = f.b();
    Collections.sort(paramList, j);
    b(paramList);
    f.notifyDataSetChanged();
    if ((b >= c.H()) && (a >= c.G())) {
      r().f();
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof YelpBusinessReview))
    {
      paramListView = (YelpBusinessReview)paramListView;
      if (paramListView.t()) {
        startActivity(ActivityReviewPager.a(this, paramListView, paramListView.M(), paramListView.Q(), null));
      }
    }
    while (!(paramListView instanceof Tip))
    {
      return;
      startActivity(ActivityReviewPager.a(this, paramListView.a(), paramListView.Q(), paramListView.M()));
      return;
    }
    paramListView = (Tip)paramListView;
    startActivity(TipComplimentsLikes.a(this, paramListView, paramListView.o()));
  }
  
  public void a(List<? extends SingleFeedEntry> paramList)
  {
    f.a(paramList);
    c(f.getCount());
  }
  
  public void b(List<? extends SingleFeedEntry> paramList)
  {
    f.clear();
    a(paramList);
  }
  
  protected void c()
  {
    if ((b < c.H()) && (a(d)))
    {
      d = new fo(i, c, b, s_(), true);
      d.f(new Void[0]);
    }
    if ((a < c.G()) && (a(e)))
    {
      e = new fp(h, c, a, s_(), true, false);
      e.f(new Void[0]);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserProfileFirsts;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return Collections.singletonMap("user_id", c.i());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(getString(2131165922));
    c = ((User)getIntent().getParcelableExtra("extra.user"));
    f = new d(t.a(this), c, l);
    if (paramBundle != null)
    {
      a(paramBundle.getParcelableArrayList("tip_and_review_list"));
      b = paramBundle.getInt("review_count");
      a = paramBundle.getInt("tip_count");
    }
    r().setAdapter(f);
    registerDirtyEventReceiver("com.yelp.android.tips.update", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = (Tip)ObjectDirtyEvent.a(paramAnonymousIntent);
        ActivityFirstAwards.a(ActivityFirstAwards.this).a(paramAnonymousContext);
      }
    });
    registerDirtyEventReceiver("com.yelp.android.tips.delete", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = (Tip)ObjectDirtyEvent.a(paramAnonymousIntent);
        ActivityFirstAwards.a(ActivityFirstAwards.this).b(paramAnonymousContext.a());
        ActivityFirstAwards.b(ActivityFirstAwards.this).y();
      }
    });
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("first_to_review", d);
    freezeRequest("first_to_tip", e);
    freezeRequest("tip_feedback", g);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((b >= c.H()) && (a >= c.G())) {
      r().f();
    }
    for (;;)
    {
      thawRequest("tip_feedback", g, k);
      return;
      d = ((fo)thawRequest("first_to_review", d, i));
      e = ((fp)thawRequest("first_to_tip", e, h));
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("review_count", b);
    paramBundle.putInt("tip_count", a);
    paramBundle.putParcelableArrayList("tip_and_review_list", f.b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityFirstAwards
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */