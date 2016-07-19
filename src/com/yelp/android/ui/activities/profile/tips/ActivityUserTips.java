package com.yelp.android.ui.activities.profile.tips;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.m;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.UserTipsViewModel;
import com.yelp.android.serializable.UserTipsViewModel.ViewType;
import com.yelp.android.ui.activities.profile.d;
import com.yelp.android.ui.activities.profile.d.c;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.t;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.List;

public class ActivityUserTips
  extends YelpListActivity
  implements a.c
{
  private d a;
  private a.a b;
  private final d.c c = new d.c()
  {
    public void a(Tip paramAnonymousTip)
    {
      a.a locala = ActivityUserTips.a(ActivityUserTips.this);
      if (!paramAnonymousTip.g().c()) {}
      for (boolean bool = true;; bool = false)
      {
        locala.a(paramAnonymousTip, bool);
        return;
      }
    }
  };
  
  private void a(int paramInt, User paramUser)
  {
    a = new d(t.a(this), paramUser, c);
    r().setAdapter(a);
    setTitle(paramInt);
  }
  
  private void f()
  {
    registerDirtyEventReceiver("com.yelp.android.tips.update", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        ActivityUserTips.a(ActivityUserTips.this).b((Tip)ObjectDirtyEvent.a(paramAnonymousIntent));
      }
    });
    registerDirtyEventReceiver("com.yelp.android.tips.delete", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        ActivityUserTips.a(ActivityUserTips.this).c((Tip)ObjectDirtyEvent.a(paramAnonymousIntent));
      }
    });
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    b.a((Tip)paramListView.getItemAtPosition(paramInt));
  }
  
  public void a(YelpException paramYelpException)
  {
    populateError(paramYelpException);
  }
  
  public void a(Tip paramTip)
  {
    a.a(paramTip);
  }
  
  public void a(List<Tip> paramList)
  {
    a.a(paramList);
    a.notifyDataSetChanged();
  }
  
  public void b()
  {
    r().f();
  }
  
  public void b(Tip paramTip)
  {
    a.b(paramTip.a());
  }
  
  protected void c()
  {
    b.d();
  }
  
  public void c(Tip paramTip)
  {
    new ObjectDirtyEvent(paramTip, "com.yelp.android.tips.update").a(this);
  }
  
  public void d(Tip paramTip)
  {
    startActivity(TipComplimentsLikes.a(this, paramTip, paramTip.o()));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileTips;
  }
  
  public int h()
  {
    return 2131166203;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null) {}
    for (paramBundle = a.b.a(getIntent());; paramBundle = UserTipsViewModel.b(paramBundle))
    {
      b = getAppData().B().a(AppData.b().C(), this, paramBundle, 20);
      setPresenter(b);
      a(ctitle, paramBundle.d());
      f();
      b.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.tips.ActivityUserTips
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */