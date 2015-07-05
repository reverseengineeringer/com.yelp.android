package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.bg;
import com.yelp.android.ui.activities.messaging.apimanagers.MessagingAction;
import com.yelp.android.ui.activities.messaging.apimanagers.p;
import com.yelp.android.ui.dialogs.FlagContentDialog;
import com.yelp.android.ui.dialogs.UserFeedbackDialog;
import com.yelp.android.ui.dialogs.r;
import com.yelp.android.ui.util.cr;

public class MessagingActionsHelper
{
  private ActivityMessaging.MessagingActionsFragment a;
  private p b;
  private Conversation c;
  private final r d = new ac(this);
  private final r e = new ad(this);
  
  public MessagingActionsHelper(p paramp, ActivityMessaging.MessagingActionsFragment paramMessagingActionsFragment)
  {
    b = paramp;
    a = paramMessagingActionsFragment;
  }
  
  private void a(a parama, bg parambg, boolean paramBoolean)
  {
    parambg.setBlocked(paramBoolean);
    parama.a(parambg);
  }
  
  public void a()
  {
    a = null;
    b = null;
  }
  
  public void a(FragmentActivity paramFragmentActivity)
  {
    FlagContentDialog localFlagContentDialog = (FlagContentDialog)paramFragmentActivity.getSupportFragmentManager().findFragmentByTag("flag_dialog");
    if (localFlagContentDialog != null) {
      localFlagContentDialog.a(d);
    }
    paramFragmentActivity = (MessagingActionsHelper.DeleteConversationDialog)paramFragmentActivity.getSupportFragmentManager().findFragmentByTag("delete_dialog");
    if (paramFragmentActivity != null) {
      paramFragmentActivity.a(e);
    }
  }
  
  public void a(Conversation paramConversation)
  {
    c = paramConversation;
  }
  
  public void a(a parama, MessagingAction paramMessagingAction, Conversation paramConversation)
  {
    Object localObject = AppData.b();
    bg localbg = paramConversation.getOtherUser();
    boolean bool;
    if (paramConversation.getBizUser() != null)
    {
      bool = true;
      label21:
      localObject = paramMessagingAction.getSuccessMessage((Context)localObject, localbg, bool);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        if (paramMessagingAction != MessagingAction.FLAG_CONVERSATION) {
          break label99;
        }
      }
    }
    label99:
    for (int i = 1;; i = 0)
    {
      cr.a((CharSequence)localObject, i);
      switch (ae.a[paramMessagingAction.ordinal()])
      {
      default: 
        return;
        bool = false;
        break label21;
      }
    }
    parama.c(paramConversation);
    return;
    a(parama, paramConversation.getOtherUser(), true);
    return;
    a(parama, paramConversation.getOtherUser(), false);
  }
  
  public void a(MessagingAction paramMessagingAction, YelpException paramYelpException, Conversation paramConversation)
  {
    AppData localAppData = AppData.b();
    bg localbg = paramConversation.getOtherUser();
    if (paramConversation.getBizUser() != null) {}
    for (boolean bool = true;; bool = false)
    {
      cr.a(paramMessagingAction.getErrorMessage(localAppData, localbg, paramYelpException, bool), 0);
      return;
    }
  }
  
  public boolean a(FragmentManager paramFragmentManager, int paramInt, Conversation paramConversation)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    bg localbg;
    switch (paramInt)
    {
    default: 
      return false;
    case 2131494133: 
      paramFragmentManager = a;
      localbg = paramConversation.getOtherUser();
      if (paramConversation.getBizUser() != null) {
        bool1 = true;
      }
      paramFragmentManager.a(localbg, bool1, b);
      AppData.a(EventIri.MessagingConversationBlockUser);
      return true;
    case 2131494134: 
      paramFragmentManager = a;
      localbg = paramConversation.getOtherUser();
      bool1 = bool2;
      if (paramConversation.getBizUser() != null) {
        bool1 = true;
      }
      paramFragmentManager.b(localbg, bool1, b);
      AppData.a(EventIri.MessagingConversationUnblockUser);
      return true;
    case 2131494136: 
      paramConversation = new MessagingActionsHelper.DeleteConversationDialog();
      paramConversation.a(e);
      paramConversation.show(paramFragmentManager, "delete_dialog");
      return true;
    }
    paramConversation = AppData.b().getResources();
    paramConversation = FlagContentDialog.a(paramConversation.getString(2131166842), paramConversation.getString(2131166450));
    paramConversation.a(d);
    paramConversation.show(paramFragmentManager, "flag_dialog");
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.MessagingActionsHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */