package com.yelp.android.ui.activities.feed;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;

public class aw
  extends b<BizPhotoFeedEntry>
{
  private final ay a;
  
  public aw(ay paramay)
  {
    a = paramay;
  }
  
  public View a(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    BizPhotoFeedEntry localBizPhotoFeedEntry = (BizPhotoFeedEntry)paramFeedEntry;
    if (paramView != null)
    {
      paramFeedEntry = paramView;
      if ((paramView.getTag() instanceof az)) {}
    }
    else
    {
      paramFeedEntry = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903317, paramViewGroup, false);
      paramFeedEntry.setTag(new az(paramFeedType, paramFeedEntry));
    }
    paramFeedType = (az)paramFeedEntry.getTag();
    paramView = new WebImageView[3];
    paramView[0] = a;
    paramView[1] = b;
    paramView[2] = c;
    int j = paramView.length;
    int i = 0;
    while (i < j)
    {
      paramView[i].setOnClickListener(new ax(this, localBizPhotoFeedEntry, paramInt));
      i += 1;
    }
    paramFeedType.a(paramViewGroup.getContext(), paramInt, localBizPhotoFeedEntry);
    i = mPhotos.size();
    paramInt = 0;
    if (paramInt < 3)
    {
      if (paramInt < i)
      {
        paramView[paramInt].reset();
        paramView[paramInt].setVisibility(0);
        paramView[paramInt].setImageUrl(((Photo)mPhotos.get(paramInt)).getThumbnailUrl(), 2130838219);
        paramView[paramInt].setTag(Integer.valueOf(paramInt));
      }
      for (;;)
      {
        paramInt += 1;
        break;
        paramView[paramInt].setVisibility(8);
      }
    }
    return paramFeedEntry;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */