package com.yelp.android.ui.activities.messaging;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.e;
import com.yelp.android.ui.activities.messaging.apimanagers.a;
import com.yelp.android.ui.activities.messaging.apimanagers.g.a;
import com.yelp.android.ui.activities.messaging.apimanagers.h;

public class ActivityMessaging$MessagingActionsFragment
  extends Fragment
{
  private h a;
  private a b;
  
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
    b = new a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessaging.MessagingActionsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */