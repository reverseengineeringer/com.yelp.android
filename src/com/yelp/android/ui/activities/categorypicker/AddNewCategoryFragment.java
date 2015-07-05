package com.yelp.android.ui.activities.categorypicker;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.v;
import com.yelp.android.serializable.BusinessCategorySuggest;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpFragment;
import java.util.List;

public class AddNewCategoryFragment
  extends YelpFragment
{
  private boolean a;
  private EditText b;
  private TextView c;
  private v d;
  private YelpBusiness e;
  private c g;
  private m<List<BusinessCategorySuggest>> h = new b(this);
  
  public static AddNewCategoryFragment a(boolean paramBoolean, YelpBusiness paramYelpBusiness)
  {
    AddNewCategoryFragment localAddNewCategoryFragment = new AddNewCategoryFragment();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("args_categories_added", paramBoolean);
    localBundle.putParcelable("args_business", paramYelpBusiness);
    localAddNewCategoryFragment.setArguments(localBundle);
    return localAddNewCategoryFragment;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      g = ((c)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("The corresponding activity must implement the AddCategoriesSuggestListener interface.");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = getArguments().getBoolean("args_categories_added");
    e = ((YelpBusiness)getArguments().getParcelable("args_business"));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (ViewGroup)paramLayoutInflater.inflate(2130903153, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    c = ((TextView)paramLayoutInflater.findViewById(2131493311));
    b = ((EditText)paramLayoutInflater.findViewById(2131493395));
    paramViewGroup = b;
    if (a) {}
    for (int i = 2131166502;; i = 2131165319)
    {
      paramViewGroup.setHint(i);
      b.addTextChangedListener(new a(this));
      if (!a) {
        paramLayoutInflater.findViewById(2131493394).setVisibility(8);
      }
      return paramLayoutInflater;
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a("business_category_suggest_request_tag", d);
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((v)a("business_category_suggest_request_tag", d, h));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.AddNewCategoryFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */