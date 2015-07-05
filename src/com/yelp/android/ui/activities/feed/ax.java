package com.yelp.android.ui.activities.feed;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.BizPhotoFeedEntry;

class ax
  implements View.OnClickListener
{
  ax(aw paramaw, BizPhotoFeedEntry paramBizPhotoFeedEntry, int paramInt) {}
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putParcelableArrayListExtra("photos", a.mPhotos);
    localIntent.putExtra("subindex", ((Integer)paramView.getTag()).intValue());
    localIntent.putExtra("entryindex", b);
    aw.a(c).a(a.mPhotos, ((Integer)paramView.getTag()).intValue(), b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */