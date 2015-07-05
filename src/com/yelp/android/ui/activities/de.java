package com.yelp.android.ui.activities;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.PhotoFeedback;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;

class de
  extends au<PhotoFeedback>
{
  private final View.OnClickListener b = new df(this);
  
  private de(ActivityPhotoFeedbackAlerts paramActivityPhotoFeedbackAlerts) {}
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if ((paramView.getTag() instanceof dg)) {}
    }
    else
    {
      localView = LayoutInflater.from(localContext).inflate(2130903342, paramViewGroup, false);
      localView.setTag(new dg(this, localView));
    }
    paramView = (dg)localView.getTag();
    paramViewGroup = (PhotoFeedback)getItem(paramInt);
    b.setImageUrl(paramViewGroup.getUserPhotoUrl());
    c.setTag(paramViewGroup.getPhoto());
    c.setImageUrl(paramViewGroup.getPhoto().getThumbnailUrl());
    c.setOnClickListener(b);
    a.setText(Html.fromHtml(localContext.getString(2131166871, new Object[] { paramViewGroup.getUserName(), paramViewGroup.getCondensedBusiness().getDisplayName() })));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */