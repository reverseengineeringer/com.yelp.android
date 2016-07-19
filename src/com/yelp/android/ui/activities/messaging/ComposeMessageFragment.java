package com.yelp.android.ui.activities.messaging;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.o;
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
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.fh;
import com.yelp.android.appdata.webrequests.messaging.e;
import com.yelp.android.cc.d;
import com.yelp.android.database.g;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.RecipientBoxView;
import com.yelp.android.ui.widgets.RecipientBoxView.a;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

public class ComposeMessageFragment
  extends YelpFragment
  implements RecipientBoxView.a
{
  private final ArrayList<User> a = new ArrayList();
  private RecipientBoxView b;
  private Bundle c;
  private fh d;
  private a e;
  private e f;
  private FriendsFragment g;
  private User i;
  private TextView j;
  private EditText k;
  private boolean l = false;
  private boolean m = false;
  private boolean n = true;
  private boolean o = false;
  
  public static ComposeMessageFragment a(User paramUser, String paramString)
  {
    ComposeMessageFragment localComposeMessageFragment = new ComposeMessageFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("args_recipient", paramUser);
    localBundle.putString("args_message", paramString);
    localComposeMessageFragment.setArguments(localBundle);
    return localComposeMessageFragment;
  }
  
  private void a(ComposeMessageFragment.ConversationRequiredField paramConversationRequiredField)
  {
    AlertDialogFragment.a(null, ComposeMessageFragment.ConversationRequiredField.access$900(paramConversationRequiredField, getActivity())).show(getFragmentManager(), null);
  }
  
  private void c(User paramUser)
  {
    AppData.b().i().f().a(paramUser, new ComposeMessageFragment.3(this));
  }
  
  private void i()
  {
    Object localObject = (User)getArguments().getParcelable("args_recipient");
    if (getArguments().getString("args_message") != null) {
      localObject = IriSource.Share;
    }
    for (;;)
    {
      AppData.a(EventIri.MessagingNewConversationSend, ((IriSource)localObject).getMapWithParameter());
      return;
      if (localObject != null) {
        localObject = IriSource.UserProfile;
      } else {
        localObject = IriSource.Inbox;
      }
    }
  }
  
  private void j()
  {
    o = false;
    l();
    y();
    if (a.isEmpty())
    {
      f();
      as.b(b.getRecipientView());
      return;
    }
    b.a(a);
    as.a(b.getRecipientView());
  }
  
  private boolean k()
  {
    return ((f != null) && (f.u())) || ((d != null) && (d.u()));
  }
  
  private void m()
  {
    ComposeMessageFragment.ConversationRequiredField localConversationRequiredField = n();
    if (localConversationRequiredField != null)
    {
      a(localConversationRequiredField);
      return;
    }
    o();
  }
  
  private ComposeMessageFragment.ConversationRequiredField n()
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
  
  private void o()
  {
    if ((f != null) && (f.u())) {
      return;
    }
    ComposeMessageFragment.2 local2 = new ComposeMessageFragment.2(this);
    f = new e(b.getRecipient().ae(), j.getText().toString(), k.getText().toString(), local2);
    f.f(new Void[0]);
    a(f, 0);
    as.b(k);
  }
  
  private void p()
  {
    if (q())
    {
      r();
      return;
    }
    s();
  }
  
  private boolean q()
  {
    return (!TextUtils.isEmpty(j.getText())) || (!TextUtils.isEmpty(k.getText()));
  }
  
  private void r()
  {
    d locald = new d(b.getRecipient().i(), j.getText().toString(), k.getText().toString());
    AppData.b().i().f().a(locald, new ComposeMessageFragment.4(this));
  }
  
  private void s()
  {
    AppData.b().i().f().a(b.getRecipient());
  }
  
  public void E_()
  {
    getActivity().startActivity(ActivityFindFriends.a(getActivity(), false));
    AppData.a(EventIri.MessagingNewConversationFindFriends);
  }
  
  public void a()
  {
    AppData.b().k().a(EventIri.MessagingNewConversationCanceled, null);
  }
  
  public void a(User paramUser)
  {
    if ((n) && (!q()))
    {
      c(paramUser);
      n = false;
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if ((g != null) && (g.b() != null)) {
      ((com.yelp.android.cl.a)g.b()).getFilter().filter(paramCharSequence);
    }
  }
  
  public void b()
  {
    l locall = getFragmentManager();
    g = ((FriendsFragment)locall.a(2131690135));
    if (g != null) {
      return;
    }
    if (l)
    {
      g = FriendsFragment.a(a);
      o localo = locall.a();
      localo.b(2131690135, g);
      localo.a(null);
      localo.a();
      locall.b();
      return;
    }
    h();
  }
  
  public void b(User paramUser)
  {
    b.a(paramUser);
  }
  
  public void c()
  {
    g = null;
    y();
  }
  
  public void f()
  {
    ActivityComposeMessage localActivityComposeMessage = (ActivityComposeMessage)getActivity();
    localActivityComposeMessage.populateError(ErrorType.NEED_FRIENDS_COMPOSE_MESSAGE);
    localActivityComposeMessage.getErrorPanel().setBackgroundResource(17170443);
    b.c();
    j.setVisibility(8);
    k.setVisibility(8);
  }
  
  public void g()
  {
    as.b(b.getRecipientView());
  }
  
  public void h()
  {
    if ((d != null) && (!d.v())) {
      return;
    }
    ComposeMessageFragment.1 local1 = new ComposeMessageFragment.1(this);
    d = new fh(AppData.b().q().p(), local1);
    d.f(new Void[0]);
    a(d, 0);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (c.isEmpty())
    {
      k.setText(getArguments().getString("args_message"));
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
      h();
      return;
      b.b(c);
      if (k())
      {
        a(null, 0);
        return;
      }
    } while (!c.getBoolean("saved_empty_view_visible"));
    f();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      e = ((a)paramActivity);
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
      paramMenuInflater.inflate(2131755015, paramMenu);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903189, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    j = ((TextView)paramLayoutInflater.findViewById(2131690132));
    k = ((EditText)paramLayoutInflater.findViewById(2131690134));
    b = ((RecipientBoxView)paramLayoutInflater.findViewById(2131690130));
    b.setOnRecipientBoxListener(this);
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    c(d);
    c(f);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    m();
    i();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    if (((g == null) || (!g.isVisible())) && (b.a()) && (!m)) {
      p();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (o) {
      j();
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
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ComposeMessageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */