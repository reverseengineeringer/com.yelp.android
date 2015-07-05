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
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.bb.h;
import com.yelp.android.serializable.BusinessUser;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.bg;
import com.yelp.android.services.push.i;
import com.yelp.android.services.push.j;
import com.yelp.android.ui.activities.messaging.apimanagers.d;
import com.yelp.android.ui.activities.messaging.apimanagers.g;
import com.yelp.android.ui.activities.messaging.apimanagers.p;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ConversationsInboxFragment
  extends YelpListFragment
{
  private h a;
  private d b;
  private List<Conversation> c;
  private a d;
  private ScrollToLoadListView e;
  private String g;
  private Conversation h;
  private MessagingActionsHelper i;
  private boolean j = true;
  private boolean k;
  private boolean l;
  private final j m = new q(this);
  private final p n = new s(this);
  private final g o = new t(this);
  
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
    boolean bool2 = paramConversation.getOtherUser().isBlocked();
    BusinessUser localBusinessUser = paramConversation.getBizUser();
    MenuItem localMenuItem = paramContextMenu.findItem(2131494133);
    boolean bool1;
    Object localObject;
    if (!bool2)
    {
      bool1 = true;
      localMenuItem.setVisible(bool1);
      if (localBusinessUser == null) {
        break label113;
      }
      localObject = getString(2131165407);
      label56:
      localMenuItem.setTitle((CharSequence)localObject);
      localObject = paramContextMenu.findItem(2131494134);
      ((MenuItem)localObject).setVisible(bool2);
      if (localBusinessUser == null) {
        break label140;
      }
    }
    label113:
    label140:
    for (paramContextMenu = getString(2131166765);; paramContextMenu = getString(2131166766, new Object[] { paramConversation.getOtherUser().getName() }))
    {
      ((MenuItem)localObject).setTitle(paramContextMenu);
      return;
      bool1 = false;
      break;
      localObject = getString(2131165408, new Object[] { paramConversation.getOtherUser().getName() });
      break label56;
    }
  }
  
  private void b(String paramString)
  {
    int i1 = a.b(paramString);
    if (i1 != -1) {
      e.post(new v(this, i1));
    }
  }
  
  private void h()
  {
    AppData.a(EventIri.MessagingNewConversationFromInbox);
  }
  
  private String i()
  {
    if (a.isEmpty()) {
      return null;
    }
    if (h != null) {
      return h.getId();
    }
    if (a.a(g) == null) {
      return ((Conversation)a.getItem(0)).getId();
    }
    return g;
  }
  
  private void k()
  {
    ((YelpActivity)getActivity()).enableLoading();
  }
  
  private void l()
  {
    ((YelpActivity)getActivity()).disableLoading();
  }
  
  private void u()
  {
    b.e();
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (Conversation)a.getItem(paramInt);
    a(paramListView.getId());
    d.a(paramListView);
  }
  
  public void a(Conversation paramConversation)
  {
    if (getActivitygetResourcesgetConfigurationorientation == 2)
    {
      int i2 = a.b(paramConversation.getId());
      a.b(paramConversation);
      int i1 = i2;
      if (i2 == a.getCount()) {
        i1 = i2 - 1;
      }
      if (!a.isEmpty()) {
        e.performItemClick(null, i1, r().getItemId(i1));
      }
    }
    for (;;)
    {
      if (a.isEmpty()) {
        a_();
      }
      return;
      a.b(paramConversation);
    }
  }
  
  public void a(bg parambg)
  {
    Iterator localIterator = a.b().iterator();
    while (localIterator.hasNext())
    {
      Conversation localConversation = (Conversation)localIterator.next();
      if (localConversation.getOtherUser().equals(parambg)) {
        localConversation.getOtherUser().setBlocked(parambg.isBlocked());
      }
    }
  }
  
  public void a(String paramString)
  {
    g = paramString;
    a.c(paramString);
    a.notifyDataSetChanged();
  }
  
  public void a_()
  {
    ((YelpActivity)getActivity()).clearError();
    b.c();
    if (j) {
      k();
    }
  }
  
  public void b(Conversation paramConversation)
  {
    a.a(paramConversation);
  }
  
  public Conversation d()
  {
    if (g != null) {
      return a.a(g);
    }
    if (h != null) {
      return h;
    }
    return null;
  }
  
  public List<Conversation> e()
  {
    return a.b();
  }
  
  public void f()
  {
    a_();
  }
  
  public void g()
  {
    b.d();
  }
  
  public b getIri()
  {
    return ViewIri.MessagingInbox;
  }
  
  protected void j_()
  {
    if (!b.a())
    {
      e.setOnLoadNeeded(new u(this));
      a(a);
    }
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
        b = new d(getActivity(), c, o);
        a = b.b();
        a(a);
      }
      if (a.isEmpty()) {
        a_();
      }
      j_();
      setHasOptionsMenu(true);
      return;
      e.setVerticalScrollBarEnabled(false);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1030) && (paramInt2 == -1)) {
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
      if ((i.a(getActivity().getSupportFragmentManager(), i1, h)) || (super.onContextItemSelected(paramMenuItem))) {
        return true;
      }
      break;
    case 2131494138: 
      d.a(h);
      return true;
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getArguments();
    h = ((Conversation)localBundle.getParcelable("current_conversation"));
    g = localBundle.getString("conversation_id");
    c = localBundle.getParcelableArrayList("conversations");
    i = new MessagingActionsHelper(n, d.d());
    i.a(getActivity());
    i.a(h);
    if (paramBundle == null)
    {
      l = false;
      return;
    }
    l = paramBundle.getBoolean("have_received_count", false);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    getActivity().getMenuInflater().inflate(2131755017, paramContextMenu);
    int i1 = position;
    h = ((Conversation)((ListView)paramView).getItemAtPosition(i1));
    i.a(h);
    a(h.getId());
    a(paramContextMenu, h);
    paramContextMenu.setHeaderTitle(h.getSubject());
    paramContextMenu.setHeaderIcon(2130837624);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755016, paramMenu);
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
    h();
    startActivityForResult(ActivityComposeMessage.a(getActivity()), 1030);
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    d.d().a(null, null);
    AppData.b().c().b(m);
    if (b.g()) {
      b.h();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    d.d().a(n, null);
    AppData.b().c().a(m);
    getActivity().setTitle(2131166088);
    if (!a.isEmpty()) {
      g();
    }
    for (;;)
    {
      if (getActivitygetResourcesgetConfigurationorientation == 1)
      {
        g = null;
        ((YelpActivity)getActivity()).showHotButtons();
      }
      return;
      if (!b.g()) {
        a_();
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("have_received_count", l);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ConversationsInboxFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */