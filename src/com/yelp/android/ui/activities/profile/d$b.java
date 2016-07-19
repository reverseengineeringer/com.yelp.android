package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;

class d$b
{
  private final ImageView a;
  private final TextView b;
  private final TextView c;
  private final TextView d;
  private final ImageView e;
  private final View f;
  private final ImageView g;
  private final TextView h;
  private final TextView i;
  private final View j;
  private final SpannedImageButton k;
  private final View l;
  
  private d$b(View paramView)
  {
    a = ((ImageView)paramView.findViewById(2131690217));
    b = ((TextView)paramView.findViewById(2131690218));
    c = ((TextView)paramView.findViewById(2131690216));
    d = ((TextView)paramView.findViewById(2131689846));
    e = ((ImageView)paramView.findViewById(2131690208));
    f = paramView.findViewById(2131690498);
    g = ((ImageView)paramView.findViewById(2131690533));
    h = ((TextView)paramView.findViewById(2131690636));
    i = ((TextView)paramView.findViewById(2131690797));
    j = paramView.findViewById(2131689741);
    k = ((SpannedImageButton)paramView.findViewById(2131690462));
    l = paramView.findViewById(2131689508);
  }
  
  private void a(Tip paramTip, Context paramContext, User paramUser, t paramt, d.c paramc)
  {
    a.setImageResource(2130838895);
    boolean bool = AppData.b().q().a(paramUser.i());
    TextView localTextView = b;
    if (bool)
    {
      paramUser = paramContext.getString(2131166202);
      localTextView.setText(paramUser);
      c.setText(StringUtils.a(paramContext, StringUtils.Format.LONG, paramTip.d()));
      h.setText(paramTip.e());
      d.setText(paramTip.o());
      paramt.a(paramTip.p()).a(e);
      if (paramTip.r() == null) {
        break label238;
      }
      paramt.a(paramTip.r().f()).a(g);
      g.setVisibility(0);
      label138:
      paramUser = f;
      if (!paramTip.m()) {
        break label250;
      }
    }
    label238:
    label250:
    for (int m = 0;; m = 8)
    {
      paramUser.setVisibility(m);
      i.setText(paramTip.a(paramContext));
      i.setOnClickListener(new d.b.1(this, paramTip));
      if (!bool) {
        break label257;
      }
      l.setVisibility(0);
      l.setOnClickListener(new d.b.2(this, paramTip));
      return;
      paramUser = paramContext.getString(2131166688, new Object[] { paramUser.a() });
      break;
      g.setVisibility(8);
      break label138;
    }
    label257:
    l.setVisibility(8);
    j.setOnClickListener(new d.b.3(this, paramTip));
    k.setChecked(paramTip.g().c());
    k.setOnClickListener(new d.b.4(this, paramc, paramTip));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */