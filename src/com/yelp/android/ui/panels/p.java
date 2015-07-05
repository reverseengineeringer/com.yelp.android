package com.yelp.android.ui.panels;

import android.content.res.Resources;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.BusinessCategorySuggest;
import com.yelp.android.ui.activities.categorypicker.f;
import com.yelp.android.ui.util.au;

public class p
  extends au<BusinessCategorySuggest>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = (BusinessCategorySuggest)getItem(paramInt);
    View localView;
    r localr;
    Resources localResources;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903130, paramViewGroup, false);
      localr = new r(localView, null);
      localView.setTag(localr);
      paramView = ((BusinessCategorySuggest)localObject).getTitle();
      paramViewGroup = ((BusinessCategorySuggest)localObject).getParentTitle();
      localResources = AppData.b().getResources();
      if ((!((BusinessCategorySuggest)localObject).getTitleMatch()) && (!((BusinessCategorySuggest)localObject).getExactMatch())) {
        break label145;
      }
      localObject = Html.fromHtml(localResources.getString(2131166616, new Object[] { ((BusinessCategorySuggest)localObject).getTitle() }));
      paramView = paramViewGroup;
      paramViewGroup = (ViewGroup)localObject;
    }
    for (;;)
    {
      r.a(localr).setText(f.a(paramViewGroup, paramView));
      return localView;
      localr = (r)paramView.getTag();
      localView = paramView;
      break;
      label145:
      if ((!TextUtils.isEmpty(paramViewGroup)) && (((BusinessCategorySuggest)localObject).getParentTitleMatch()))
      {
        localObject = Html.fromHtml(localResources.getString(2131166616, new Object[] { paramViewGroup }));
        paramViewGroup = paramView;
        paramView = (View)localObject;
      }
      else
      {
        localObject = paramView;
        paramView = paramViewGroup;
        paramViewGroup = (ViewGroup)localObject;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */