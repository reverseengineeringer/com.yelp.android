package com.yelp.android.ui.activities.categorypicker;

import android.support.v4.app.FragmentActivity;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.BusinessCategorySuggest;
import com.yelp.android.serializable.Category;
import java.util.ArrayList;

public class d
  extends b<Category, BusinessCategorySuggest>
  implements b.a
{
  public d(int paramInt, FragmentActivity paramFragmentActivity)
  {
    super(paramInt, paramFragmentActivity);
  }
  
  public void A_()
  {
    AppData.a(EventIri.BusinessCategoriesRemoved);
  }
  
  protected Category a(BusinessCategorySuggest paramBusinessCategorySuggest)
  {
    return new Category(paramBusinessCategorySuggest.d(), paramBusinessCategorySuggest.f(), paramBusinessCategorySuggest.e(), -1);
  }
  
  protected AddNewCategoryAbstractFragment a(boolean paramBoolean, String paramString)
  {
    return AddNewCategoryFragment.a(paramBoolean, paramString);
  }
  
  protected CategoryPickerAbstractFragment a(ArrayList<Category> paramArrayList)
  {
    return CategoryPickerFragment.d(paramArrayList);
  }
  
  public void a(int paramInt)
  {
    AppData.a(EventIri.BusinessCategoriesAdded, "numberOfCategories", Integer.valueOf(paramInt));
  }
  
  public void a(String paramString)
  {
    AppData.a(EventIri.BusinessCategoriesNoneAvailable, "searchTerm", paramString);
  }
  
  public void b(int paramInt)
  {
    AppData.a(EventIri.BusinessCategoriesSelected, "categoryRank", Integer.valueOf(paramInt));
  }
  
  public void c()
  {
    AppData.a(EventIri.BusinessCategoriesEdited);
  }
  
  public void d()
  {
    AppData.a(EventIri.BusinessCategoriesSaved);
  }
  
  public void z_()
  {
    AppData.a(EventIri.BusinessCategoriesTapSearch);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */