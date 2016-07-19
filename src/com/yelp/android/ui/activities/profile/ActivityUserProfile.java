package com.yelp.android.ui.activities.profile;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.UriMatcher;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.StateBroadcastReceiver;
import com.yelp.android.appdata.StateBroadcastReceiver.a;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.fk.a;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.FriendRequest;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.User;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.activities.friends.SendFriendRequestForm;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.dialogs.DlgAddPhotoCaption;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import java.util.Set;

public class ActivityUserProfile
  extends YelpActivity
  implements UserProfileFragment.b
{
  private static UriMatcher a = new UriMatcher(-1);
  private String b;
  private String c;
  private boolean d;
  private User e;
  private Intent f;
  private StateBroadcastReceiver g;
  private UserProfileFragment h;
  private final StateBroadcastReceiver.a i = new StateBroadcastReceiver.a()
  {
    public void a(Context paramAnonymousContext) {}
    
    public void b(Context paramAnonymousContext)
    {
      c().B_();
    }
  };
  private final BroadcastReceiver j = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("android.intent.action.EDIT".equals(paramAnonymousIntent.getAction()))
      {
        paramAnonymousContext = ActivityUserProfile.a.a(paramAnonymousIntent);
        if (ActivityUserProfile.a(ActivityUserProfile.this) != null) {
          ActivityUserProfile.a(ActivityUserProfile.this).a(paramAnonymousContext);
        }
      }
      do
      {
        return;
        if ("com.yelp.android.offer_redeemed".equals(paramAnonymousIntent.getAction()))
        {
          ActivityUserProfile.a(ActivityUserProfile.this).i();
          return;
        }
      } while (!"REFRESH_USER_ACTION".equals(paramAnonymousIntent.getAction()));
      ActivityUserProfile.a(ActivityUserProfile.this).i();
    }
  };
  private final ApiRequest.b<fk.a> k = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, fk.a paramAnonymousa)
    {
      ActivityUserProfile.a(ActivityUserProfile.this).i();
      hideLoadingDialog();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      ActivityUserProfile.this.onError(paramAnonymousApiRequest, paramAnonymousYelpException);
    }
  };
  
  static
  {
    a.addURI("", "user_details", 1);
    a.addURI("", "user/profile/*", 2);
  }
  
  public static Intent a()
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(ActivityUserProfile.class.getPackage().getName(), ActivityUserProfile.class.getName());
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
    if (paramUser.n())
    {
      localIntent.putExtra("user", paramUser);
      localIntent.putExtra("about_me", AppData.b().q().a(paramUser));
      return localIntent;
    }
    return a(paramContext, paramUser.ae());
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityUserProfile.class);
    paramContext.putExtra("user_id", paramString);
    paramContext.putExtra("about_me", AppData.b().q().a(paramString));
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
        switch (5.a[localNotificationType.ordinal()])
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
      d();
      b = AppData.b().q().a();
    }
  }
  
  private void d()
  {
    d = true;
    e();
    setTitle(2131166209);
  }
  
  private void e()
  {
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.EDIT");
    localIntentFilter.addCategory("user");
    registerReceiver(j, localIntentFilter);
    localIntentFilter = new IntentFilter("REFRESH_USER_ACTION");
    localIntentFilter.addCategory("user");
    registerReceiver(j, localIntentFilter);
    registerReceiver(j, new IntentFilter("com.yelp.android.offer_redeemed"));
  }
  
  public void a(User paramUser)
  {
    if (AppData.b().q().a(paramUser))
    {
      setTitle(2131166209);
      return;
    }
    setTitle(paramUser.ad());
  }
  
  public boolean b()
  {
    return d;
  }
  
  public UserProfileFragment c()
  {
    return h;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    h.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
          } while ((paramInt2 != -1) || (paramIntent == null));
          e = SendFriendRequestForm.a(paramIntent);
          h.b(e);
          return;
          if (paramInt2 == -1)
          {
            f = paramIntent;
            return;
          }
        } while (paramInt2 != 4);
        as.a(getText(2131166342), 1);
        return;
        YelpActivity.IntentData.popData();
      } while (paramInt2 != -1);
      if (paramIntent.getBooleanExtra("extra.photo_added", false))
      {
        startActivity(MoreAboutUser.a(this, e));
        return;
      }
      if (paramIntent.getBooleanExtra("extra.photo_deleted", false))
      {
        h.i();
        return;
      }
    } while (!paramIntent.getBooleanExtra("extra.photo_set_primary", false));
    h.i();
    AlertDialogFragment.a(null, getString(2131166633)).show(getSupportFragmentManager(), null);
  }
  
  public void onBackPressed()
  {
    c().B_();
    super.onBackPressed();
  }
  
  @SuppressLint({"CommitTransaction"})
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
        AppData.b().k().a(new n(localUri));
        a(paramBundle);
      }
      if ((c == null) && (b == null) && (!d))
      {
        YelpLog.e(this, "No User could be found, we must be invoked with an intent specifying either a User ID, a User object, or a valid url to a check_in");
        finish();
        return;
      }
    }
    paramBundle = (UserProfileFragment)getSupportFragmentManager().a("user_profile");
    h = paramBundle;
    if (paramBundle == null)
    {
      if ((e != null) || (!d)) {
        break label259;
      }
      e = AppData.b().q().p();
      h = UserProfileFragment.a(e);
    }
    for (;;)
    {
      getSupportFragmentManager().a().a(2131689997, h, "user_profile").a();
      if (d) {
        e();
      }
      g = StateBroadcastReceiver.a(this, i);
      registerDirtyEventReceiver("com.yelp.android.messages.read", new BroadcastReceiver()
      {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          if (ActivityUserProfile.a(ActivityUserProfile.this) != null)
          {
            int i = ObjectDirtyEvent.b(paramAnonymousIntent);
            ActivityUserProfile.a(ActivityUserProfile.this).a(i);
          }
        }
      });
      return;
      label259:
      if ((!d) && (e == null)) {
        h = UserProfileFragment.a(b, c);
      } else {
        h = UserProfileFragment.a(e);
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (d) {
      unregisterReceiver(j);
    }
    unregisterReceiver(g);
  }
  
  public void onDrawerItemSelected(Intent paramIntent, String paramString)
  {
    c().B_();
    super.onDrawerItemSelected(paramIntent, paramString);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    if (f != null)
    {
      DlgAddPhotoCaption localDlgAddPhotoCaption = DlgAddPhotoCaption.a(f);
      localDlgAddPhotoCaption.a(k, this, true);
      localDlgAddPhotoCaption.show(getSupportFragmentManager().a(), "dialog_add_photo");
    }
    f = null;
  }
  
  public static final class a
  {
    public Compliment a;
    public int b;
    public FriendRequest c;
    public int d;
    public Photo e;
    
    public static final a a(Intent paramIntent)
    {
      a locala = new a();
      b = paramIntent.getIntExtra("user_compliments_count_delta", 0);
      a = ((Compliment)paramIntent.getParcelableExtra("dealt_with_compliment_request"));
      d = paramIntent.getIntExtra("user_friend_count_delta", 0);
      c = ((FriendRequest)paramIntent.getParcelableExtra("dealt_with_friend_request"));
      e = ((Photo)paramIntent.getParcelableExtra("user_photo"));
      return locala;
    }
    
    public void a(Context paramContext)
    {
      Intent localIntent = new Intent("android.intent.action.EDIT");
      localIntent.addCategory("user");
      localIntent.putExtra("dealt_with_compliment_request", a);
      localIntent.putExtra("user_compliments_count_delta", b);
      localIntent.putExtra("user_friend_count_delta", d);
      localIntent.putExtra("dealt_with_friend_request", c);
      localIntent.putExtra("user_photo", e);
      localIntent.setPackage(paramContext.getPackageName());
      paramContext.sendBroadcast(localIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserProfile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */