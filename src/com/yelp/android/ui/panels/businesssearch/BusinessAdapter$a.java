package com.yelp.android.ui.panels.businesssearch;

import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.ui.widgets.CompassIndicator;
import com.yelp.android.ui.widgets.RoundedImageView;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;

final class BusinessAdapter$a
{
  TextView A;
  TextView B;
  TextView C;
  TextView D;
  TextView a;
  TextView b;
  RoundedImageView c;
  TextView d;
  TextView e;
  TextView f;
  TextView g;
  TextView h;
  TextView i;
  ViewStub j;
  CompassIndicator k;
  TextView l;
  ViewStub m;
  RelativeLayout n;
  RoundedImageView o;
  TextView p;
  TextView q;
  ImageView r;
  ArrayList<View> s = new ArrayList(10);
  ImageView t;
  View u;
  LinearLayout v;
  ViewStub w;
  WebImageView x;
  TextView y;
  TextView z;
  
  public BusinessAdapter$a(View paramView)
  {
    a = ((TextView)paramView.findViewById(2131690586));
    b = ((TextView)paramView.findViewById(2131690587));
    f = ((TextView)paramView.findViewById(2131690582));
    k = ((CompassIndicator)paramView.findViewById(2131690583));
    m = ((ViewStub)paramView.findViewById(2131690592));
    c = ((RoundedImageView)paramView.findViewById(2131690579));
    j = ((ViewStub)paramView.findViewById(2131690594));
    w = ((ViewStub)paramView.findViewById(2131690595));
    ArrayList localArrayList = s;
    Object localObject = (TextView)paramView.findViewById(2131690588);
    d = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131690584);
    e = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131690589);
    i = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131690590);
    g = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131690591);
    h = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131690585);
    l = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (ImageView)paramView.findViewById(2131690581);
    r = ((ImageView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = paramView.findViewById(2131689719);
    u = ((View)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    paramView = (ImageView)paramView.findViewById(2131690441);
    t = paramView;
    localArrayList.add(paramView);
  }
  
  public void a()
  {
    int i2 = s.size();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = (View)s.get(i1);
      if (localView != null) {
        localView.setVisibility(8);
      }
      i1 += 1;
    }
  }
  
  public View b()
  {
    if (n == null)
    {
      n = ((RelativeLayout)m.inflate());
      o = ((RoundedImageView)n.findViewById(2131690778));
      p = ((TextView)n.findViewById(2131690779));
      q = ((TextView)n.findViewById(2131690780));
    }
    return n;
  }
  
  public View c()
  {
    if (v == null)
    {
      v = ((LinearLayout)w.inflate());
      x = ((WebImageView)v.findViewById(2131690074));
      y = ((TextView)v.findViewById(2131690076));
      z = ((TextView)v.findViewById(2131690064));
      A = ((TextView)v.findViewById(2131690746));
      B = ((TextView)v.findViewById(2131690747));
      C = ((TextView)v.findViewById(2131690556));
      D = ((TextView)v.findViewById(2131690564));
    }
    return v;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.BusinessAdapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */