package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.bg;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.p;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

public class ActivityMessaging
  extends YelpActivity
  implements a, p, aa
{
  private Conversation a;
  private ArrayList<Conversation> b;
  private String c;
  private ConversationsInboxFragment d;
  private ConversationThreadFragment e;
  private ActivityMessaging.MessagingActionsFragment f;
  private boolean g;
  private boolean h;
  
  public static Intent a(Context paramContext)
  {
    return ActivityLogin.a(paramContext, 2131166785, 2131166042, new Intent(paramContext, ActivityMessaging.class));
  }
  
  private void a(boolean paramBoolean)
  {
    if (g) {
      getSupportFragmentManager().popBackStackImmediate();
    }
    if (a != null)
    {
      e = ConversationThreadFragment.a(a);
      if (getResourcesgetConfigurationorientation != 1) {
        break label111;
      }
    }
    label111:
    for (int i = 2131493332;; i = 2131493228)
    {
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
      localFragmentTransaction.replace(i, e, "conversation_thread_tag");
      if (paramBoolean) {
        localFragmentTransaction.addToBackStack(null);
      }
      localFragmentTransaction.commit();
      do
      {
        return;
      } while (c == null);
      e = ConversationThreadFragment.a(c, h);
      break;
    }
  }
  
  private void e()
  {
    int j = 0;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "conversations_inbox_tag";
    arrayOfString[1] = "conversation_thread_tag";
    FragmentManager localFragmentManager = getSupportFragmentManager();
    int i = 0;
    while (i < localFragmentManager.getBackStackEntryCount())
    {
      localFragmentManager.popBackStack();
      i += 1;
    }
    int k = arrayOfString.length;
    i = j;
    while (i < k)
    {
      Fragment localFragment = localFragmentManager.findFragmentByTag(arrayOfString[i]);
      if (localFragment != null) {
        localFragmentManager.beginTransaction().remove(localFragment).commit();
      }
      i += 1;
    }
    localFragmentManager.executePendingTransactions();
  }
  
  private void f()
  {
    int i;
    if (getResourcesgetConfigurationorientation == 1)
    {
      i = 2131493332;
      if (a == null) {
        break label67;
      }
    }
    label67:
    for (d = ConversationsInboxFragment.a(b, a);; d = ConversationsInboxFragment.a(b, c))
    {
      getSupportFragmentManager().beginTransaction().replace(i, d, "conversations_inbox_tag").commit();
      return;
      i = 2131493227;
      break;
    }
  }
  
  private boolean g()
  {
    return (d != null) && (d.isVisible());
  }
  
  private boolean h()
  {
    return (e != null) && (e.isVisible());
  }
  
  public void a(Conversation paramConversation)
  {
    boolean bool = true;
    g = false;
    a = paramConversation;
    if (getResourcesgetConfigurationorientation == 1) {}
    for (;;)
    {
      a(bool);
      return;
      bool = false;
    }
  }
  
  public void a(bg parambg)
  {
    if (d != null) {
      d.a(parambg);
    }
  }
  
  public void a_()
  {
    if (g()) {
      d.a_();
    }
    if (h()) {
      e.b();
    }
  }
  
  public void b(Conversation paramConversation)
  {
    if (d != null) {
      d.b(paramConversation);
    }
  }
  
  public void c()
  {
    if (g()) {
      d.g();
    }
  }
  
  public void c(Conversation paramConversation)
  {
    if (d != null) {
      d.a(paramConversation);
    }
    getSupportFragmentManager().popBackStack();
  }
  
  public ActivityMessaging.MessagingActionsFragment d()
  {
    return f;
  }
  
  public PanelError getErrorPanel()
  {
    return super.getErrorPanel();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void m_()
  {
    if (g()) {
      d.f();
    }
    while (!h()) {
      return;
    }
    e.c();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = ((ActivityMessaging.MessagingActionsFragment)getSupportFragmentManager().findFragmentByTag("user_actions_tag"));
    if (f == null)
    {
      f = new ActivityMessaging.MessagingActionsFragment();
      getSupportFragmentManager().beginTransaction().add(f, "user_actions_tag").commit();
    }
    if (getResourcesgetConfigurationorientation == 2) {
      setContentView(2130903097);
    }
    h = getIntent().getBooleanExtra("show_keyboard", false);
    g = wasLaunchedFromPushNotification();
    Uri localUri = getIntent().getData();
    if (g) {
      AppData.b().k().a(new o(localUri));
    }
    if (paramBundle != null)
    {
      a = ((Conversation)paramBundle.getParcelable("conversation"));
      b = paramBundle.getParcelableArrayList("conversations");
      if (a != null) {
        c = a.getId();
      }
      e();
      if (AppData.b().m().e()) {
        break label226;
      }
      startActivity(ActivityNearby.a(AppData.b()));
      finish();
    }
    label226:
    do
    {
      return;
      c = getIntent().getStringExtra("conversation_id");
      break;
      if ((getResourcesgetConfigurationorientation != 1) || (!g)) {
        f();
      }
    } while ((getResourcesgetConfigurationorientation != 1) || ((paramBundle == null) && (!g)));
    if (!g) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    boolean bool2 = false;
    super.onNewIntent(paramIntent);
    g = true;
    h = paramIntent.getBooleanExtra("show_keyboard", false);
    a = null;
    c = paramIntent.getStringExtra("conversation_id");
    int i = getResourcesgetConfigurationorientation;
    boolean bool1;
    if (h())
    {
      bool1 = bool2;
      if (d != null)
      {
        bool1 = bool2;
        if (i != 1) {}
      }
    }
    else
    {
      bool1 = true;
    }
    a(bool1);
    if (i == 2) {
      d.a(c);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Conversation localConversation = null;
    if ((g()) && (h()))
    {
      localConversation = e.d();
      paramBundle.putParcelableArrayList("conversations", new ArrayList(d.e()));
    }
    for (;;)
    {
      paramBundle.putParcelable("conversation", localConversation);
      return;
      if (g()) {
        localConversation = d.d();
      } else if (h()) {
        localConversation = e.d();
      }
    }
  }
  
  public void populateError(ErrorType paramErrorType)
  {
    super.populateError(paramErrorType);
    if (paramErrorType == ErrorType.NO_CONVERSATIONS) {
      getErrorPanel().b();
    }
    getErrorPanel().setBackgroundResource(17170443);
  }
  
  protected void updateHotButtonVisibility()
  {
    super.updateHotButtonVisibility();
    setHotButtonKeyboardListener(null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessaging
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */