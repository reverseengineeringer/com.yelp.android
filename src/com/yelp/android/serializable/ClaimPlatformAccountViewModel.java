package com.yelp.android.serializable;

import android.os.Bundle;
import com.yelp.android.bx.c;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class ClaimPlatformAccountViewModel
  extends _ClaimPlatformAccountViewModel
  implements c
{
  public static final JsonParser.DualCreator<ClaimPlatformAccountViewModel> CREATOR = new ClaimPlatformAccountViewModel.1();
  
  public ClaimPlatformAccountViewModel() {}
  
  public ClaimPlatformAccountViewModel(PlatformConfirmation paramPlatformConfirmation)
  {
    a = paramPlatformConfirmation;
  }
  
  public static ClaimPlatformAccountViewModel b(Bundle paramBundle)
  {
    return (ClaimPlatformAccountViewModel)paramBundle.getParcelable("ClaimPlatformAccountViewModel");
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelable("ClaimPlatformAccountViewModel", this);
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ClaimPlatformAccountViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */