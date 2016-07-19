package com.yelp.android.ui.activities.search;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.HashSet;
import java.util.List;

public class a
  extends w<RichSearchSuggestion>
{
  private final HashSet<CharSequence> a = new HashSet();
  
  public a(List<CharSequence> paramList)
  {
    a.addAll(paramList);
  }
  
  private void a(View paramView, a.a parama, RichSearchSuggestion paramRichSearchSuggestion)
  {
    int i = ar.a(paramView.getContext(), paramRichSearchSuggestion.k());
    if (i != 0)
    {
      a.a.b(parama).setImageResource(i);
      return;
    }
    a.a.b(parama).setImageUrl(paramRichSearchSuggestion.j());
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((RichSearchSuggestion)getItem(paramInt)).a().ordinal();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    RichSearchSuggestion localRichSearchSuggestion = (RichSearchSuggestion)getItem(paramInt);
    RichSearchSuggestion.RichSearchSuggestionType localRichSearchSuggestionType = localRichSearchSuggestion.a();
    if (paramView == null) {
      if ((getItemViewType(paramInt) == RichSearchSuggestion.RichSearchSuggestionType.BUSINESS.ordinal()) || (getItemViewType(paramInt) == RichSearchSuggestion.RichSearchSuggestionType.CHAIN.ordinal()))
      {
        paramInt = 1;
        paramView = LayoutInflater.from(paramViewGroup.getContext());
        if (paramInt == 0) {
          break label222;
        }
        paramInt = 2130903465;
        label66:
        paramView = paramView.inflate(paramInt, paramViewGroup, false);
        paramViewGroup = new a.a(paramView);
        paramView.setTag(paramViewGroup);
        label88:
        if ((localRichSearchSuggestion.g() == null) || (localRichSearchSuggestion.g().aI() == null)) {
          break label358;
        }
      }
    }
    label222:
    label358:
    for (String str = localRichSearchSuggestion.g().aI().f();; str = null)
    {
      if (localRichSearchSuggestionType == RichSearchSuggestion.RichSearchSuggestionType.BUSINESS)
      {
        a.a.a(paramViewGroup).setText(localRichSearchSuggestion.g().h());
        a.a.b(paramViewGroup).setImageUrl(str, 2130837691);
        a.a.c(paramViewGroup).setText(localRichSearchSuggestion.g().aq());
      }
      for (;;)
      {
        if ((a.contains(localRichSearchSuggestion.m())) && (localRichSearchSuggestionType != RichSearchSuggestion.RichSearchSuggestionType.BUSINESS))
        {
          a.a.d(paramViewGroup).setVisibility(0);
          a.a.d(paramViewGroup).setText(AppData.b().getString(2131166422));
          return paramView;
          paramInt = 0;
          break;
          paramInt = 2130903466;
          break label66;
          paramViewGroup = (a.a)paramView.getTag();
          break label88;
          if (localRichSearchSuggestionType == RichSearchSuggestion.RichSearchSuggestionType.CHAIN)
          {
            a.a.a(paramViewGroup).setText(localRichSearchSuggestion.l());
            a.a.b(paramViewGroup).setImageUrl(str, 2130837691);
            a.a.c(paramViewGroup).setText(localRichSearchSuggestion.m());
          }
          else
          {
            if (!TextUtils.isEmpty(localRichSearchSuggestion.k()))
            {
              a.a.b(paramViewGroup).setVisibility(0);
              a(paramView, paramViewGroup, localRichSearchSuggestion);
            }
            for (;;)
            {
              a.a.c(paramViewGroup).setText(localRichSearchSuggestion.d());
              break;
              a.a.b(paramViewGroup).setVisibility(8);
            }
          }
        }
      }
      a.a.d(paramViewGroup).setVisibility(8);
      a.a.d(paramViewGroup).setText(null);
      return paramView;
    }
  }
  
  public int getViewTypeCount()
  {
    return RichSearchSuggestion.RichSearchSuggestionType.values().length;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */