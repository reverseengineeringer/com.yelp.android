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
import com.yelp.android.appdata.webrequests.av;
import com.yelp.android.appdata.webrequests.az;
import com.yelp.android.appdata.webrequests.bb;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentState;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.User;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.photoviewer.UserMediaViewer;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bf;
import java.util.ArrayList;
import java.util.Collections;

public class ViewCompliments
  extends YelpListActivity
{
  private az a;
  private a b;
  private ArrayList<Compliment> c;
  private Mode d;
  private String e;
  private String f;
  private final com.yelp.android.appdata.webrequests.m<Compliment> g = new j(this);
  private final com.yelp.android.appdata.webrequests.m<Compliment> h = new l(this);
  private final com.yelp.android.appdata.webrequests.m<bb> i = new m(this);
  
  public static Intent a(Context paramContext, Mode paramMode, User paramUser)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, ViewCompliments.class);
    localIntent.putExtra("extra.mode", paramMode);
    localIntent.putExtra("extra.user", paramUser);
    return localIntent;
  }
  
  private void a(Mode paramMode, Compliment paramCompliment)
  {
    paramMode.makeActionRequest(g, paramCompliment).execute(new Void[0]);
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof Compliment))
    {
      paramListView = (Compliment)paramListView;
      paramView = Collections.singletonList(paramListView.getPhoto());
      switch (n.a[paramListView.getItem().ordinal()])
      {
      default: 
        paramListView = ActivityUserProfile.a(this, paramListView.getSender().getId());
      }
    }
    for (;;)
    {
      startActivity(paramListView);
      return;
      paramListView = TipComplimentsLikes.a(this, paramListView.getComplimentableId(), paramListView.getBusinessName());
      continue;
      paramListView = UserMediaViewer.b(this, paramView, 0);
      continue;
      paramListView = ActivityMediaViewer.b(this, paramListView.getBusinessId(), paramView, 0);
      continue;
      paramListView = ActivityMediaViewer.b(this, paramListView.getComplimentableId(), paramView, 0);
      continue;
      paramListView = ActivityReviewPager.a(this, paramListView.getComplimentableId(), paramListView.getBusinessId(), paramListView.getBusinessName());
    }
  }
  
  protected void d()
  {
    if ((!b.isEmpty()) && (d == Mode.APPROVE)) {
      q().f();
    }
    do
    {
      do
      {
        return;
      } while ((a != null) && (!a.isCompleted()));
      a = d.makeLookupRequest(i, e, r(), e_());
      a.execute(new Void[0]);
    } while (!q().getAdapter().isEmpty());
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
    }
    paramMenuItem = paramMenuItem.getIntent();
    runOnUiThread(new k(this, (Mode)paramMenuItem.getSerializableExtra("extra.exec_mode"), (Compliment)paramMenuItem.getParcelableExtra("extra.exec_compliment")));
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Notifier.a(this, Notifier.NotificationType.Compliments);
    setTitle(2131165634);
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
        localObject = getAppData().m().s();
      }
      e = ((User)localObject).getId();
      f = ((User)localObject).getName();
      b = new a((User)localObject, d, h, true);
      q().setDividerHeight(1);
      q().setAdapter(b);
      c = localIntent.getParcelableArrayListExtra("extra.compliments");
      if ((c != null) && (!c.isEmpty())) {
        q().f();
      }
      if (paramBundle != null) {
        c = paramBundle.getParcelableArrayList("extra.compliments");
      }
      if (c == null) {
        c = new ArrayList();
      }
      b.a(c);
      registerForContextMenu(q());
      return;
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramView = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    paramView = (Compliment)q().getItemAtPosition(position);
    paramContextMenu.setHeaderTitle(getTypemText);
    paramContextMenu.setHeaderIcon(getTypemIcon);
    boolean bool = getAppData().m().a(e);
    if (bool)
    {
      paramContextMenu.add(0, 0, 0, 2131166544).setIntent(SendCompliment.a(this, paramView.getSender()));
      int k = 128;
      int j = k;
      if (paramView.getState() == Compliment.ComplimentState.ELIGIBLE)
      {
        j = k;
        if (d == Mode.APPROVE)
        {
          paramContextMenuInfo = paramContextMenu.add(0, 2131165370, 1, 2131165370);
          localIntent = new Intent(this, ViewCompliments.class);
          localIntent.putExtra("extra.exec_mode", Mode.APPROVE);
          localIntent.putExtra("extra.exec_compliment", paramView);
          localIntent.addFlags(536870912);
          paramContextMenuInfo.setIntent(localIntent);
          j = 2;
        }
      }
      paramContextMenuInfo = paramContextMenu.add(0, 2131165686, j, 2131165686);
      Intent localIntent = new Intent(this, ViewCompliments.class);
      localIntent.putExtra("extra.exec_mode", Mode.DELETE);
      localIntent.putExtra("extra.exec_compliment", paramView);
      localIntent.addFlags(536870912);
      paramContextMenuInfo.setIntent(localIntent);
    }
    bf.a(this, paramContextMenu, paramView.getSender());
    bf.a(this, paramContextMenu, paramView, f, bool);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("extra.compliments", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.ViewCompliments
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */