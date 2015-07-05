package com.yelp.android.ui.activities.mutatebiz;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.Category;
import java.util.List;

public class PickCategory
  extends com.yelp.android.ui.activities.PickCategory
{
  public static Intent a(Context paramContext, Category paramCategory, List<Category> paramList)
  {
    paramCategory = com.yelp.android.ui.activities.PickCategory.a(paramContext, paramCategory, paramList, false, false);
    paramCategory.setComponent(new ComponentName(paramContext, PickCategory.class));
    return paramCategory;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessSelectCategory;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.PickCategory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */