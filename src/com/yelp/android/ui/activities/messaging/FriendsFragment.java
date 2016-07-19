package com.yelp.android.ui.activities.messaging;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yelp.android.cl.a;
import com.yelp.android.serializable.User;
import java.util.ArrayList;

public class FriendsFragment
  extends ListFragment
{
  private ArrayList<User> i;
  private a j;
  private a k;
  
  public static FriendsFragment a(ArrayList<User> paramArrayList)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("data_friends", paramArrayList);
    paramArrayList = new FriendsFragment();
    paramArrayList.setArguments(localBundle);
    return paramArrayList;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (User)j.getItem(paramInt);
    k.a(paramListView);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a().setOnScrollListener(new FriendsFragment.1(this));
    a().setSelector(2130838707);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      k = ((a)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("The activity should implement the OnFriendClickedInterface");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    i = getArguments().getParcelableArrayList("data_friends");
    j = new a(i);
    a(j);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903538, paramViewGroup, false);
  }
  
  public static abstract interface a
  {
    public abstract void a(User paramUser);
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.FriendsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */