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
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.p;
import java.util.ArrayList;
import java.util.List;

public abstract class TalkTopicList<ResponseType>
  extends YelpListFragment
  implements p
{
  private ArrayList<TalkTopic> a = new ArrayList();
  protected ApiRequest<Void, Void, ResponseType> b;
  protected w c;
  protected AlertDialogFragment d;
  private boolean e;
  
  private void g()
  {
    String[] arrayOfString = getResources().getStringArray(2131230739);
    startActivityForResult(ActivityTalkPost.a(getActivity(), arrayOfString), 1051);
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
    j();
    if ((c.getCount() == 0) && (paramList.size() == 0)) {
      a(true);
    }
    for (;;)
    {
      a.addAll(paramList);
      c.a(paramList);
      b(c.getCount());
      c.notifyDataSetChanged();
      return;
      if (r() == null) {
        a(c);
      }
    }
  }
  
  public void a_()
  {
    c.clear();
    a(null);
    super.a_();
  }
  
  protected void b()
  {
    if ((b == null) || (b.is(AsyncTask.Status.FINISHED)))
    {
      boolean bool = e();
      if ((c != null) && (c.getCount() == 0) && (bool)) {
        a(b);
      }
    }
  }
  
  protected abstract boolean e();
  
  protected abstract m<ResponseType> f();
  
  public ViewIri h()
  {
    return ViewIri.TalkListTopics;
  }
  
  protected void i()
  {
    if (d == null) {
      d = AlertDialogFragment.a(null, getString(2131166931));
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
      if (paramInt1 == 1051)
      {
        a((TalkTopic)paramIntent.getParcelableExtra("talk_topic"));
        if (isResumed())
        {
          i();
          return;
        }
        e = true;
        return;
      }
    } while ((paramInt1 != 1043) || (!AppData.b().m().c()) || (!AppData.b().m().e()));
    g();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      a = paramBundle.getParcelableArrayList("talk_topics");
    }
    c = new w();
    c.a(a);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755041, paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131494165: 
      startActivityForResult(ChangeSettings.a(getActivity(), 2130903400, getString(2131493990)), 1052);
      return true;
    case 2131494150: 
      a_();
      return true;
    }
    if (!AppData.b().m().e())
    {
      startActivityForResult(ActivityLogin.a(getActivity(), 2131166673), 1043);
      return true;
    }
    g();
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    if (e) {
      i();
    }
    e = false;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("talk_topics", a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.TalkTopicList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */