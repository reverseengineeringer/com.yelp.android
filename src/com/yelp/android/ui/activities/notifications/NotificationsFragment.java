package com.yelp.android.ui.activities.notifications;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.gg;
import com.yelp.android.serializable.Alert;
import com.yelp.android.serializable.AlertAction;
import com.yelp.android.serializable.AlertsResponse;
import com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class NotificationsFragment
  extends YelpSwipeRefreshListFragment
{
  private ArrayList<Alert> a;
  private a b;
  private gg c;
  private String d;
  private List<m> e;
  private com.yelp.android.appdata.webrequests.j<AlertsResponse> g = new g(this);
  private com.yelp.android.av.i h = new i(this);
  private com.yelp.android.av.i i = new j(this);
  private e j = new k(this);
  private BroadcastReceiver k = new l(this);
  
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
      Iterator localIterator2 = ((Alert)localIterator1.next()).getActions().iterator();
      if (localIterator2.hasNext())
      {
        AlertAction localAlertAction = (AlertAction)localIterator2.next();
        if (!paramString.equals(localAlertAction.getPath())) {
          break;
        }
        localAlertAction.setPath(null);
        b.notifyDataSetChanged();
      }
    }
  }
  
  private void b(String paramString)
  {
    int m = 0;
    for (;;)
    {
      if (m < a.size())
      {
        Iterator localIterator = ((Alert)a.get(m)).getActions().iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
        } while (!paramString.equals(((AlertAction)localIterator.next()).getPath()));
        a.remove(m);
        b.notifyDataSetChanged();
      }
      return;
      m += 1;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    c = new gg(g);
    c.executeWithLocation(new Void[0]);
    if (paramBoolean) {
      i_();
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if (!(paramListView instanceof Alert)) {
      return;
    }
    paramListView = Uri.parse(((Alert)paramListView).getOpenUrl());
    paramView = new HashMap(2);
    paramView.put("url", paramListView.toString());
    paramView.put("source", "list");
    startActivity(new Intent("android.intent.action.VIEW", paramListView));
  }
  
  public void a_()
  {
    c = null;
    d = null;
    super.a_();
  }
  
  protected void b()
  {
    super.b();
    if ((c == null) && (d == null)) {
      if (i()) {
        c(false);
      }
    }
    while ((d == null) || ((c != null) && ((c.isFetching()) || (c.isWaitingForLocation()))))
    {
      return;
      c(true);
      return;
    }
    c = gg.a(d, g);
    c.executeWithLocation(new Void[0]);
  }
  
  public b getIri()
  {
    return ViewIri.AlertsList;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(b);
    paramBundle = new IntentFilter("android.intent.action.EDIT");
    paramBundle.addCategory("user");
    a(paramBundle, k);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new a(j);
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
    int m = 0;
    while (m < e.size())
    {
      a(a(m), (ApiRequest)e.get(m));
      m += 1;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    c = ((gg)a("alerts_request", c, g));
    e.clear();
    int m = 0;
    for (;;)
    {
      m localm = (m)a(a(m), null, i);
      if (localm == null) {
        return;
      }
      e.add(localm);
      m += 1;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("alerts", a);
    paramBundle.putString("next_page", d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.NotificationsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */