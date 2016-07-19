package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.Menu;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.as;
import java.util.Map;
import java.util.TreeMap;

public class ActivityComposeMessage
  extends YelpActivity
  implements ComposeMessageFragment.a, FriendsFragment.a, PanelError.a
{
  private ComposeMessageFragment a;
  
  public static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, ActivityComposeMessage.class);
    paramContext.setAction("android.intent.action.SEND");
    paramContext.setType("text/plain");
    return paramContext;
  }
  
  public static Intent a(Context paramContext, User paramUser)
  {
    Intent localIntent = a(paramContext);
    localIntent.putExtra("extra_user", paramUser);
    return ActivityLogin.a(paramContext, 2131165701, 2131166101, localIntent);
  }
  
  private void c()
  {
    a = ((ComposeMessageFragment)getSupportFragmentManager().a(2131689997));
    if (a == null)
    {
      a = ComposeMessageFragment.a(e(), f());
      getSupportFragmentManager().a().b(2131689997, a).a();
    }
  }
  
  private User e()
  {
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle != null) && (localBundle.containsKey("extra_user"))) {
      return (User)localBundle.getParcelable("extra_user");
    }
    return null;
  }
  
  private String f()
  {
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle != null) && (localBundle.containsKey("android.intent.extra.TEXT"))) {
      return localBundle.getString("android.intent.extra.TEXT");
    }
    return null;
  }
  
  public void a()
  {
    setResult(-1);
    finish();
    as.a(2131166878, 0);
  }
  
  public void a(User paramUser)
  {
    a.b(paramUser);
    getSupportFragmentManager().c();
  }
  
  public void b()
  {
    a.g();
  }
  
  public PanelError getErrorPanel()
  {
    return super.getErrorPanel();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.MessagingNewConversation;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    TreeMap localTreeMap = new TreeMap();
    if (e() == null) {}
    for (parama = "inbox";; parama = "user_profile")
    {
      localTreeMap.put("source", parama);
      return localTreeMap;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
      return;
    }
    if (AppData.b().q().d())
    {
      c();
      return;
    }
    finish();
  }
  
  public void onBackPressed()
  {
    a.a();
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166231);
    if ((getIntent() != null) && (!"android.intent.action.SEND".equals(getIntent().getAction())))
    {
      finish();
      return;
    }
    if (AppData.b().q().d())
    {
      c();
      return;
    }
    startActivityForResult(ActivityLogin.a(this, 2131165701, 2131166101), 1049);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    if (a != null) {
      a.onCreateOptionsMenu(paramMenu, getMenuInflater());
    }
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!a.onOptionsItemSelected(paramMenuItem)) {
      return super.onOptionsItemSelected(paramMenuItem);
    }
    return true;
  }
  
  public void q_()
  {
    a.E_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityComposeMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */