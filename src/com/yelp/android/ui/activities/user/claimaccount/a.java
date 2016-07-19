package com.yelp.android.ui.activities.user.claimaccount;

import android.content.Intent;
import com.yelp.android.bx.b;
import com.yelp.android.serializable.ClaimPlatformAccountViewModel;
import com.yelp.android.serializable.PlatformConfirmation;

public abstract interface a
{
  public static abstract interface a
    extends com.yelp.android.bx.a
  {
    public abstract void d();
    
    public abstract void e();
  }
  
  public static class b
  {
    public static ClaimPlatformAccountViewModel a(Intent paramIntent)
    {
      return new ClaimPlatformAccountViewModel((PlatformConfirmation)paramIntent.getParcelableExtra("platform_confirmation"));
    }
  }
  
  public static abstract interface c
    extends b
  {
    public abstract void a();
    
    public abstract void a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.user.claimaccount.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */