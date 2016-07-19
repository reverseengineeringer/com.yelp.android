package com.yelp.android.ui.activities.friends;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.widgets.EditTextAndClearButton;
import java.util.Map;

public class ActivityFindFriends
  extends YelpActivity
  implements FindFriendsSuggestFragment.a
{
  private FindFriendsFBContactsFragment a;
  private boolean b;
  private boolean c;
  private TextView.OnEditorActionListener d = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if ((paramAnonymousInt == 0) && (ar.a(paramAnonymousKeyEvent)))
      {
        String str = paramAnonymousTextView.getText().toString();
        FindFriendsSearchResultsFragment localFindFriendsSearchResultsFragment = (FindFriendsSearchResultsFragment)getSupportFragmentManager().a("search_result_fragment");
        paramAnonymousKeyEvent = localFindFriendsSearchResultsFragment;
        if (localFindFriendsSearchResultsFragment == null) {
          paramAnonymousKeyEvent = FindFriendsSearchResultsFragment.c();
        }
        if (!paramAnonymousKeyEvent.isVisible()) {
          ActivityFindFriends.a(ActivityFindFriends.this).a(2131689866, paramAnonymousKeyEvent, "search_result_fragment").a("search_result_fragment").a();
        }
        paramAnonymousKeyEvent.a(str);
        ar.c(paramAnonymousTextView);
        return true;
      }
      return false;
    }
  };
  
  public static Intent a(Context paramContext, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivityFindFriends.class);
    paramContext.putExtra("extra.from_signup", paramBoolean);
    return paramContext;
  }
  
  @SuppressLint({"CommitTransaction"})
  private o a()
  {
    return getSupportFragmentManager().a().a(2130968589, 2130968590, 2130968589, 2130968590);
  }
  
  public void a(String paramString)
  {
    if (("SOURCE_CONTACTS".equals(paramString)) && (k.b(this, PermissionGroup.CONTACTS))) {
      k.a(this, 250, new PermissionGroup[] { PermissionGroup.CONTACTS });
    }
    do
    {
      return;
      a = ((FindFriendsFBContactsFragment)getSupportFragmentManager().a("fb_contacts_fragment"));
      if (a == null) {
        a = FindFriendsFBContactsFragment.c();
      }
      a.a(paramString);
    } while (a.isVisible());
    a().a(2131689866, a, "fb_contacts_fragment").a("fb_contacts_fragment").a();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (a != null) {
      a.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  @SuppressLint({"CommitTransaction"})
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903102);
    b = getIntent().getBooleanExtra("extra.from_signup", false);
    paramBundle = (EditTextAndClearButton)findViewById(2131690889);
    paramBundle.setHint(2131166136);
    paramBundle.setOnEditorActionListener(d);
    if ((FindFriendsSuggestFragment)getSupportFragmentManager().a("suggest_fragment") == null)
    {
      paramBundle = FindFriendsSuggestFragment.a();
      getSupportFragmentManager().a().a(2131689866, paramBundle, "suggest_fragment").a();
    }
    paramBundle = getIntent().getData();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getQueryParameter("address_book");
      if (paramBundle != null) {
        if (!"0".equals(paramBundle)) {
          break label139;
        }
      }
    }
    label139:
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
      getMenuInflater().inflate(2131755027, paramMenu);
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
    finish();
    return true;
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if ((paramArrayOfString.containsKey(PermissionGroup.CONTACTS)) && (((Boolean)paramArrayOfString.get(PermissionGroup.CONTACTS)).booleanValue())) {
        c = true;
      }
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (c)
    {
      a("SOURCE_CONTACTS");
      c = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ActivityFindFriends
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */