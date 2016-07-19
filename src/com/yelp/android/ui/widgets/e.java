package com.yelp.android.ui.widgets;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import android.widget.ListView;

public class e
{
  private Rect a;
  private int b;
  private View c;
  private ImageView d;
  private ListView e;
  private final AbsListView.OnScrollListener f = new e.1(this);
  
  public e(ListView paramListView, int paramInt)
  {
    e = paramListView;
    a = new Rect();
    c = LayoutInflater.from(paramListView.getContext()).inflate(2130903272, e, false);
    paramListView = (ViewStub)c.findViewById(2131690331);
    paramListView.setLayoutResource(paramInt);
    paramListView.inflate();
    e.addHeaderView(c);
    d = ((ImageView)c.findViewById(2131689747));
    e.setOnScrollListener(f);
  }
  
  public View a()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */