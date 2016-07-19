package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.FriendRequest;
import com.yelp.android.serializable.Photo;

public final class ActivityUserProfile$a
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

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserProfile.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */