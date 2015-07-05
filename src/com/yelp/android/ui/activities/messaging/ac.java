package com.yelp.android.ui.activities.messaging;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.messaging.apimanagers.p;
import com.yelp.android.ui.dialogs.r;

class ac
  implements r
{
  ac(MessagingActionsHelper paramMessagingActionsHelper) {}
  
  public void a(String paramString)
  {
    MessagingActionsHelper.a(a).a();
    MessagingActionsHelper.c(a).a(MessagingActionsHelper.b(a), paramString, MessagingActionsHelper.a(a));
    AppData.a(EventIri.MessagingFlagConversationSend);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */