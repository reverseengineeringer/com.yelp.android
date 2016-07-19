package com.yelp.android.ui.activities.messaging;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.BusinessUser;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.services.push.e.a;
import com.yelp.android.ui.activities.messaging.apimanagers.b;
import com.yelp.android.ui.activities.messaging.apimanagers.g.a;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ConversationsInboxFragment
  extends YelpListFragment
{
  private com.yelp.android.cl.c a;
  private b b;
  private List<Conversation> c;
  private a d;
  private ScrollToLoadListView e;
  private String f;
  private Conversation g;
  private MessagingActionsHelper i;
  private boolean j = true;
  private boolean k;
  private boolean l;
  private final e.a m = new ConversationsInboxFragment.1(this);
  private final g.a n = new ConversationsInboxFragment.2(this);
  private final com.yelp.android.ui.activities.messaging.apimanagers.c o = new ConversationsInboxFragment.3(this);
  
  public static ConversationsInboxFragment a(ArrayList<Conversation> paramArrayList, Conversation paramConversation)
  {
    ConversationsInboxFragment localConversationsInboxFragment = new ConversationsInboxFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("conversations", paramArrayList);
    localBundle.putParcelable("current_conversation", paramConversation);
    localConversationsInboxFragment.setArguments(localBundle);
    return localConversationsInboxFragment;
  }
  
  public static ConversationsInboxFragment a(ArrayList<Conversation> paramArrayList, String paramString)
  {
    ConversationsInboxFragment localConversationsInboxFragment = new ConversationsInboxFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("conversations", paramArrayList);
    localBundle.putString("conversation_id", paramString);
    localConversationsInboxFragment.setArguments(localBundle);
    return localConversationsInboxFragment;
  }
  
  private void a(ContextMenu paramContextMenu, Conversation paramConversation)
  {
    boolean bool2 = paramConversation.a().b();
    BusinessUser localBusinessUser = paramConversation.k();
    MenuItem localMenuItem = paramContextMenu.findItem(2131691007);
    boolean bool1;
    Object localObject;
    if (!bool2)
    {
      bool1 = true;
      localMenuItem.setVisible(bool1);
      if (localBusinessUser == null) {
        break label113;
      }
      localObject = getString(2131165546);
      label56:
      localMenuItem.setTitle((CharSequence)localObject);
      localObject = paramContextMenu.findItem(2131691008);
      ((MenuItem)localObject).setVisible(bool2);
      if (localBusinessUser == null) {
        break label140;
      }
    }
    label113:
    label140:
    for (paramContextMenu = getString(2131166745);; paramContextMenu = getString(2131166746, new Object[] { paramConversation.a().c() }))
    {
      ((MenuItem)localObject).setTitle(paramContextMenu);
      return;
      bool1 = false;
      break;
      localObject = getString(2131165547, new Object[] { paramConversation.a().c() });
      break label56;
    }
  }
  
  private void b(String paramString)
  {
    int i1 = a.b(paramString);
    if (i1 != -1) {
      e.post(new ConversationsInboxFragment.5(this, i1));
    }
  }
  
  private void i()
  {
    AppData.a(EventIri.MessagingNewConversationFromInbox);
  }
  
  private String j()
  {
    if (a.isEmpty()) {
      return null;
    }
    if (g != null) {
      return g.h();
    }
    if (a.a(f) == null) {
      return ((Conversation)a.getItem(0)).h();
    }
    return f;
  }
  
  private void k()
  {
    ((YelpActivity)getActivity()).enableLoading();
  }
  
  private void t()
  {
    ((YelpActivity)getActivity()).disableLoading();
  }
  
  private void u()
  {
    b.e();
  }
  
  public Conversation G_()
  {
    if (f != null) {
      return a.a(f);
    }
    if (g != null) {
      return g;
    }
    return null;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (Conversation)a.getItem(paramInt);
    a(paramListView.h());
    d.a(paramListView);
  }
  
  public void a(Conversation paramConversation)
  {
    if (getActivitygetResourcesgetConfigurationorientation == 2)
    {
      int i2 = a.b(paramConversation.h());
      a.c(paramConversation);
      int i1 = i2;
      if (i2 == a.getCount()) {
        i1 = i2 - 1;
      }
      if (!a.isEmpty()) {
        e.performItemClick(null, i1, q().getItemId(i1));
      }
    }
    for (;;)
    {
      if (a.isEmpty()) {
        p_();
      }
      return;
      a.c(paramConversation);
    }
  }
  
  public void a(com.yelp.android.serializable.e parame)
  {
    Iterator localIterator = a.b().iterator();
    while (localIterator.hasNext())
    {
      Conversation localConversation = (Conversation)localIterator.next();
      if (localConversation.a().equals(parame)) {
        localConversation.a().a(parame.b());
      }
    }
  }
  
  public void a(String paramString)
  {
    f = paramString;
    a.c(paramString);
    a.notifyDataSetChanged();
  }
  
  public void b(Conversation paramConversation)
  {
    a.a(paramConversation);
  }
  
  public List<Conversation> f()
  {
    return a.b();
  }
  
  public void g()
  {
    p_();
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return ViewIri.MessagingInbox;
  }
  
  public void h()
  {
    b.d();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (getResourcesgetConfigurationorientation == 1) {
      registerForContextMenu(m());
    }
    for (;;)
    {
      k = false;
      if (b == null)
      {
        b = new b(getActivity(), c, o);
        a = b.b();
        a(a);
      }
      if (a.isEmpty()) {
        p_();
      }
      u_();
      setHasOptionsMenu(true);
      return;
      e.setVerticalScrollBarEnabled(false);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1033) && (paramInt2 == -1)) {
      j = false;
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      d = ((a)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("The corresponding activity must implement the ActivityMessagingListener interface");
    }
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    int i1 = paramMenuItem.getItemId();
    switch (i1)
    {
    default: 
      if ((i.a(getActivity().getSupportFragmentManager(), i1, g)) || (super.onContextItemSelected(paramMenuItem))) {
        return true;
      }
      break;
    case 2131691012: 
      d.a(g);
      return true;
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getArguments();
    g = ((Conversation)localBundle.getParcelable("current_conversation"));
    f = localBundle.getString("conversation_id");
    c = localBundle.getParcelableArrayList("conversations");
    i = new MessagingActionsHelper(n, d.c());
    i.a(getActivity());
    i.a(g);
    if (paramBundle == null)
    {
      l = false;
      return;
    }
    l = paramBundle.getBoolean("have_received_count", false);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    getActivity().getMenuInflater().inflate(2131755019, paramContextMenu);
    int i1 = position;
    g = ((Conversation)((ListView)paramView).getItemAtPosition(i1));
    i.a(g);
    a(g.h());
    a(paramContextMenu, g);
    paramContextMenu.setHeaderTitle(g.g());
    paramContextMenu.setHeaderIcon(2130837646);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755018, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    e = ((ScrollToLoadListView)paramLayoutInflater.findViewById(16908298));
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    i.a();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    i();
    startActivityForResult(ActivityComposeMessage.a(getActivity()), 1033);
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    d.c().a(null, null);
    AppData.b().c().b(m);
    if (b.g()) {
      b.h();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    d.c().a(n, null);
    AppData.b().c().a(m);
    getActivity().setTitle(2131166150);
    if (!a.isEmpty()) {
      h();
    }
    for (;;)
    {
      if (getActivitygetResourcesgetConfigurationorientation == 1)
      {
        f = null;
        ((YelpActivity)getActivity()).showHotButtons();
      }
      return;
      if (!b.g()) {
        p_();
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("have_received_count", l);
  }
  
  public void p_()
  {
    ((YelpActivity)getActivity()).clearError();
    b.c();
    if (j) {
      k();
    }
  }
  
  protected void u_()
  {
    if (!b.a())
    {
      e.setOnLoadNeeded(new ConversationsInboxFragment.4(this));
      a(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ConversationsInboxFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */