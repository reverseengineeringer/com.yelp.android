package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.List;

class d$a
{
  private final ImageView a;
  private final TextView b;
  private final TextView c;
  private final TextView d;
  private final ImageView e;
  private final View f;
  private final View g;
  private final View h;
  private final ImageView i;
  private final TextView j;
  private final TextView k;
  
  private d$a(View paramView)
  {
    a = ((ImageView)paramView.findViewById(2131690217));
    b = ((TextView)paramView.findViewById(2131690218));
    c = ((TextView)paramView.findViewById(2131690216));
    d = ((TextView)paramView.findViewById(2131689684));
    e = ((ImageView)paramView.findViewById(2131690208));
    h = paramView.findViewById(2131689511);
    f = paramView.findViewById(2131690485);
    g = paramView.findViewById(2131690486);
    i = ((ImageView)paramView.findViewById(2131690530));
    j = ((TextView)paramView.findViewById(2131690774));
    k = ((TextView)paramView.findViewById(2131690636));
  }
  
  private void a(YelpBusinessReview paramYelpBusinessReview, User paramUser, Context paramContext, t paramt)
  {
    a.setImageResource(2130838805);
    TextView localTextView = b;
    if (AppData.b().q().a(paramUser.i()))
    {
      paramUser = paramContext.getString(2131166197);
      localTextView.setText(paramUser);
      c.setText(StringUtils.a(paramContext, StringUtils.Format.LONG, paramYelpBusinessReview.d()));
      paramt.a(paramYelpBusinessReview.L()).a(2130837691).a(e);
      if (!paramYelpBusinessReview.u()) {
        break label234;
      }
      f.setVisibility(8);
      h.setVisibility(8);
      g.setVisibility(0);
      label116:
      d.setText(paramYelpBusinessReview.M());
      k.setText(paramYelpBusinessReview.e());
      if (paramYelpBusinessReview.C() == -1) {
        break label319;
      }
      i.setVisibility(0);
      ar.a(i, paramYelpBusinessReview.C());
    }
    for (;;)
    {
      if (paramYelpBusinessReview.U().isEmpty()) {
        break label331;
      }
      j.setText(StringUtils.a(paramContext, 2131230751, paramYelpBusinessReview.U().size(), new String[0]));
      j.setVisibility(0);
      return;
      paramUser = paramContext.getString(2131166479, new Object[] { paramUser.Z() });
      break;
      label234:
      if (paramYelpBusinessReview.V() == null)
      {
        f.setVisibility(8);
        g.setVisibility(8);
        paramUser = h;
        if (paramYelpBusinessReview.D()) {}
        for (int m = 0;; m = 8)
        {
          paramUser.setVisibility(m);
          break;
        }
      }
      f.setVisibility(0);
      h.setVisibility(8);
      g.setVisibility(8);
      break label116;
      label319:
      i.setVisibility(8);
    }
    label331:
    j.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */