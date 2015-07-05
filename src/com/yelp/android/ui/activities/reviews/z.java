package com.yelp.android.ui.activities.reviews;

import android.text.TextUtils.TruncateAt;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.ak;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.RoundedWebImageView.RoundingMode;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.HashSet;
import java.util.Set;

public class z
  extends ak
{
  private final Set<Integer> a = new HashSet();
  
  private void a(ab paramab)
  {
    e.setMaxLines(6);
    e.setEllipsize(TextUtils.TruncateAt.END);
  }
  
  private void b(ab paramab)
  {
    e.setMaxLines(Integer.MAX_VALUE);
    e.setEllipsize(null);
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903276, paramViewGroup, false);
      localView.setTag(new ab(localView));
    }
    paramView = (ab)localView.getTag();
    paramViewGroup = a(paramInt);
    c.setText(paramViewGroup.getUserName());
    d.setForceMode(RoundedWebImageView.RoundingMode.DEFAULT);
    d.setImageUrl(paramViewGroup.getUserPhotoUrl(), 2130837660);
    e.setText(paramViewGroup.getText());
    Integer localInteger = Integer.valueOf(paramInt);
    if (a.contains(localInteger)) {
      b(paramView);
    }
    for (;;)
    {
      e.setOnClickListener(new aa(this, localInteger, paramView));
      b.setText(StringUtils.a(localView.getContext(), StringUtils.Format.LONG, paramViewGroup.getDateModified()));
      cp.a(a, a(paramInt).getRating());
      return localView;
      a(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */