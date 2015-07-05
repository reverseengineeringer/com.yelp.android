package com.yelp.android.ui.activities.messaging;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gp;
import com.yelp.android.ay.m;
import com.yelp.android.database.q;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.widgets.RecipientBoxView;
import com.yelp.android.ui.widgets.z;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

public class ComposeMessageFragment
  extends YelpFragment
  implements z
{
  private final ArrayList<User> a = new ArrayList();
  private RecipientBoxView b;
  private Bundle c;
  private gp d;
  private f e;
  private com.yelp.android.appdata.webrequests.messaging.e g;
  private FriendsFragment h;
  private User i;
  private TextView j;
  private EditText k;
  private boolean l = false;
  private boolean m = false;
  private boolean n = true;
  private boolean o = false;
  
  public static ComposeMessageFragment a(User paramUser)
  {
    ComposeMessageFragment localComposeMessageFragment = new ComposeMessageFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("args_recipient", paramUser);
    localComposeMessageFragment.setArguments(localBundle);
    return localComposeMessageFragment;
  }
  
  public static void a()
  {
    AppData.b().k().a(EventIri.MessagingNewConversationCanceled, null);
  }
  
  private void a(ComposeMessageFragment.ConversationRequiredField paramConversationRequiredField)
  {
    AlertDialogFragment.a(null, ComposeMessageFragment.ConversationRequiredField.access$900(paramConversationRequiredField, getActivity())).show(getFragmentManager(), null);
  }
  
  private void d(User paramUser)
  {
    AppData.b().i().h().a(paramUser, new d(this));
  }
  
  private void h()
  {
    if ((User)getArguments().getParcelable("args_recipient") == null) {}
    for (IriSource localIriSource = IriSource.Inbox;; localIriSource = IriSource.UserProfile)
    {
      AppData.a(EventIri.MessagingNewConversationSend, localIriSource.getMapWithParameter());
      return;
    }
  }
  
  private void i()
  {
    o = false;
    j();
    w();
    if (a.isEmpty())
    {
      e();
      cr.b(b.getRecipientView());
      return;
    }
    b.a(a);
    cr.a(b.getRecipientView());
  }
  
  private boolean k()
  {
    return ((g != null) && (g.isFetching())) || ((d != null) && (d.isFetching()));
  }
  
  private void l()
  {
    ComposeMessageFragment.ConversationRequiredField localConversationRequiredField = m();
    if (localConversationRequiredField != null)
    {
      a(localConversationRequiredField);
      return;
    }
    n();
  }
  
  private ComposeMessageFragment.ConversationRequiredField m()
  {
    ComposeMessageFragment.ConversationRequiredField[] arrayOfConversationRequiredField = ComposeMessageFragment.ConversationRequiredField.values();
    int i2 = arrayOfConversationRequiredField.length;
    int i1 = 0;
    while (i1 < i2)
    {
      ComposeMessageFragment.ConversationRequiredField localConversationRequiredField = arrayOfConversationRequiredField[i1];
      if (!localConversationRequiredField.isValid(this)) {
        return localConversationRequiredField;
      }
      i1 += 1;
    }
    return null;
  }
  
  private void n()
  {
    if ((g != null) && (g.isFetching())) {
      return;
    }
    c localc = new c(this);
    g = new com.yelp.android.appdata.webrequests.messaging.e(b.getRecipient().getId(), j.getText().toString(), k.getText().toString(), localc);
    g.execute(new Void[0]);
    a(g, 0);
    cr.b(k);
  }
  
  private void o()
  {
    if (p())
    {
      q();
      return;
    }
    r();
  }
  
  private boolean p()
  {
    return (!TextUtils.isEmpty(j.getText())) || (!TextUtils.isEmpty(k.getText()));
  }
  
  private void q()
  {
    m localm = new m(b.getRecipient().getUserId(), j.getText().toString(), k.getText().toString());
    AppData.b().i().h().a(localm, new e(this));
  }
  
  private void r()
  {
    AppData.b().i().h().a(b.getRecipient());
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if ((h != null) && (h.getListAdapter() != null)) {
      ((com.yelp.android.bb.a)h.getListAdapter()).getFilter().filter(paramCharSequence);
    }
  }
  
  public void b()
  {
    FragmentManager localFragmentManager = getFragmentManager();
    h = ((FriendsFragment)localFragmentManager.findFragmentById(2131493457));
    if (h != null) {
      return;
    }
    if (l)
    {
      h = FriendsFragment.a(a);
      FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
      localFragmentTransaction.replace(2131493457, h);
      localFragmentTransaction.addToBackStack(null);
      localFragmentTransaction.commit();
      localFragmentManager.executePendingTransactions();
      return;
    }
    g();
  }
  
  public void b(User paramUser)
  {
    if ((n) && (!p()))
    {
      d(paramUser);
      n = false;
    }
  }
  
  public void c()
  {
    h = null;
    w();
  }
  
  public void c(User paramUser)
  {
    b.a(paramUser);
  }
  
  public void d()
  {
    getActivity().startActivity(ActivityFindFriends.a(getActivity(), false, false));
    AppData.a(EventIri.MessagingNewConversationFindFriends);
  }
  
  public void e()
  {
    ActivityComposeMessage localActivityComposeMessage = (ActivityComposeMessage)getActivity();
    localActivityComposeMessage.populateError(ErrorType.NEED_FRIENDS_COMPOSE_MESSAGE);
    localActivityComposeMessage.getErrorPanel().setBackgroundResource(17170443);
    b.c();
    j.setVisibility(8);
    k.setVisibility(8);
  }
  
  public void f()
  {
    cr.b(b.getRecipientView());
  }
  
  public void g()
  {
    if ((d != null) && (!d.isCompleted())) {
      return;
    }
    b localb = new b(this);
    d = new gp(AppData.b().m().s(), localb);
    d.execute(new Void[0]);
    a(d, 0);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (c.isEmpty())
    {
      i = ((User)getArguments().getParcelable("args_recipient"));
      if (i != null)
      {
        b.setRecipient(i);
        b.b();
        getActivity().getWindow().setSoftInputMode(5);
      }
    }
    do
    {
      return;
      g();
      return;
      b.b(c);
      if (k())
      {
        a(null, 0);
        return;
      }
    } while (!c.getBoolean("saved_empty_view_visible"));
    e();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      e = ((f)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramActivity.toString() + " must implement the ComposeMessageListener interface");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    if (c == null) {
      c = new Bundle();
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if ((b.getRecipient() != null) || (!a.isEmpty())) {
      paramMenuInflater.inflate(2131755013, paramMenu);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903180, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    j = ((TextView)paramLayoutInflater.findViewById(2131493454));
    k = ((EditText)paramLayoutInflater.findViewById(2131493456));
    b = ((RecipientBoxView)paramLayoutInflater.findViewById(2131493452));
    b.setOnRecipientBoxListener(this);
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b(d);
    b(g);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    l();
    h();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    if (((h == null) || (!h.isVisible())) && (b.a()) && (!m)) {
      o();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (o) {
      i();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    b.a(c);
    paramBundle = ((ActivityComposeMessage)getActivity()).getErrorPanel();
    Bundle localBundle;
    if (paramBundle != null)
    {
      localBundle = c;
      if (paramBundle.getVisibility() != 0) {
        break label54;
      }
    }
    label54:
    for (boolean bool = true;; bool = false)
    {
      localBundle.putBoolean("saved_empty_view_visible", bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ComposeMessageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */