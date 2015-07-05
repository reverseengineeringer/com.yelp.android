package com.yelp.android.ui.activities.friendcheckins;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.ui.widgets.WebImageView;

public final class b
{
  public final WebImageView a;
  public final TextView b;
  public final TextView c;
  public final TextView d;
  public final TextView e;
  public final TextView f;
  public final TextView g;
  public final TextView h;
  public final TextView i;
  public final ImageView j;
  public final TextView k;
  public final SpannedImageButton l;
  public final View m;
  
  public b(int paramInt, View paramView)
  {
    b = ((TextView)paramView.findViewById(2131493677));
    a = ((WebImageView)paramView.findViewById(2131493770));
    c = ((TextView)paramView.findViewById(2131493771));
    d = ((TextView)paramView.findViewById(2131493774));
    e = ((TextView)paramView.findViewById(2131493773));
    f = ((TextView)paramView.findViewById(2131493772));
    g = ((TextView)paramView.findViewById(2131493853));
    h = ((TextView)paramView.findViewById(2131493776));
    i = ((TextView)paramView.findViewById(2131493777));
    j = ((ImageView)paramView.findViewById(2131493775));
    k = ((TextView)paramView.findViewById(2131493778));
    l = ((SpannedImageButton)paramView.findViewById(2131493689));
    m = paramView.findViewById(2131493779);
    a(paramInt);
  }
  
  void a(int paramInt)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if ((paramInt == 4) || (paramInt == 2))
    {
      localLayoutParams = (RelativeLayout.LayoutParams)k.getLayoutParams();
      localLayoutParams.addRule(3, i.getId());
      k.setLayoutParams(localLayoutParams);
      i.setVisibility(0);
      j.setVisibility(0);
    }
    if ((paramInt == 1) || (paramInt == 2))
    {
      h.setVisibility(8);
      localLayoutParams = (RelativeLayout.LayoutParams)k.getLayoutParams();
      localLayoutParams.addRule(3, b.getId());
      if (paramInt == 2) {
        localLayoutParams.addRule(3, i.getId());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */