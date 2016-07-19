package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.yelp.android.serializable.MessageTheBusiness;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import java.util.HashSet;
import java.util.Set;

public class b
  extends BusinessAdapter<YelpBusiness>
{
  private HashSet<String> c;
  
  public b(Context paramContext, Set<String> paramSet)
  {
    super(paramContext);
    c = new HashSet(paramSet);
    a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.RATING });
  }
  
  private void a(View paramView, int paramInt)
  {
    paramView = (CheckBox)paramView.findViewById(2131689653);
    String str = a(paramInt).aD();
    paramView.setOnCheckedChangeListener(new b.1(this, str));
    paramView.setChecked(c.contains(str));
  }
  
  private void a(View paramView, YelpBusiness paramYelpBusiness)
  {
    paramView = (TextView)paramView.findViewById(2131690590);
    paramYelpBusiness = paramYelpBusiness.aK();
    if ((paramYelpBusiness != null) && (paramYelpBusiness.c() != null))
    {
      paramView.setText(Html.fromHtml(paramYelpBusiness.c()));
      paramView.setVisibility(0);
    }
  }
  
  public void b()
  {
    c.clear();
    int i = 0;
    while (i < getCount())
    {
      c.add(a(i).aD());
      i += 1;
    }
    notifyDataSetChanged();
  }
  
  public Set<String> c()
  {
    return c;
  }
  
  protected int d()
  {
    return 2130903286;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    a(paramView, (YelpBusiness)getItem(paramInt));
    a(paramView, paramInt);
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */