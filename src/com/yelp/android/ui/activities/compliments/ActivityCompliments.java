package com.yelp.android.ui.activities.compliments;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.as.b;
import com.yelp.android.appdata.webrequests.at;
import com.yelp.android.appdata.webrequests.at.a;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentState;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.User;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.activities.photoviewer.ActivityBusinessMediaViewer;
import com.yelp.android.ui.activities.photoviewer.ActivityEventMediaViewer;
import com.yelp.android.ui.activities.photoviewer.UserMediaViewer;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ActivityCompliments
  extends YelpListActivity
{
  private at a;
  private a b;
  private ArrayList<Compliment> c;
  private Mode d;
  private String e;
  private String f;
  private final ApiRequest.b<Compliment> g = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Compliment paramAnonymousCompliment)
    {
      ActivityCompliments.a(ActivityCompliments.this).c(paramAnonymousCompliment);
      paramAnonymousApiRequest = new ActivityUserProfile.a();
      if (Mode.APPROVE == ActivityCompliments.b(ActivityCompliments.this)) {
        a = paramAnonymousCompliment;
      }
      for (;;)
      {
        paramAnonymousApiRequest.a(ActivityCompliments.this);
        return;
        b = -1;
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      com.yelp.android.ui.util.as.a(paramAnonymousYelpException.getMessage(ActivityCompliments.this), 0);
    }
  };
  private final ApiRequest.b<Compliment> h = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Compliment paramAnonymousCompliment)
    {
      ActivityUserProfile.a locala = new ActivityUserProfile.a();
      a = paramAnonymousCompliment;
      if (ActivityCompliments.b(ActivityCompliments.this) == Mode.APPROVE) {
        b = 1;
      }
      if ((paramAnonymousApiRequest instanceof as.b))
      {
        ActivityCompliments.a(ActivityCompliments.this).c(paramAnonymousCompliment);
        ActivityCompliments.c(ActivityCompliments.this).remove(paramAnonymousCompliment);
        ActivityCompliments.a(ActivityCompliments.this).notifyDataSetChanged();
        b = 0;
      }
      locala.a(ActivityCompliments.this);
      if (ActivityCompliments.a(ActivityCompliments.this).isEmpty()) {
        finish();
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      com.yelp.android.ui.util.as.a(paramAnonymousYelpException.getMessage(ActivityCompliments.this), 0);
    }
  };
  private final ApiRequest.b<at.a> i = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, at.a paramAnonymousa)
    {
      ActivityCompliments.c(ActivityCompliments.this).addAll(paramAnonymousa.a());
      ActivityCompliments.a(ActivityCompliments.this).a(ActivityCompliments.c(ActivityCompliments.this));
      d(paramAnonymousa.a().size());
      if (!paramAnonymousa.b()) {
        r().f();
      }
      disableLoading();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      ActivityCompliments.this.onError(paramAnonymousApiRequest, paramAnonymousYelpException);
    }
  };
  
  public static Intent a(Context paramContext, Mode paramMode, User paramUser)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, ActivityCompliments.class);
    localIntent.putExtra("extra.mode", paramMode);
    localIntent.putExtra("extra.user", paramUser);
    return localIntent;
  }
  
  private void a(Mode paramMode, Compliment paramCompliment)
  {
    paramMode.makeActionRequest(g, paramCompliment).f(new Void[0]);
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof Compliment))
    {
      paramListView = (Compliment)paramListView;
      paramView = Collections.singletonList(paramListView.s());
      switch (5.a[paramListView.j().ordinal()])
      {
      default: 
        paramListView = ActivityUserProfile.a(this, paramListView.m().ae());
      }
    }
    for (;;)
    {
      startActivity(paramListView);
      return;
      paramListView = TipComplimentsLikes.a(this, paramListView.n(), paramListView.p());
      continue;
      paramListView = UserMediaViewer.a(this, paramView, 0);
      continue;
      paramListView = ActivityBusinessMediaViewer.a(this, paramListView.o(), paramView, 0);
      continue;
      paramListView = ActivityEventMediaViewer.a(this, paramView, 0);
      continue;
      paramListView = ActivityReviewPager.a(this, paramListView.n(), paramListView.o(), paramListView.p());
    }
  }
  
  protected void c()
  {
    if ((!b.isEmpty()) && (d == Mode.APPROVE)) {
      r().f();
    }
    do
    {
      do
      {
        return;
      } while ((a != null) && (!a.v()));
      a = d.makeLookupRequest(i, e, s(), s_());
      a.f(new Void[0]);
    } while (!r().getAdapter().isEmpty());
    enableLoading(a);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BrowseCompliments;
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131165495: 
    case 2131165760: 
      paramMenuItem = paramMenuItem.getIntent();
      runOnUiThread(new Runnable()
      {
        public void run()
        {
          ActivityCompliments.a(ActivityCompliments.this, a, b);
        }
      });
      return true;
    }
    int j = getMenuInfoposition;
    h.a(getString(2131165661), ((Compliment)b.getItem(j)).q());
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Notifier.a(this, Notifier.NotificationType.Compliments);
    setTitle(2131165688);
    Intent localIntent = getIntent();
    d = ((Mode)localIntent.getSerializableExtra("extra.mode"));
    Object localObject;
    if (d == null)
    {
      localObject = localIntent.getData();
      if ((localObject == null) || (((Uri)localObject).getPath().contains("requests"))) {
        break label249;
      }
    }
    label249:
    for (d = Mode.LIST;; d = Mode.APPROVE)
    {
      User localUser = (User)localIntent.getParcelableExtra("extra.user");
      localObject = localUser;
      if (localUser == null) {
        localObject = getAppData().q().p();
      }
      e = ((User)localObject).ae();
      f = ((User)localObject).ad();
      b = new a((User)localObject, d, h, true);
      r().setDividerHeight(1);
      r().setAdapter(b);
      c = localIntent.getParcelableArrayListExtra("extra.compliments");
      if ((c != null) && (!c.isEmpty())) {
        r().f();
      }
      if (paramBundle != null) {
        c = paramBundle.getParcelableArrayList("extra.compliments");
      }
      if (c == null) {
        c = new ArrayList();
      }
      b.a(c);
      registerForContextMenu(r());
      return;
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramView = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    paramView = (Compliment)r().getItemAtPosition(position);
    paramContextMenu.setHeaderTitle(kmText);
    paramContextMenu.setHeaderIcon(kmIcon);
    boolean bool = getAppData().q().a(e);
    if (bool)
    {
      paramContextMenu.add(0, 0, 0, 2131166544).setIntent(SendCompliment.a(this, paramView.m()));
      int k = 128;
      int j = k;
      if (paramView.l() == Compliment.ComplimentState.ELIGIBLE)
      {
        j = k;
        if (d == Mode.APPROVE)
        {
          paramContextMenuInfo = paramContextMenu.add(0, 2131165495, 1, 2131165495);
          localIntent = new Intent(this, ActivityCompliments.class);
          localIntent.putExtra("extra.exec_mode", Mode.APPROVE);
          localIntent.putExtra("extra.exec_compliment", paramView);
          localIntent.addFlags(536870912);
          paramContextMenuInfo.setIntent(localIntent);
          j = 2;
        }
      }
      paramContextMenuInfo = paramContextMenu.add(0, 2131165760, j, 2131165760);
      Intent localIntent = new Intent(this, ActivityCompliments.class);
      localIntent.putExtra("extra.exec_mode", Mode.DELETE);
      localIntent.putExtra("extra.exec_compliment", paramView);
      localIntent.addFlags(536870912);
      paramContextMenuInfo.setIntent(localIntent);
    }
    ab.a(this, paramContextMenu, paramView.m());
    ab.a(this, paramContextMenu, paramView, f, bool);
    paramContextMenu.add(0, 2131165735, 0, 2131165735);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("extra.compliments", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.ActivityCompliments
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */