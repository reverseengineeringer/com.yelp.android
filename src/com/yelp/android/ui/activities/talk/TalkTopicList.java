package com.yelp.android.ui.activities.talk;

import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.k;
import java.util.ArrayList;
import java.util.List;

public abstract class TalkTopicList<ResponseType>
  extends YelpListFragment
  implements k
{
  private ArrayList<TalkTopic> a = new ArrayList();
  protected ApiRequest<Void, Void, ResponseType> b;
  protected d c;
  protected AlertDialogFragment d;
  private boolean e;
  
  private void h()
  {
    String[] arrayOfString = getResources().getStringArray(2131558419);
    startActivityForResult(ActivityTalkPost.a(getActivity(), arrayOfString), 1060);
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if (!(paramListView instanceof TalkTopic)) {
      return;
    }
    startActivity(TalkViewPost.a(getActivity(), (TalkTopic)paramListView));
  }
  
  public void a(TalkTopic paramTalkTopic)
  {
    a.add(0, paramTalkTopic);
    c.notifyDataSetChanged();
  }
  
  protected void a(List<TalkTopic> paramList)
  {
    l();
    if ((c.getCount() == 0) && (paramList.size() == 0)) {
      b(true);
    }
    for (;;)
    {
      a.addAll(paramList);
      c.a(paramList);
      b(c.getCount());
      c.notifyDataSetChanged();
      return;
      if (q() == null) {
        a(c);
      }
    }
  }
  
  protected void b()
  {
    if ((b == null) || (b.a(AsyncTask.Status.FINISHED)))
    {
      boolean bool = f();
      if ((c != null) && (c.getCount() == 0) && (bool)) {
        a(b);
      }
    }
  }
  
  protected abstract boolean f();
  
  protected abstract ApiRequest.b<ResponseType> g();
  
  public ViewIri i()
  {
    return ViewIri.TalkListTopics;
  }
  
  protected void j()
  {
    if (d == null) {
      d = AlertDialogFragment.a(null, getString(2131166883));
    }
    d.show(getChildFragmentManager(), null);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != -1) {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      return;
      if (paramInt1 == 1060)
      {
        a((TalkTopic)paramIntent.getParcelableExtra("talk_topic"));
        if (isResumed())
        {
          j();
          return;
        }
        e = true;
        return;
      }
    } while ((paramInt1 != 1048) || (!AppData.b().q().b()) || (!AppData.b().q().d()));
    h();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      a = paramBundle.getParcelableArrayList("talk_topics");
    }
    c = new d();
    c.a(a);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755046, paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131691040: 
      startActivityForResult(ChangeSettings.a(getActivity(), 2130903509, getString(2131166551)), 1061);
      return true;
    case 2131691023: 
      p_();
      return true;
    }
    if (!AppData.b().q().d())
    {
      startActivityForResult(ActivityLogin.a(getActivity(), 2131165704, 2131166649), 1048);
      return true;
    }
    h();
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    if (e) {
      j();
    }
    e = false;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("talk_topics", a);
  }
  
  public void p_()
  {
    c.clear();
    a(null);
    super.p_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.TalkTopicList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */