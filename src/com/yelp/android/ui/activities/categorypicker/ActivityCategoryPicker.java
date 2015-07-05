package com.yelp.android.ui.activities.categorypicker;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.BusinessCategorySuggest;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cr;
import java.util.ArrayList;

public class ActivityCategoryPicker
  extends YelpActivity
  implements c, e, h
{
  private ArrayList<Category> a;
  private YelpBusiness b;
  
  public static Intent a(Context paramContext, ArrayList<Category> paramArrayList, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityCategoryPicker.class);
    paramContext.putParcelableArrayListExtra("extra_categories", paramArrayList);
    paramContext.putExtra("extra_business", paramYelpBusiness);
    return paramContext;
  }
  
  private void b()
  {
    CategoryPickerFragment localCategoryPickerFragment2 = (CategoryPickerFragment)getSupportFragmentManager().findFragmentByTag("category_picker_fragment_tag");
    CategoryPickerFragment localCategoryPickerFragment1 = localCategoryPickerFragment2;
    if (localCategoryPickerFragment2 == null) {
      localCategoryPickerFragment1 = CategoryPickerFragment.a(a);
    }
    getSupportFragmentManager().beginTransaction().replace(2131493332, localCategoryPickerFragment1, "category_picker_fragment_tag").commit();
  }
  
  public void a()
  {
    cr.b(((AddNewCategoryFragment)getSupportFragmentManager().findFragmentByTag("add_new_category_fragment_tag")).getView());
  }
  
  public void a(BusinessCategorySuggest paramBusinessCategorySuggest)
  {
    paramBusinessCategorySuggest = new Category(paramBusinessCategorySuggest.getTitle(), paramBusinessCategorySuggest.getAlias(), paramBusinessCategorySuggest.getParentTitle(), -1);
    if (a == null) {
      a = new ArrayList();
    }
    a.add(paramBusinessCategorySuggest);
    cr.b(getSupportFragmentManager().findFragmentByTag("add_new_category_fragment_tag").getView());
    paramBusinessCategorySuggest = getSupportFragmentManager();
    int i = 0;
    while (i < paramBusinessCategorySuggest.getBackStackEntryCount())
    {
      paramBusinessCategorySuggest.popBackStack();
      i += 1;
    }
    paramBusinessCategorySuggest = (CategoryPickerFragment)paramBusinessCategorySuggest.findFragmentByTag("category_picker_fragment_tag");
    if (paramBusinessCategorySuggest == null)
    {
      b();
      return;
    }
    paramBusinessCategorySuggest.b(a);
  }
  
  public void a(ArrayList<BusinessCategorySuggest> paramArrayList)
  {
    CategorySuggestionsFragment localCategorySuggestionsFragment = (CategorySuggestionsFragment)getSupportFragmentManager().findFragmentById(2131493396);
    if (localCategorySuggestionsFragment == null)
    {
      paramArrayList = CategorySuggestionsFragment.a(paramArrayList);
      getSupportFragmentManager().beginTransaction().replace(2131493396, paramArrayList).addToBackStack(null).commit();
      return;
    }
    localCategorySuggestionsFragment.b(paramArrayList);
  }
  
  public void a(boolean paramBoolean)
  {
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    localFragmentTransaction.replace(2131493332, AddNewCategoryFragment.a(paramBoolean, b), "add_new_category_fragment_tag");
    if (!paramBoolean) {
      localFragmentTransaction.addToBackStack(null);
    }
    localFragmentTransaction.commit();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null) {}
    for (a = getIntent().getParcelableArrayListExtra("extra_categories");; a = paramBundle.getParcelableArrayList("saved_categories"))
    {
      b = ((YelpBusiness)getIntent().getParcelableExtra("extra_business"));
      if (getSupportFragmentManager().findFragmentById(2131493332) == null)
      {
        if (a != null) {
          break;
        }
        a(true);
      }
      return;
    }
    b();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("saved_categories", a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.ActivityCategoryPicker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */