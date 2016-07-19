package com.yelp.android.cg;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.util.StringUtils;

public class c
  extends f
{
  private final TextView a;
  private final ImageView b;
  private final TextView c;
  private final ToggleButton d;
  
  public c(View paramView, boolean paramBoolean)
  {
    super(paramView);
    a = ((TextView)paramView.findViewById(2131689684));
    b = ((ImageView)paramView.findViewById(2131689816));
    c = ((TextView)paramView.findViewById(2131690447));
    d = ((ToggleButton)paramView.findViewById(2131690441));
    paramView = d;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      paramView.setVisibility(i);
      return;
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    d.setOnClickListener(paramOnClickListener);
  }
  
  public void a(YelpBusiness paramYelpBusiness, Context paramContext)
  {
    a.setText(paramYelpBusiness.z());
    t.a(paramContext).a(paramYelpBusiness.au()).a(2130837691).a(b);
    c.setText(StringUtils.a(paramContext, 2131230757, paramYelpBusiness.N()));
    ar.a(c, paramYelpBusiness.P());
    d.setChecked(paramYelpBusiness.U());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cg.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */