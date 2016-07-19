package com.yelp.android.ui.activities.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.e;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.messaging.apimanagers.g.a;
import com.yelp.android.ui.activities.messaging.apimanagers.h;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.k;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

public class ActivityMessaging
  extends YelpActivity
  implements a, k, PanelError.a
{
  private Conversation a;
  private ArrayList<Conversation> b;
  private String c;
  private ConversationsInboxFragment d;
  private ConversationThreadFragment e;
  private MessagingActionsFragment f;
  private boolean g;
  private boolean h;
  
  public static Intent a(Context paramContext)
  {
    return ActivityLogin.a(paramContext, 2131165701, 2131166101, new Intent(paramContext, ActivityMessaging.class));
  }
  
  private void a(boolean paramBoolean)
  {
    if (g) {
      getSupportFragmentManager().d();
    }
    if (a != null)
    {
      e = ConversationThreadFragment.a(a);
      if (getResourcesgetConfigurationorientation != 1) {
        break label111;
      }
    }
    label111:
    for (int i = 2131689997;; i = 2131689895)
    {
      o localo = getSupportFragmentManager().a();
      localo.b(i, e, "conversation_thread_tag");
      if (paramBoolean) {
        localo.a(null);
      }
      localo.a();
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
    l locall = getSupportFragmentManager();
    int i = 0;
    while (i < locall.e())
    {
      locall.c();
      i += 1;
    }
    int k = arrayOfString.length;
    i = j;
    while (i < k)
    {
      Fragment localFragment = locall.a(arrayOfString[i]);
      if (localFragment != null) {
        locall.a().a(localFragment).a();
      }
      i += 1;
    }
    locall.b();
  }
  
  @SuppressLint({"CommitTransaction"})
  private void f()
  {
    int i;
    if (getResourcesgetConfigurationorientation == 1)
    {
      i = 2131689997;
      if (a == null) {
        break label67;
      }
    }
    label67:
    for (d = ConversationsInboxFragment.a(b, a);; d = ConversationsInboxFragment.a(b, c))
    {
      getSupportFragmentManager().a().b(i, d, "conversations_inbox_tag").a();
      return;
      i = 2131689894;
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
  
  public void a(e parame)
  {
    if (d != null) {
      d.a(parame);
    }
  }
  
  public void b()
  {
    if (g()) {
      d.h();
    }
  }
  
  public void b(Conversation paramConversation)
  {
    if (d != null) {
      d.b(paramConversation);
    }
  }
  
  public MessagingActionsFragment c()
  {
    return f;
  }
  
  public void c(Conversation paramConversation)
  {
    if (d != null) {
      d.a(paramConversation);
    }
    getSupportFragmentManager().c();
  }
  
  public PanelError getErrorPanel()
  {
    return super.getErrorPanel();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  @SuppressLint({"CommitTransaction"})
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = ((MessagingActionsFragment)getSupportFragmentManager().a("user_actions_tag"));
    if (f == null)
    {
      f = new MessagingActionsFragment();
      getSupportFragmentManager().a().a(f, "user_actions_tag").a();
    }
    if (getResourcesgetConfigurationorientation == 2) {
      setContentView(2130903110);
    }
    h = getIntent().getBooleanExtra("show_keyboard", false);
    g = wasLaunchedFromPushNotification();
    Uri localUri = getIntent().getData();
    if (g) {
      AppData.b().k().a(new n(localUri));
    }
    if (paramBundle != null)
    {
      a = ((Conversation)paramBundle.getParcelable("conversation"));
      b = paramBundle.getParcelableArrayList("conversations");
      if (a != null) {
        c = a.h();
      }
      e();
      if (AppData.b().q().d()) {
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
      localConversation = e.F_();
      paramBundle.putParcelableArrayList("conversations", new ArrayList(d.f()));
    }
    for (;;)
    {
      paramBundle.putParcelable("conversation", localConversation);
      return;
      if (g()) {
        localConversation = d.G_();
      } else if (h()) {
        localConversation = e.F_();
      }
    }
  }
  
  public void p_()
  {
    if (g()) {
      d.p_();
    }
    if (h()) {
      e.b();
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
  
  public void q_()
  {
    if (g()) {
      d.g();
    }
    while (!h()) {
      return;
    }
    e.c();
  }
  
  protected void updateHotButtonVisibility()
  {
    super.updateHotButtonVisibility();
    setHotButtonKeyboardListener(null);
  }
  
  public static class MessagingActionsFragment
    extends Fragment
  {
    private h a;
    private com.yelp.android.ui.activities.messaging.apimanagers.a b;
    
    public void a(Conversation paramConversation, g.a parama)
    {
      a.a(paramConversation, parama);
    }
    
    public void a(Conversation paramConversation, String paramString, g.a parama)
    {
      a.a(paramConversation, paramString, parama);
    }
    
    public void a(e parame, boolean paramBoolean, g.a parama)
    {
      a.a(parame, paramBoolean, parama);
    }
    
    public void a(g.a parama1, g.a parama2)
    {
      a.a(parama1);
      b.a(parama2);
    }
    
    public boolean a()
    {
      return (a.g()) || (b.g());
    }
    
    public void b(Conversation paramConversation, g.a parama)
    {
      b.a(parama, paramConversation);
    }
    
    public void b(Conversation paramConversation, String paramString, g.a parama)
    {
      b.a(parama, paramConversation, paramString);
    }
    
    public void b(e parame, boolean paramBoolean, g.a parama)
    {
      a.b(parame, paramBoolean, parama);
    }
    
    public void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      setRetainInstance(true);
      a = new h();
      b = new com.yelp.android.ui.activities.messaging.apimanagers.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessaging
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */