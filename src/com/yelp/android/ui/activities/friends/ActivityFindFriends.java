package com.yelp.android.ui.activities.friends;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.ActivitySignUpComplete;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.widgets.EditTextAndClearButton;

public class ActivityFindFriends
  extends YelpActivity
  implements p
{
  private FindFriendsFBContactsFragment a;
  private boolean b;
  private boolean c;
  private LinearLayout d;
  private TextView.OnEditorActionListener e = new a(this);
  
  public static Intent a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramContext = new Intent(paramContext, ActivityFindFriends.class);
    paramContext.putExtra("extra.from_signup", paramBoolean1);
    paramContext.putExtra("signup_from_review", paramBoolean2);
    return paramContext;
  }
  
  @SuppressLint({"CommitTransaction"})
  private FragmentTransaction a()
  {
    return getSupportFragmentManager().beginTransaction().setCustomAnimations(2130968587, 2130968588, 2130968587, 2130968588);
  }
  
  public void a(String paramString)
  {
    a = ((FindFriendsFBContactsFragment)getSupportFragmentManager().findFragmentByTag("fb_contacts_fragment"));
    if (a == null) {
      a = FindFriendsFBContactsFragment.c();
    }
    a.a(paramString);
    if (!a.isVisible()) {
      a().add(2131493195, a, "fb_contacts_fragment").addToBackStack("fb_contacts_fragment").commit();
    }
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (a != null) {
        a.onActivityResult(paramInt1, paramInt2, paramIntent);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903090);
    b = getIntent().getBooleanExtra("extra.from_signup", false);
    c = getIntent().getBooleanExtra("signup_from_review", false);
    d = ((LinearLayout)findViewById(2131493194));
    paramBundle = (EditTextAndClearButton)findViewById(2131493226);
    paramBundle.setHint(2131166074);
    paramBundle.setOnEditorActionListener(e);
    if ((FindFriendsSuggestFragment)getSupportFragmentManager().findFragmentByTag("suggest_fragment") == null)
    {
      paramBundle = FindFriendsSuggestFragment.a();
      getSupportFragmentManager().beginTransaction().add(2131493195, paramBundle, "suggest_fragment").commit();
    }
    paramBundle = getIntent().getData();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getQueryParameter("address_book");
      if (paramBundle != null) {
        if (!paramBundle.equals("0")) {
          break label166;
        }
      }
    }
    label166:
    for (paramBundle = "SOURCE_FACEBOOK";; paramBundle = "SOURCE_CONTACTS")
    {
      a(paramBundle);
      if (b) {
        disableHotButtons();
      }
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    if (b) {
      getMenuInflater().inflate(2131755024, paramMenu);
    }
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    startActivity(ActivitySignUpComplete.a(this, c));
    finish();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ActivityFindFriends
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */