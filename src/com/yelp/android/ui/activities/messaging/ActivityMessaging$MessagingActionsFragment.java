package com.yelp.android.ui.activities.messaging;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.bg;
import com.yelp.android.ui.activities.messaging.apimanagers.a;
import com.yelp.android.ui.activities.messaging.apimanagers.p;
import com.yelp.android.ui.activities.messaging.apimanagers.q;

public class ActivityMessaging$MessagingActionsFragment
  extends Fragment
{
  private q a;
  private a b;
  
  public void a(Conversation paramConversation, p paramp)
  {
    a.a(paramConversation, paramp);
  }
  
  public void a(Conversation paramConversation, String paramString, p paramp)
  {
    a.a(paramConversation, paramString, paramp);
  }
  
  public void a(bg parambg, boolean paramBoolean, p paramp)
  {
    a.a(parambg, paramBoolean, paramp);
  }
  
  public void a(p paramp1, p paramp2)
  {
    a.a(paramp1);
    b.a(paramp2);
  }
  
  public boolean a()
  {
    return (a.g()) || (b.g());
  }
  
  public void b(Conversation paramConversation, p paramp)
  {
    b.a(paramp, paramConversation);
  }
  
  public void b(Conversation paramConversation, String paramString, p paramp)
  {
    b.a(paramp, paramConversation, paramString);
  }
  
  public void b(bg parambg, boolean paramBoolean, p paramp)
  {
    a.b(parambg, paramBoolean, paramp);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    a = new q();
    b = new a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessaging.MessagingActionsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */