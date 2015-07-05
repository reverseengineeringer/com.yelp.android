package com.yelp.android.ui.activities.friends;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpFragment;

public class FindFriendsSuggestFragment
  extends YelpFragment
{
  private p a;
  private final View.OnClickListener b = new o(this);
  
  public static FindFriendsSuggestFragment a()
  {
    return new FindFriendsSuggestFragment();
  }
  
  public ViewIri b()
  {
    return ViewIri.FriendFinderSelectSources;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = ((p)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903218, paramViewGroup, false);
    paramLayoutInflater.findViewById(2131493563).setOnClickListener(b);
    paramLayoutInflater.findViewById(2131493564).setOnClickListener(b);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.FindFriendsSuggestFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */