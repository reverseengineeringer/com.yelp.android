package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.activities.photoviewer.TipMediaViewer;

class TipComplimentsLikes$2
  implements View.OnClickListener
{
  TipComplimentsLikes$2(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onClick(View paramView)
  {
    paramView = TipMediaViewer.a(a, TipComplimentsLikes.a(a).r());
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.TipComplimentsLikes.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */