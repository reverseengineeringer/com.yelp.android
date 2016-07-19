package com.yelp.android.serializable;

import android.os.Bundle;
import android.os.Parcelable.Creator;
import com.yelp.android.bx.c;
import java.util.List;

public class BadgesViewModel
  extends _BadgesViewModel
  implements c
{
  public static final Parcelable.Creator<BadgesViewModel> CREATOR = new BadgesViewModel.1();
  
  private BadgesViewModel() {}
  
  public BadgesViewModel(String paramString)
  {
    super(null, paramString);
  }
  
  public static BadgesViewModel b(Bundle paramBundle)
  {
    return (BadgesViewModel)paramBundle.getParcelable("BadgesViewModel");
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelable("BadgesViewModel", this);
  }
  
  public void a(List<Badge> paramList)
  {
    a = paramList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BadgesViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */