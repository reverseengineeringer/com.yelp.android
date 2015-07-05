package com.yelp.android.ui.activities.nearby;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.RemoteImageExceptionCallback;

public class ag
  extends au<RichSearchSuggestion>
{
  private View a(ViewGroup paramViewGroup)
  {
    paramViewGroup = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903335, paramViewGroup, false);
    paramViewGroup.setTag(new ah(paramViewGroup));
    return paramViewGroup;
  }
  
  private void a(View paramView, int paramInt)
  {
    RichSearchSuggestion localRichSearchSuggestion = (RichSearchSuggestion)getItem(paramInt);
    ah localah = (ah)paramView.getTag();
    if (TextUtils.isEmpty(localRichSearchSuggestion.getImagePath())) {
      b.setVisibility(8);
    }
    for (;;)
    {
      a.setText(localRichSearchSuggestion.getTerm());
      return;
      b.setVisibility(0);
      a(paramView, localah, localRichSearchSuggestion);
    }
  }
  
  private void a(View paramView, ah paramah, RichSearchSuggestion paramRichSearchSuggestion)
  {
    int i = WebImageView.getResourceForName(paramView.getContext(), paramRichSearchSuggestion.getImagePath());
    if (i == 0)
    {
      h.c(AppData.b()).a(paramRichSearchSuggestion.getImageUrl()).a(RemoteImageExceptionCallback.INSTANCE);
      return;
    }
    b.setImageResource(i);
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((RichSearchSuggestion)getItem(paramInt)).getRichSearchSuggestionType().ordinal();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramViewGroup);
    }
    a(localView, paramInt);
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return RichSearchSuggestion.RichSearchSuggestionType.values().length;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */