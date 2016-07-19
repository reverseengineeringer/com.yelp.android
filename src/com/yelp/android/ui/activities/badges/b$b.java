package com.yelp.android.ui.activities.badges;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.BadgesViewModel;

public class b$b
{
  public static Intent a(Context paramContext, String paramString)
  {
    return new Intent(paramContext, ActivityBadges.class).putExtra("user_id", paramString);
  }
  
  public static BadgesViewModel a(Intent paramIntent)
  {
    return new BadgesViewModel(paramIntent.getStringExtra("user_id"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.badges.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */