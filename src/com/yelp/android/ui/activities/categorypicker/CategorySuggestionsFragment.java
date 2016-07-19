package com.yelp.android.ui.activities.categorypicker;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import com.yelp.android.co.a.c;
import com.yelp.android.co.a.f;
import com.yelp.android.co.a.h;
import com.yelp.android.serializable.CategorySuggestion;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import java.util.ArrayList;

public class CategorySuggestionsFragment<Suggest extends CategorySuggestion>
  extends ListFragment
{
  protected a<Suggest> i;
  private a<Suggest> j;
  private b.a k;
  
  public static <Suggest extends CategorySuggestion> CategorySuggestionsFragment a(ArrayList<Suggest> paramArrayList)
  {
    CategorySuggestionsFragment localCategorySuggestionsFragment = new CategorySuggestionsFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("args_suggestions", paramArrayList);
    localCategorySuggestionsFragment.setArguments(localBundle);
    return localCategorySuggestionsFragment;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    k.b(paramInt);
    j.b((CategorySuggestion)i.getItem(paramInt));
  }
  
  public void b(ArrayList<Suggest> paramArrayList)
  {
    i.a(paramArrayList);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    try
    {
      paramBundle = ((b.b)getActivity()).a();
      j = paramBundle;
      k = ((b.a)paramBundle);
      a().setBackgroundColor(getResources().getColor(a.c.transparent));
      a().setOnScrollListener(new AbsListView.OnScrollListener()
      {
        public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
        {
          CategorySuggestionsFragment.a(CategorySuggestionsFragment.this).b();
        }
      });
      return;
    }
    catch (ClassCastException paramBundle)
    {
      throw new ClassCastException("The corresponding activity must implement CategoryPickerHelperInterface and the helper must implement CategorySelectedListener.");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments().getParcelableArrayList("args_suggestions");
    i = new a();
    i.a(paramBundle);
    paramBundle = new aj();
    paramBundle.a(0, aj.c.a("", i).a(a.f.business_category_suggest_container, 0, 0).b());
    a(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(a.h.simple_list_view_fragment, paramViewGroup, false);
  }
  
  public static abstract interface a<Suggest extends CategorySuggestion>
  {
    public abstract void b();
    
    public abstract void b(Suggest paramSuggest);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.CategorySuggestionsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */