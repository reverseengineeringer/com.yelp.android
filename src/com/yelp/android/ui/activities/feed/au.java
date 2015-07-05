package com.yelp.android.ui.activities.feed;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.ui.widgets.WebImageView;

public class au
  extends c
{
  public TextView k;
  public RelativeLayout l;
  public TextView m;
  public RelativeLayout n;
  public ViewStub o;
  public ViewStub p;
  
  public au(FeedType paramFeedType, View paramView)
  {
    super(paramFeedType, paramView);
    a = ((WebImageView)paramView.findViewById(2131493703));
    b = ((ImageView)paramView.findViewById(2131493705));
    c = ((TextView)paramView.findViewById(2131493706));
    d = ((TextView)paramView.findViewById(2131493677));
    e = ((TextView)paramView.findViewById(2131493709));
    k = ((TextView)paramView.findViewById(2131493615));
    l = null;
    m = null;
    n = null;
    o = ((ViewStub)paramView.findViewById(2131493854));
    p = ((ViewStub)paramView.findViewById(2131493856));
    g = new SparseArray();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */