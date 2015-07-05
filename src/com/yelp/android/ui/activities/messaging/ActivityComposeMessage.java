package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.cr;
import java.util.Map;
import java.util.TreeMap;

public class ActivityComposeMessage
  extends YelpActivity
  implements f, x, aa
{
  private ComposeMessageFragment a;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityComposeMessage.class);
  }
  
  public static Intent a(Context paramContext, User paramUser)
  {
    Intent localIntent = a(paramContext);
    localIntent.putExtra("extra_user", paramUser);
    return ActivityLogin.a(paramContext, 2131166785, 2131166042, localIntent);
  }
  
  private User d()
  {
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle != null) && (localBundle.containsKey("extra_user"))) {
      return (User)localBundle.getParcelable("extra_user");
    }
    return null;
  }
  
  public void a()
  {
    setResult(-1);
    finish();
    cr.a(2131166926, 0);
  }
  
  public void a(User paramUser)
  {
    a.c(paramUser);
    getSupportFragmentManager().popBackStack();
  }
  
  public void c()
  {
    a.f();
  }
  
  public PanelError getErrorPanel()
  {
    return super.getErrorPanel();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.MessagingNewConversation;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    TreeMap localTreeMap = new TreeMap();
    if (d() == null) {}
    for (paramb = "inbox";; paramb = "user_profile")
    {
      localTreeMap.put("source", paramb);
      return localTreeMap;
    }
  }
  
  public void m_()
  {
    a.d();
  }
  
  public void onBackPressed()
  {
    ComposeMessageFragment localComposeMessageFragment = a;
    ComposeMessageFragment.a();
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((ComposeMessageFragment)getSupportFragmentManager().findFragmentById(2131493332));
    if (a == null)
    {
      a = ComposeMessageFragment.a(d());
      getSupportFragmentManager().beginTransaction().replace(2131493332, a).commit();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    a.onCreateOptionsMenu(paramMenu, getMenuInflater());
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!a.onOptionsItemSelected(paramMenuItem)) {
      return super.onOptionsItemSelected(paramMenuItem);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityComposeMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */