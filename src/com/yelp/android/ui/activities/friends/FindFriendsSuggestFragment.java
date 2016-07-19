package com.yelp.android.ui.activities.friends;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.support.YelpFragment;

public class FindFriendsSuggestFragment
  extends YelpFragment
{
  private a a;
  private final View.OnClickListener b = new FindFriendsSuggestFragment.1(this);
  
  public static FindFriendsSuggestFragment a()
  {
    return new FindFriendsSuggestFragment();
  }
  
  public ViewIri b()
  {
    AppData.b().m().a(KahunaEventIri.FriendFinderSelectSources);
    return ViewIri.FriendFinderSelectSources;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = ((a)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903244, paramViewGroup, false);
    paramLayoutInflater.findViewById(2131690267).setOnClickListener(b);
    paramLayoutInflater.findViewById(2131690268).setOnClickListener(b);
    return paramLayoutInflater;
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.FindFriendsSuggestFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */