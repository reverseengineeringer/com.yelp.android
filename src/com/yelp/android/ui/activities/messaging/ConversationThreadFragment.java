package com.yelp.android.ui.activities.messaging;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.ay.e;
import com.yelp.android.ay.r;
import com.yelp.android.bb.d;
import com.yelp.android.database.q;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.bg;
import com.yelp.android.ui.activities.messaging.apimanagers.ApiListManager.RequestResult;
import com.yelp.android.ui.activities.messaging.apimanagers.MessagingAction;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.HashMap;
import java.util.Map;

public class ConversationThreadFragment
  extends YelpFragment
{
  private e a;
  private d b;
  private com.yelp.android.ui.activities.messaging.apimanagers.i c;
  private ScrollToLoadListView d;
  private Button e;
  private EditText g;
  private Conversation h;
  private String i;
  private bg j;
  private boolean k = false;
  private boolean l;
  private a m;
  private MessagingActionsHelper n;
  private final com.yelp.android.services.push.j o = new j(this);
  private final com.yelp.android.ui.activities.messaging.apimanagers.p p = new k(this);
  private final com.yelp.android.ui.activities.messaging.apimanagers.p q = new l(this);
  private final com.yelp.android.ui.activities.messaging.apimanagers.g r = new m(this);
  
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
    n();
    n.a(paramMessagingAction, paramYelpException, h);
  }
  
  private void f()
  {
    l = true;
    w();
  }
  
  private void g()
  {
    d.setPanelLoadingBackground(17170443);
    if (!c.b())
    {
      d.setAdapter(null);
      d.setOnLoadNeeded(new n(this));
      d.setAdapter(c.a());
    }
  }
  
  private void h()
  {
    a.a(h, new o(this));
  }
  
  private void i()
  {
    if (g.getText().length() > 0)
    {
      r localr = new r(o(), g.getText().toString());
      a.a(localr, new p(this));
    }
  }
  
  private void k()
  {
    a.a(h);
  }
  
  private void l()
  {
    g.clearFocus();
    g.setText("");
  }
  
  private void m()
  {
    a();
    a(null, 0);
  }
  
  private void n()
  {
    f();
    j();
  }
  
  private String o()
  {
    if (h != null) {
      return h.getId();
    }
    return i;
  }
  
  public void a()
  {
    l = false;
    w();
  }
  
  public void b()
  {
    if (c.b()) {
      g();
    }
    d.setBottomReached(false);
    c.a(o());
    m();
  }
  
  public void b(Conversation paramConversation)
  {
    h = paramConversation;
    n.a(h);
    j = h.getOtherUser();
    if ((getResourcesgetConfigurationorientation == 1) && (!TextUtils.isEmpty(h.getSubject()))) {
      getActivity().setTitle(h.getSubject());
    }
    h();
    r.a(ApiListManager.RequestResult.CONTENT_TRASHED, paramConversation.getLatestMessages());
    m.d().a(q, p);
    if (!k) {
      e();
    }
  }
  
  public void c()
  {
    b();
  }
  
  Conversation d()
  {
    return h;
  }
  
  public void e()
  {
    a();
    m.d().b(h, p);
    m.b(h);
  }
  
  public b getIri()
  {
    return ViewIri.MessagingConversation;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    HashMap localHashMap = new HashMap();
    if ((Conversation)getArguments().getParcelable("conversation") != null) {}
    for (paramb = IriSource.Inbox;; paramb = IriSource.PushNotification)
    {
      paramb.addParameter(localHashMap);
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
      g.requestFocus();
      ((InputMethodManager)getActivity().getSystemService("input_method")).showSoftInput(g, 2);
    }
    g();
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
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = AppData.b().i().i();
    c = new com.yelp.android.ui.activities.messaging.apimanagers.i(getActivity(), r);
    b = c.a();
    n = new MessagingActionsHelper(q, m.d());
    n.a(getActivity());
    h = ((Conversation)getArguments().getParcelable("conversation"));
    if (h != null)
    {
      i = h.getId();
      n.a(h);
    }
    for (;;)
    {
      setHasOptionsMenu(true);
      a();
      return;
      i = getArguments().getString("conversation_id");
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755015, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903215, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    d = ((ScrollToLoadListView)paramLayoutInflater.findViewById(2131493550));
    e = ((Button)paramLayoutInflater.findViewById(2131493867));
    g = ((EditText)paramLayoutInflater.findViewById(2131493866));
    e.setOnClickListener(new g(this, EventIri.MessagingConversationSend));
    g.addTextChangedListener(new i(this));
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    n.a();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return n.a(getActivity().getSupportFragmentManager(), paramMenuItem.getItemId(), h);
  }
  
  public void onPause()
  {
    super.onPause();
    AppData.b().c().b(o);
    m.d().a(null, null);
    if (!m.d().a()) {
      i();
    }
    for (;;)
    {
      if (c.g()) {
        c.h();
      }
      return;
      if (h != null) {
        k();
      }
    }
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    if ((c.c()) && (l))
    {
      paramMenu.setGroupVisible(2131494132, true);
      MenuItem localMenuItem = paramMenu.findItem(2131494133);
      Object localObject;
      boolean bool;
      if (h.getBizUser() != null)
      {
        localObject = getString(2131165407);
        localMenuItem.setTitle((CharSequence)localObject);
        if (j.isBlocked()) {
          break label168;
        }
        bool = true;
        label79:
        localMenuItem.setVisible(bool);
        localObject = paramMenu.findItem(2131494134);
        if (h.getBizUser() == null) {
          break label173;
        }
      }
      label168:
      label173:
      for (paramMenu = getString(2131166765);; paramMenu = getString(2131166766, new Object[] { j.getName() }))
      {
        ((MenuItem)localObject).setTitle(paramMenu);
        ((MenuItem)localObject).setVisible(j.isBlocked());
        return;
        localObject = getString(2131165408, new Object[] { j.getName() });
        break;
        bool = false;
        break label79;
      }
    }
    paramMenu.setGroupVisible(2131494132, false);
  }
  
  public void onResume()
  {
    super.onResume();
    if (c.c())
    {
      m.d().a(q, p);
      c.b(h);
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