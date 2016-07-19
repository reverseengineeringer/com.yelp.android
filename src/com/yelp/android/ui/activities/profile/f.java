package com.yelp.android.ui.activities.profile;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.friendcheckins.c;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;

public final class f
  extends w<YelpCheckIn>
{
  private final User a;
  private final c b;
  private final c c;
  private final c d;
  
  public f(User paramUser, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, PendingIntent paramPendingIntent3)
  {
    a = paramUser;
    b = new c(paramPendingIntent1, "key.data", "key.checked");
    c = new c(paramPendingIntent2, "key.data", "key.checked");
    d = new c(paramPendingIntent3, "key.data", "key.checked");
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("list", new ArrayList(a()));
  }
  
  public void b(Bundle paramBundle)
  {
    if (paramBundle != null) {
      a(paramBundle.getParcelableArrayList("list"));
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(localContext).inflate(2130903432, paramViewGroup, false);
      localView.setTag(new f.a(this, localView));
    }
    paramView = (YelpCheckIn)getItem(paramInt);
    if (a != null) {
      paramView.a(a);
    }
    paramViewGroup = (f.a)localView.getTag();
    c.setText(paramView.m());
    d.setText(StringUtils.a(localContext, 2131230726, paramView.w(), new String[0]));
    d.setCompoundDrawablesWithIntrinsicBounds(paramView.l().getRankIcon(), 0, 0, 0);
    Object localObject = SpannableString.valueOf(paramView.b(localContext));
    ((SpannableString)localObject).setSpan(new StyleSpan(1), 0, ((SpannableString)localObject).length(), 18);
    g.setText((CharSequence)localObject, TextView.BufferType.SPANNABLE);
    paramInt = paramView.d().N();
    localObject = localContext.getResources().getQuantityString(2131230757, paramInt, new Object[] { Integer.valueOf(paramInt) });
    h.setText((CharSequence)localObject);
    ar.a(h, paramView.d().P());
    i.setText(StringUtils.a(localContext, StringUtils.Format.LONG, paramView.e()));
    j.setImageUrl(paramView.d().au(), 2130837691);
    a.setOnCheckedChangeListener(null);
    a.setChecked(paramView.n().c());
    a.setOnCheckedChangeListener(b);
    a.setTag(paramView);
    b.setOnClickListener(c);
    b.setTag(paramView);
    g.setOnClickListener(d);
    g.setTag(paramView);
    if (paramView.A() != null)
    {
      e.setText(paramView.A().c());
      e.setVisibility(0);
      f.setVisibility(0);
      ((RelativeLayout.LayoutParams)g.getLayoutParams()).addRule(3, e.getId());
      return localView;
    }
    e.setVisibility(8);
    f.setVisibility(8);
    ((RelativeLayout.LayoutParams)g.getLayoutParams()).addRule(3, d.getId());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */