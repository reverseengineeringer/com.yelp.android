package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import java.util.ArrayList;

class df
  implements View.OnClickListener
{
  df(de paramde) {}
  
  public void onClick(View paramView)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add((Photo)paramView.getTag());
    paramView = ActivityMediaViewer.a(a.a, localArrayList, 0);
    a.a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */