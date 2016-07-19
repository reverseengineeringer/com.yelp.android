package com.yelp.android.ui.activities.categorypicker;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.co.a.f;
import com.yelp.android.co.a.h;
import com.yelp.android.serializable.CategorySuggestion;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.w;

public class a<Suggest extends CategorySuggestion>
  extends w<Suggest>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    CategorySuggestion localCategorySuggestion = (CategorySuggestion)getItem(paramInt);
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(a.h.business_category_suggest_panel, paramViewGroup, false);
      paramViewGroup = new a(paramView, null);
      paramView.setTag(paramViewGroup);
    }
    String str2;
    String str3;
    for (;;)
    {
      String str1 = localCategorySuggestion.d();
      str2 = localCategorySuggestion.e();
      str3 = e.a(str2, str1);
      if ((!localCategorySuggestion.b()) && (!localCategorySuggestion.c())) {
        break;
      }
      a.a(paramViewGroup).setText(ar.a(str1, str3));
      return paramView;
      paramViewGroup = (a)paramView.getTag();
    }
    if ((!TextUtils.isEmpty(str2)) && (localCategorySuggestion.a()))
    {
      a.a(paramViewGroup).setText(ar.a(str2, str3));
      return paramView;
    }
    a.a(paramViewGroup).setText(str3);
    return paramView;
  }
  
  private static class a
  {
    private final TextView a;
    
    private a(View paramView)
    {
      a = ((TextView)paramView.findViewById(a.f.business_category_suggest));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */