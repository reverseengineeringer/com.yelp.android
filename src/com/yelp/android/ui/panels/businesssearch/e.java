package com.yelp.android.ui.panels.businesssearch;

import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.ui.widgets.CompassIndicator;
import com.yelp.android.ui.widgets.RoundedImageView;
import java.util.ArrayList;

final class e
{
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
  
  public e(View paramView)
  {
    a = ((TextView)paramView.findViewById(2131493756));
    b = ((TextView)paramView.findViewById(2131493757));
    f = ((TextView)paramView.findViewById(2131493752));
    k = ((CompassIndicator)paramView.findViewById(2131493753));
    m = ((ViewStub)paramView.findViewById(2131493762));
    c = ((RoundedImageView)paramView.findViewById(2131493749));
    j = ((ViewStub)paramView.findViewById(2131493764));
    ArrayList localArrayList = s;
    Object localObject = (TextView)paramView.findViewById(2131493758);
    d = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131493754);
    e = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131493759);
    i = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131493760);
    g = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131493761);
    h = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (TextView)paramView.findViewById(2131493755);
    l = ((TextView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = (ImageView)paramView.findViewById(2131493751);
    r = ((ImageView)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    localObject = paramView.findViewById(2131493050);
    u = ((View)localObject);
    localArrayList.add(localObject);
    localArrayList = s;
    paramView = (ImageView)paramView.findViewById(2131493766);
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
      o = ((RoundedImageView)n.findViewById(2131493938));
      p = ((TextView)n.findViewById(2131493939));
      q = ((TextView)n.findViewById(2131493940));
      ((RelativeLayout.LayoutParams)j.getLayoutParams()).addRule(3, n.getId());
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */