package com.yelp.android.ui.activities.reviews;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.ui.activities.support.YelpActivity;

public abstract class ReviewBaseFragment
  extends Fragment
{
  protected StarsView a;
  protected View b;
  protected ViewGroup c;
  protected ao d;
  
  protected int a()
  {
    Object localObject = ((YelpActivity)getActivity()).getSupportActionBar().a();
    int i = a.getNumStars();
    StarsView localStarsView = a;
    if (((View)localObject).getTag().equals("stars")) {}
    for (localObject = StarsView.StarSize.SMALL;; localObject = StarsView.StarSize.LARGE)
    {
      localStarsView.setStarSize((StarsView.StarSize)localObject);
      d.a(i);
      d.b(true);
      return i;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      int i = paramBundle.getInt("saved_stars", 0);
      a.setNumStars(i);
      if (d != null) {
        d.a(i);
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("saved_stars", a.getNumStars());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ReviewBaseFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */