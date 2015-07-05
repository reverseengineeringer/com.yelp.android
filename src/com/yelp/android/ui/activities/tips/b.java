package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.activities.photoviewer.TipPhotoViewer;

class b
  implements View.OnClickListener
{
  b(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onClick(View paramView)
  {
    paramView = TipPhotoViewer.a(a, TipComplimentsLikes.a(a).getPhoto());
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */