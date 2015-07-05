package com.yelp.android.ba;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.Photo;

class b
  implements View.OnClickListener
{
  b(a parama, View.OnClickListener paramOnClickListener, Context paramContext, BizPhotoFeedEntry paramBizPhotoFeedEntry, Photo paramPhoto) {}
  
  public void onClick(View paramView)
  {
    a.a(e, a, paramView, b, c, d.getBusinessId(), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */