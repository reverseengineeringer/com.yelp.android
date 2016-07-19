package com.yelp.android.ui.activities.notifications;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.Alert;
import com.yelp.android.serializable.AlertAction;
import com.yelp.android.serializable.AlertsResponse;
import com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NotificationsFragment
  extends YelpSwipeRefreshListFragment
{
  private ArrayList<Alert> a;
  private a b;
  private ez c;
  private String d;
  private List<NotificationsFragment.a> e;
  private k.b<AlertsResponse> f = new NotificationsFragment.1(this);
  private c.a g = new NotificationsFragment.2(this);
  private c.a j = new NotificationsFragment.3(this);
  private a.a k = new NotificationsFragment.4(this);
  private BroadcastReceiver l = new NotificationsFragment.5(this);
  
  private String a(int paramInt)
  {
    return "action_request " + paramInt;
  }
  
  private void a(String paramString)
  {
    Iterator localIterator1 = a.iterator();
    for (;;)
    {
      if (!localIterator1.hasNext()) {
        return;
      }
      Object localObject = (Alert)localIterator1.next();
      Iterator localIterator2 = ((Alert)localObject).i().iterator();
      if (localIterator2.hasNext())
      {
        if (!paramString.equals(((AlertAction)localIterator2.next()).d())) {
          break;
        }
        localObject = ((Alert)localObject).i().iterator();
        while (((Iterator)localObject).hasNext()) {
          ((AlertAction)((Iterator)localObject).next()).a(true);
        }
        b.notifyDataSetChanged();
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    c = new ez(f);
    c.f(new Void[0]);
    if (paramBoolean) {
      H_();
    }
  }
  
  private void b(String paramString)
  {
    int i = 0;
    for (;;)
    {
      if (i < a.size())
      {
        Iterator localIterator = ((Alert)a.get(i)).i().iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
        } while (!paramString.equals(((AlertAction)localIterator.next()).d()));
        a.remove(i);
        b.notifyDataSetChanged();
      }
      return;
      i += 1;
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if (!(paramListView instanceof Alert)) {
      return;
    }
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((Alert)paramListView).e())));
  }
  
  protected void b()
  {
    super.b();
    if ((c == null) && (d == null)) {
      if (j()) {
        a(false);
      }
    }
    while ((d == null) || ((c != null) && (c.u())))
    {
      return;
      a(true);
      return;
    }
    c = ez.a(d, f);
    c.f(new Void[0]);
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return ViewIri.AlertsList;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(b);
    paramBundle = new IntentFilter("android.intent.action.EDIT");
    paramBundle.addCategory("user");
    a(paramBundle, l);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new a(k);
    if (paramBundle == null) {
      a = new ArrayList();
    }
    for (;;)
    {
      b.a(a);
      e = new ArrayList();
      return;
      a = paramBundle.getParcelableArrayList("alerts");
      d = paramBundle.getString("next_page");
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a("alerts_request", c);
    int i = 0;
    while (i < e.size())
    {
      a(a(i), (ApiRequest)e.get(i));
      i += 1;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    c = ((ez)a("alerts_request", c, f));
    e.clear();
    NotificationsFragment.a locala = (NotificationsFragment.a)a(a(0), null, j);
    int i = 1;
    while (locala != null)
    {
      e.add(locala);
      locala = (NotificationsFragment.a)a(a(i), null, j);
      i += 1;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("alerts", a);
    paramBundle.putString("next_page", d);
  }
  
  public void p_()
  {
    c = null;
    d = null;
    super.p_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.NotificationsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */