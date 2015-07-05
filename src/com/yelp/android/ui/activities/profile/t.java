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
import com.yelp.android.ui.activities.friendcheckins.r;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;

public final class t
  extends au<YelpCheckIn>
{
  private final User a;
  private final r b;
  private final r c;
  private final r d;
  
  public t(User paramUser, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, PendingIntent paramPendingIntent3)
  {
    a = paramUser;
    b = new r(paramPendingIntent1, "key.data", "key.checked");
    c = new r(paramPendingIntent2, "key.data", "key.checked");
    d = new r(paramPendingIntent3, "key.data", "key.checked");
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
      localView = LayoutInflater.from(localContext).inflate(2130903333, paramViewGroup, false);
      localView.setTag(new u(this, localView));
    }
    paramView = (YelpCheckIn)getItem(paramInt);
    if (a != null) {
      paramView.updateUser(a);
    }
    paramViewGroup = (u)localView.getTag();
    c.setText(paramView.getBusinessName());
    d.setText(StringUtils.a(localContext, 2131623942, paramView.getTotalCount(), new String[0]));
    d.setCompoundDrawablesWithIntrinsicBounds(paramView.getLocationRankTitle().getRankIcon(), 0, 0, 0);
    Object localObject = SpannableString.valueOf(paramView.getCommentCountLikeCountText(localContext));
    ((SpannableString)localObject).setSpan(new StyleSpan(1), 0, ((SpannableString)localObject).length(), 18);
    g.setText((CharSequence)localObject, TextView.BufferType.SPANNABLE);
    paramInt = paramView.getBusiness().getReviewCount();
    localObject = localContext.getResources().getQuantityString(2131623970, paramInt, new Object[] { Integer.valueOf(paramInt) });
    h.setText((CharSequence)localObject);
    cp.a(h, paramView.getBusiness().getAvgRating());
    i.setText(StringUtils.a(localContext, StringUtils.Format.LONG, paramView.getDateCreated()));
    j.setImageUrl(paramView.getBusiness().getPhotoUrl(), 2130837648);
    a.setOnCheckedChangeListener(null);
    a.setChecked(paramView.getFeedback().isLikedByUser());
    a.setOnCheckedChangeListener(b);
    a.setTag(paramView);
    b.setOnClickListener(c);
    b.setTag(paramView);
    g.setOnClickListener(d);
    g.setTag(paramView);
    if (paramView.getPrimaryComment() != null)
    {
      e.setText(paramView.getPrimaryComment().getText());
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
 * Qualified Name:     com.yelp.android.ui.activities.profile.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */