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
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.HashSet;
import java.util.List;

public class a
  extends au<RichSearchSuggestion>
{
  private final HashSet<CharSequence> a = new HashSet();
  
  public a(List<CharSequence> paramList)
  {
    a.addAll(paramList);
  }
  
  private void a(View paramView, b paramb, RichSearchSuggestion paramRichSearchSuggestion)
  {
    int i = WebImageView.getResourceForName(paramView.getContext(), paramRichSearchSuggestion.getImagePath());
    if (i != 0)
    {
      b.b(paramb).setImageResource(i);
      return;
    }
    b.b(paramb).setImageUrl(paramRichSearchSuggestion.getImageUrl());
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((RichSearchSuggestion)getItem(paramInt)).getRichSearchSuggestionType().ordinal();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    RichSearchSuggestion localRichSearchSuggestion = (RichSearchSuggestion)getItem(paramInt);
    RichSearchSuggestion.RichSearchSuggestionType localRichSearchSuggestionType = localRichSearchSuggestion.getRichSearchSuggestionType();
    if (paramView == null) {
      if ((getItemViewType(paramInt) == RichSearchSuggestion.RichSearchSuggestionType.BUSINESS.ordinal()) || (getItemViewType(paramInt) == RichSearchSuggestion.RichSearchSuggestionType.CHAIN.ordinal()))
      {
        paramInt = 1;
        paramView = LayoutInflater.from(paramViewGroup.getContext());
        if (paramInt == 0) {
          break label222;
        }
        paramInt = 2130903366;
        label66:
        paramView = paramView.inflate(paramInt, paramViewGroup, false);
        paramViewGroup = new b(paramView);
        paramView.setTag(paramViewGroup);
        label88:
        if ((localRichSearchSuggestion.getBusiness() == null) || (localRichSearchSuggestion.getBusiness().getPrimaryPhoto() == null)) {
          break label358;
        }
      }
    }
    label222:
    label358:
    for (String str = localRichSearchSuggestion.getBusiness().getPrimaryPhoto().getThumbnailUrl();; str = null)
    {
      if (localRichSearchSuggestionType == RichSearchSuggestion.RichSearchSuggestionType.BUSINESS)
      {
        b.a(paramViewGroup).setText(localRichSearchSuggestion.getBusiness().getAddressForBusinessSearchResult());
        b.b(paramViewGroup).setImageUrl(str, 2130837648);
        b.c(paramViewGroup).setText(localRichSearchSuggestion.getBusiness().getName());
      }
      for (;;)
      {
        if ((a.contains(localRichSearchSuggestion.getTerm())) && (localRichSearchSuggestionType != RichSearchSuggestion.RichSearchSuggestionType.BUSINESS))
        {
          b.d(paramViewGroup).setVisibility(0);
          b.d(paramViewGroup).setText(AppData.b().getString(2131166395));
          return paramView;
          paramInt = 0;
          break;
          paramInt = 2130903367;
          break label66;
          paramViewGroup = (b)paramView.getTag();
          break label88;
          if (localRichSearchSuggestionType == RichSearchSuggestion.RichSearchSuggestionType.CHAIN)
          {
            b.a(paramViewGroup).setText(localRichSearchSuggestion.getDescription());
            b.b(paramViewGroup).setImageUrl(str, 2130837648);
            b.c(paramViewGroup).setText(localRichSearchSuggestion.getTerm());
          }
          else
          {
            if (!TextUtils.isEmpty(localRichSearchSuggestion.getImagePath()))
            {
              b.b(paramViewGroup).setVisibility(0);
              a(paramView, paramViewGroup, localRichSearchSuggestion);
            }
            for (;;)
            {
              b.c(paramViewGroup).setText(localRichSearchSuggestion.getStyledTerm());
              break;
              b.b(paramViewGroup).setVisibility(8);
            }
          }
        }
      }
      b.d(paramViewGroup).setVisibility(8);
      b.d(paramViewGroup).setText(null);
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