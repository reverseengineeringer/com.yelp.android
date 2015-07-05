package com.yelp.android.ui.activities.messaging;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yelp.android.bb.a;
import com.yelp.android.serializable.User;
import java.util.ArrayList;

public class FriendsFragment
  extends ListFragment
{
  private ArrayList<User> a;
  private a b;
  private x c;
  
  public static FriendsFragment a(ArrayList<User> paramArrayList)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("data_friends", paramArrayList);
    paramArrayList = new FriendsFragment();
    paramArrayList.setArguments(localBundle);
    return paramArrayList;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getListView().setOnScrollListener(new w(this));
    getListView().setSelector(2130838372);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      c = ((x)paramActivity);
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
    a = getArguments().getParcelableArrayList("data_friends");
    b = new a(a);
    setListAdapter(b);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903235, paramViewGroup, false);
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    paramListView = (User)b.getItem(paramInt);
    c.a(paramListView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.FriendsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */