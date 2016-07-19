package com.yelp.android.serializable;

import android.os.Bundle;
import android.os.Parcelable.Creator;
import com.yelp.android.bx.c;
import java.util.List;

public class MoviesViewModel
  extends _MoviesViewModel
  implements c
{
  public static final Parcelable.Creator<MoviesViewModel> CREATOR = new MoviesViewModel.1();
  
  private MoviesViewModel() {}
  
  public MoviesViewModel(List<Movie> paramList, String paramString1, String paramString2)
  {
    super(paramList, paramString1, paramString2);
  }
  
  public static MoviesViewModel b(Bundle paramBundle)
  {
    return (MoviesViewModel)paramBundle.getParcelable("MoviesViewModel");
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelable("MoviesViewModel", this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.MoviesViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */