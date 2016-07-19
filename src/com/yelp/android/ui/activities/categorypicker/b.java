package com.yelp.android.ui.activities.categorypicker;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.co.a.f;
import com.yelp.android.serializable.BizCategory;
import com.yelp.android.serializable.CategorySuggestion;
import com.yelp.android.ui.util.ar;
import java.util.ArrayList;
import java.util.List;

public abstract class b<Category extends BizCategory, Suggest extends CategorySuggestion>
  implements AddNewCategoryAbstractFragment.a<Suggest>, CategoryPickerAbstractFragment.a, CategorySuggestionsFragment.a<Suggest>
{
  private int a;
  private String b;
  private ArrayList<Category> c;
  private List<Category> d = new ArrayList();
  private int e;
  private FragmentActivity f;
  
  public b(int paramInt, FragmentActivity paramFragmentActivity)
  {
    e = paramInt;
    f = paramFragmentActivity;
  }
  
  public static <Category extends BizCategory> void a(Intent paramIntent, ArrayList<Category> paramArrayList, String paramString)
  {
    paramIntent.putParcelableArrayListExtra("extra.categories", paramArrayList);
    paramIntent.putExtra("extra.business", paramString);
  }
  
  @SuppressLint({"CommitTransaction"})
  private void c()
  {
    CategoryPickerAbstractFragment localCategoryPickerAbstractFragment2 = (CategoryPickerAbstractFragment)f.getSupportFragmentManager().a("category_picker_fragment_tag");
    CategoryPickerAbstractFragment localCategoryPickerAbstractFragment1 = localCategoryPickerAbstractFragment2;
    if (localCategoryPickerAbstractFragment2 == null) {
      localCategoryPickerAbstractFragment1 = a(c);
    }
    f.getSupportFragmentManager().a().b(e, localCategoryPickerAbstractFragment1, "category_picker_fragment_tag").a();
  }
  
  protected abstract Category a(Suggest paramSuggest);
  
  protected abstract AddNewCategoryAbstractFragment a(boolean paramBoolean, String paramString);
  
  protected abstract CategoryPickerAbstractFragment a(ArrayList<Category> paramArrayList);
  
  public a a()
  {
    return (a)this;
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    a = paramInt;
    AddNewCategoryAbstractFragment localAddNewCategoryAbstractFragment = a(paramBoolean, b);
    o localo = f.getSupportFragmentManager().a();
    localo.b(e, localAddNewCategoryAbstractFragment, "add_new_category_fragment_tag");
    if (!paramBoolean) {
      localo.a(null);
    }
    localo.a();
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    for (c = f.getIntent().getParcelableArrayListExtra("extra.categories");; c = paramBundle.getParcelableArrayList("categories"))
    {
      b = f.getIntent().getStringExtra("extra.business");
      if (f.getSupportFragmentManager().a(e) == null)
      {
        if ((c != null) && (!c.isEmpty())) {
          break;
        }
        a(-1, true);
      }
      return;
    }
    c();
  }
  
  @SuppressLint({"CommitTransaction"})
  public void a(List<Suggest> paramList)
  {
    CategorySuggestionsFragment localCategorySuggestionsFragment = (CategorySuggestionsFragment)f.getSupportFragmentManager().a(a.f.categories_suggest_fragment);
    if ((localCategorySuggestionsFragment == null) && (!paramList.isEmpty()))
    {
      paramList = CategorySuggestionsFragment.a((ArrayList)paramList);
      f.getSupportFragmentManager().a().b(a.f.categories_suggest_fragment, paramList).a(null).a();
    }
    do
    {
      return;
      if ((localCategorySuggestionsFragment != null) && (paramList.isEmpty()))
      {
        f.getSupportFragmentManager().a().a(localCategorySuggestionsFragment).a();
        f.getSupportFragmentManager().c();
        return;
      }
    } while ((localCategorySuggestionsFragment == null) || (paramList.isEmpty()));
    localCategorySuggestionsFragment.b((ArrayList)paramList);
  }
  
  public void b()
  {
    ar.c(((AddNewCategoryAbstractFragment)f.getSupportFragmentManager().a("add_new_category_fragment_tag")).getView());
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("categories", c);
  }
  
  public void b(Suggest paramSuggest)
  {
    paramSuggest = a(paramSuggest);
    if (c == null) {
      c = new ArrayList();
    }
    if (a == -1) {
      c.add(paramSuggest);
    }
    for (;;)
    {
      ar.c(f.getSupportFragmentManager().a("add_new_category_fragment_tag").getView());
      paramSuggest = f.getSupportFragmentManager();
      int i = 0;
      while (i < paramSuggest.e())
      {
        paramSuggest.c();
        i += 1;
      }
      BizCategory localBizCategory = (BizCategory)c.get(a);
      if (!localBizCategory.b().equals(paramSuggest.b())) {
        d.add(localBizCategory);
      }
      c.remove(a);
      c.add(a, paramSuggest);
    }
    paramSuggest = (CategoryPickerAbstractFragment)paramSuggest.a("category_picker_fragment_tag");
    if (paramSuggest == null)
    {
      c();
      return;
    }
    paramSuggest.c(c);
  }
  
  public static abstract interface a
  {
    public abstract void A_();
    
    public abstract void a(int paramInt);
    
    public abstract void a(String paramString);
    
    public abstract void b(int paramInt);
    
    public abstract void c();
    
    public abstract void d();
    
    public abstract void z_();
  }
  
  public static abstract interface b
  {
    public abstract b a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */