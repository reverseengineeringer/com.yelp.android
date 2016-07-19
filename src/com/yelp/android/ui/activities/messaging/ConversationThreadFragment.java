package com.yelp.android.ui.activities.messaging;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.Button;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.cc.i;
import com.yelp.android.database.g;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.ConversationMessage;
import com.yelp.android.services.push.e.a;
import com.yelp.android.ui.activities.messaging.apimanagers.ApiListManager.RequestResult;
import com.yelp.android.ui.activities.messaging.apimanagers.MessagingAction;
import com.yelp.android.ui.activities.messaging.apimanagers.c;
import com.yelp.android.ui.activities.messaging.apimanagers.g.a;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.h;
import java.util.HashMap;
import java.util.Map;

public class ConversationThreadFragment
  extends YelpFragment
{
  private com.yelp.android.cc.b a;
  private com.yelp.android.cl.b b;
  private com.yelp.android.ui.activities.messaging.apimanagers.e c;
  private ScrollToLoadListView d;
  private Button e;
  private EditText f;
  private Conversation g;
  private String i;
  private com.yelp.android.serializable.e j;
  private boolean k = false;
  private boolean l;
  private a m;
  private MessagingActionsHelper n;
  private final e.a o = new ConversationThreadFragment.4(this);
  private final g.a p = new ConversationThreadFragment.5(this);
  private final g.a q = new ConversationThreadFragment.6(this);
  private final c r = new ConversationThreadFragment.7(this);
  
  public static ConversationThreadFragment a(Conversation paramConversation)
  {
    ConversationThreadFragment localConversationThreadFragment = new ConversationThreadFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("conversation", paramConversation);
    localConversationThreadFragment.setArguments(localBundle);
    return localConversationThreadFragment;
  }
  
  public static ConversationThreadFragment a(String paramString, boolean paramBoolean)
  {
    ConversationThreadFragment localConversationThreadFragment = new ConversationThreadFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("conversation_id", paramString);
    localBundle.putBoolean("show_keyboard", paramBoolean);
    localConversationThreadFragment.setArguments(localBundle);
    return localConversationThreadFragment;
  }
  
  private void a(MessagingAction paramMessagingAction, YelpException paramYelpException)
  {
    o();
    n.a(paramMessagingAction, paramYelpException, g);
  }
  
  private void g()
  {
    l = true;
    y();
  }
  
  private void h()
  {
    d.setPanelLoadingBackground(17170443);
    if (!c.b())
    {
      d.setAdapter(null);
      d.setOnLoadNeeded(new ConversationThreadFragment.8(this));
      d.setAdapter(c.a());
    }
  }
  
  private void i()
  {
    a.a(g, new ConversationThreadFragment.9(this));
  }
  
  private void j()
  {
    if (f.getText().length() > 0)
    {
      i locali = new i(p(), f.getText().toString());
      a.a(locali, new ConversationThreadFragment.10(this));
    }
  }
  
  private void k()
  {
    a.a(g);
  }
  
  private void m()
  {
    f.clearFocus();
    f.setText("");
  }
  
  private void n()
  {
    a();
    a(null, 0);
  }
  
  private void o()
  {
    g();
    l();
  }
  
  private String p()
  {
    if (g != null) {
      return g.h();
    }
    return i;
  }
  
  Conversation F_()
  {
    return g;
  }
  
  public void a()
  {
    l = false;
    y();
  }
  
  public void b()
  {
    if (c.b()) {
      h();
    }
    d.setBottomReached(false);
    c.a(p());
    n();
  }
  
  public void b(Conversation paramConversation)
  {
    g = paramConversation;
    n.a(g);
    j = g.a();
    if ((getResourcesgetConfigurationorientation == 1) && (!TextUtils.isEmpty(g.g()))) {
      getActivity().setTitle(g.g());
    }
    i();
    r.a(ApiListManager.RequestResult.CONTENT_TRASHED, paramConversation.j());
    m.c().a(q, p);
    if (!k) {
      f();
    }
  }
  
  public void c()
  {
    b();
  }
  
  public void f()
  {
    a();
    m.c().b(g, p);
    m.b(g);
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return ViewIri.MessagingConversation;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    HashMap localHashMap = new HashMap();
    if ((Conversation)getArguments().getParcelable("conversation") != null) {}
    for (parama = IriSource.Inbox;; parama = IriSource.PushNotification)
    {
      parama.addParameter(localHashMap);
      return localHashMap;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (b.isEmpty()) {
      b();
    }
    if (getArguments().getBoolean("show_keyboard", false))
    {
      f.requestFocus();
      ((InputMethodManager)getActivity().getSystemService("input_method")).showSoftInput(f, 2);
    }
    h();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      m = ((a)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("The corresponding activity must implement the ActivityMessagingListener interface");
    }
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onContextItemSelected(paramMenuItem);
    }
    int i1 = getMenuInfoposition;
    h.a(getString(2131166143), Html.fromHtml(((ConversationMessage)b.getItem(i1)).b()).toString());
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = AppData.b().i().g();
    c = new com.yelp.android.ui.activities.messaging.apimanagers.e(getActivity(), r);
    b = c.a();
    n = new MessagingActionsHelper(q, m.c());
    n.a(getActivity());
    g = ((Conversation)getArguments().getParcelable("conversation"));
    if (g != null)
    {
      i = g.h();
      n.a(g);
    }
    for (;;)
    {
      setHasOptionsMenu(true);
      a();
      return;
      i = getArguments().getString("conversation_id");
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    paramContextMenu.add(0, 2131165735, 0, 2131165735);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755017, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903240, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    d = ((ScrollToLoadListView)paramLayoutInflater.findViewById(2131690253));
    registerForContextMenu(d);
    e = ((Button)paramLayoutInflater.findViewById(2131690702));
    f = ((EditText)paramLayoutInflater.findViewById(2131690701));
    e.setOnClickListener(new ConversationThreadFragment.1(this, EventIri.MessagingConversationSend));
    f.addTextChangedListener(new ConversationThreadFragment.3(this));
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    n.a();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return n.a(getActivity().getSupportFragmentManager(), paramMenuItem.getItemId(), g);
  }
  
  public void onPause()
  {
    super.onPause();
    AppData.b().c().b(o);
    m.c().a(null, null);
    if (!m.c().a()) {
      j();
    }
    for (;;)
    {
      if (c.g()) {
        c.h();
      }
      return;
      if (g != null) {
        k();
      }
    }
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    if ((c.c()) && (l))
    {
      paramMenu.setGroupVisible(2131691006, true);
      MenuItem localMenuItem = paramMenu.findItem(2131691007);
      Object localObject;
      boolean bool;
      if (g.k() != null)
      {
        localObject = getString(2131165546);
        localMenuItem.setTitle((CharSequence)localObject);
        if (j.b()) {
          break label168;
        }
        bool = true;
        label79:
        localMenuItem.setVisible(bool);
        localObject = paramMenu.findItem(2131691008);
        if (g.k() == null) {
          break label173;
        }
      }
      label168:
      label173:
      for (paramMenu = getString(2131166745);; paramMenu = getString(2131166746, new Object[] { j.c() }))
      {
        ((MenuItem)localObject).setTitle(paramMenu);
        ((MenuItem)localObject).setVisible(j.b());
        return;
        localObject = getString(2131165547, new Object[] { j.c() });
        break;
        bool = false;
        break label79;
      }
    }
    paramMenu.setGroupVisible(2131691006, false);
  }
  
  public void onResume()
  {
    super.onResume();
    if (c.c())
    {
      m.c().a(q, p);
      c.b(g);
    }
    for (;;)
    {
      ((YelpActivity)getActivity()).hideHotButtons();
      AppData.b().c().a(o);
      return;
      if (!c.g()) {
        b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ConversationThreadFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */