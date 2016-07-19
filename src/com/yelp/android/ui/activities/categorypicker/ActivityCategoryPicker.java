package com.yelp.android.ui.activities.categorypicker;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.ArrayList;

public class ActivityCategoryPicker
  extends YelpActivity
  implements b.b
{
  private d a;
  
  public static Intent a(Context paramContext, ArrayList<Category> paramArrayList, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityCategoryPicker.class);
    b.a(paramContext, paramArrayList, paramString);
    return paramContext;
  }
  
  public b a()
  {
    return a;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditCategory;
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    if (isFinishing()) {
      AppData.a(EventIri.BusinessCategoriesCanceled);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = new d(2131689997, this);
    a.a(paramBundle);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a.b(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.ActivityCategoryPicker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */