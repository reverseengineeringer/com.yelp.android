package com.yelp.android.ui.activities.categorypicker;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yelp.android.serializable.BusinessCategorySuggest;
import com.yelp.android.ui.panels.p;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import java.util.ArrayList;

public class CategorySuggestionsFragment
  extends ListFragment
{
  private p a;
  private h b;
  
  public static CategorySuggestionsFragment a(ArrayList<BusinessCategorySuggest> paramArrayList)
  {
    CategorySuggestionsFragment localCategorySuggestionsFragment = new CategorySuggestionsFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("args_suggestions", paramArrayList);
    localCategorySuggestionsFragment.setArguments(localBundle);
    return localCategorySuggestionsFragment;
  }
  
  public void b(ArrayList<BusinessCategorySuggest> paramArrayList)
  {
    a.a(paramArrayList);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getListView().setBackgroundColor(getResources().getColor(17170445));
    getListView().setOnScrollListener(new g(this));
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      b = ((h)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("The corresponding activity must implement the CategorySelectedListener interface.");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments().getParcelableArrayList("args_suggestions");
    a = new p();
    a.a(paramBundle);
    paramBundle = new bs();
    paramBundle.a(0, bw.a("", a).a(2131493338, 0, 0).a());
    setListAdapter(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903235, paramViewGroup, false);
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    paramListView = (BusinessCategorySuggest)a.getItem(paramInt);
    b.a(paramListView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.CategorySuggestionsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */