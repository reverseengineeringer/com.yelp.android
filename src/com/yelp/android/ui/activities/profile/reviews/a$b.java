package com.yelp.android.ui.activities.profile.reviews;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.UserReviewsViewModel;
import java.util.ArrayList;

public class a$b
{
  public static Intent a(Context paramContext, User paramUser)
  {
    return new Intent(paramContext, ActivityUserReviews.class).putExtra("extra.user", paramUser);
  }
  
  public static UserReviewsViewModel a(Intent paramIntent)
  {
    return new UserReviewsViewModel(new ArrayList(), (User)paramIntent.getParcelableExtra("extra.user"), 20);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.reviews.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */