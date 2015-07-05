package com.yelp.android.ui.activities.profile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.UriMatcher;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.a;
import com.yelp.android.serializable.User;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.activities.friends.SendFriendRequestForm;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.dialogs.DlgAddPhotoCaption;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import java.util.Set;

public class ActivityUserProfile
  extends YelpActivity
  implements z
{
  private static UriMatcher a = new UriMatcher(-1);
  private String b;
  private String c;
  private boolean d;
  private User e;
  private Intent f;
  private UserProfileFragment g;
  private final BroadcastReceiver h = new g(this);
  private final m<gw> i = new h(this);
  
  static
  {
    a.addURI("", "user_details", 1);
    a.addURI("", "user/profile/*", 2);
  }
  
  public static Intent a()
  {
    Intent localIntent = new Intent();
    localIntent.addCategory("user");
    localIntent.setAction("REFRESH_USER_ACTION");
    return localIntent;
  }
  
  public static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, ActivityUserProfile.class);
    paramContext.putExtra("about_me", true);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, User paramUser)
  {
    Intent localIntent = new Intent(paramContext, ActivityUserProfile.class);
    if (paramUser.isFullUser())
    {
      localIntent.putExtra("user", paramUser);
      localIntent.putExtra("about_me", AppData.b().m().a(paramUser));
      return localIntent;
    }
    return a(paramContext, paramUser.getId());
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityUserProfile.class);
    paramContext.putExtra("user_id", paramString);
    paramContext.putExtra("about_me", AppData.b().m().a(paramString));
    return paramContext;
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    new ObjectDirtyEvent(paramInt, "com.yelp.android.messages.read").a(paramContext);
  }
  
  private void a(Intent paramIntent)
  {
    Uri localUri2 = paramIntent.getData();
    Notifier.NotificationType localNotificationType = (Notifier.NotificationType)paramIntent.getSerializableExtra("extra_notification_type");
    String str = localUri2.getLastPathSegment();
    Uri localUri1 = localUri2;
    if (localNotificationType == null) {
      if (!"http".equals(localUri2.getScheme()))
      {
        localUri1 = localUri2;
        if (!"https".equals(localUri2.getScheme())) {}
      }
      else
      {
        localUri1 = localUri2;
        if (localUri2.getAuthority().contains(".yelp.")) {
          localUri1 = localUri2.buildUpon().authority("").build();
        }
      }
    }
    switch (a.match(localUri1))
    {
    default: 
      YelpLog.e(this, String.format("Unknown user requested by uri, URI=[%s], Authority=[%s], Path=[%s] ", new Object[] { localUri1, localUri1.getAuthority(), localUri1.getPath() }));
      finish();
      if ((localNotificationType != null) && ((paramIntent.getCategories() == null) || (!paramIntent.getCategories().contains("android.intent.category.BROWSABLE")))) {
        switch (i.a[localNotificationType.ordinal()])
        {
        default: 
          YelpLog.i(this, "Have no clue what to do with this:" + localUri1);
        }
      }
      break;
    }
    for (;;)
    {
      Notifier.a(this, localNotificationType);
      return;
      b = str;
      break;
      b = localUri1.getQueryParameter("userid");
      break;
      b = str;
      continue;
      c = str;
      continue;
      c();
      b = AppData.b().m().b();
    }
  }
  
  private void c()
  {
    d = true;
    d();
    setTitle(2131166159);
  }
  
  private void d()
  {
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.EDIT");
    localIntentFilter.addCategory("user");
    registerReceiver(h, localIntentFilter);
    localIntentFilter = new IntentFilter("REFRESH_USER_ACTION");
    localIntentFilter.addCategory("user");
    registerReceiver(h, localIntentFilter);
    registerReceiver(h, new IntentFilter("com.yelp.android.offer_redeemed"));
  }
  
  public void a(User paramUser)
  {
    if (AppData.b().m().a(paramUser))
    {
      setTitle(2131166159);
      return;
    }
    setTitle(paramUser.getName());
  }
  
  public boolean b()
  {
    return d;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        do
        {
          return;
        } while ((paramInt2 != -1) || (paramIntent == null));
        e = SendFriendRequestForm.a(paramIntent);
        g.b(e);
        return;
        if (paramInt2 == -1)
        {
          f = paramIntent;
          return;
        }
      } while (paramInt2 != 4);
      cr.a(getText(2131166312), 1);
      return;
      YelpActivity.IntentData.popData();
    } while ((paramInt2 != -1) || (!paramIntent.getBooleanExtra("photo_added", false)));
    startActivity(MoreAboutUser.a(this, e));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    e = ((User)paramBundle.getParcelableExtra("user"));
    b = paramBundle.getStringExtra("user_id");
    d = paramBundle.getBooleanExtra("about_me", false);
    setTitle("");
    if ((e == null) && (b == null) && (!d))
    {
      Uri localUri = paramBundle.getData();
      if (localUri != null)
      {
        AppData.b().k().a(new o(localUri));
        a(paramBundle);
      }
      if ((c == null) && (b == null) && (!d))
      {
        YelpLog.e(this, "No User could be found, we must be invoked with an intent specifying either a User ID, a User object, or a valid url to a check_in");
        finish();
        return;
      }
    }
    paramBundle = (UserProfileFragment)getSupportFragmentManager().findFragmentByTag("user_profile");
    g = paramBundle;
    if (paramBundle == null)
    {
      if ((e != null) || (!d)) {
        break label247;
      }
      e = AppData.b().m().s();
      g = UserProfileFragment.a(e);
    }
    for (;;)
    {
      getSupportFragmentManager().beginTransaction().add(2131493332, g, "user_profile").commit();
      if (d) {
        d();
      }
      registerDirtyEventReceiver("com.yelp.android.messages.read", new f(this));
      return;
      label247:
      if ((!d) && (e == null)) {
        g = UserProfileFragment.a(b, c);
      } else {
        g = UserProfileFragment.a(e);
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (d) {
      unregisterReceiver(h);
    }
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    if (f != null)
    {
      DlgAddPhotoCaption localDlgAddPhotoCaption = DlgAddPhotoCaption.a(f);
      localDlgAddPhotoCaption.a(i, this, true);
      localDlgAddPhotoCaption.show(getSupportFragmentManager().beginTransaction(), "dialog_add_photo");
    }
    f = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserProfile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */