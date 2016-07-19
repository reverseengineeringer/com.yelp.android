package com.yelp.android.serializable;

import android.os.Bundle;
import android.os.Parcelable.Creator;
import com.yelp.android.bx.c;
import java.util.List;

public class UserReviewsViewModel
  extends _UserReviewsViewModel
  implements c
{
  public static final Parcelable.Creator<UserReviewsViewModel> CREATOR = new UserReviewsViewModel.1();
  
  private UserReviewsViewModel() {}
  
  public UserReviewsViewModel(List<YelpBusinessReview> paramList, User paramUser, int paramInt)
  {
    super(paramList, paramUser, false, paramInt);
  }
  
  public static UserReviewsViewModel b(Bundle paramBundle)
  {
    return (UserReviewsViewModel)paramBundle.getParcelable("UserReviewsViewModel");
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelable("UserReviewsViewModel", this);
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public boolean a()
  {
    return !e().isEmpty();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.UserReviewsViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */