package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.Layout;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AbsListView.LayoutParams;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.RoundedWebImageView.RoundingMode;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import com.yelp.android.util.YelpLog;
import java.util.Date;
import java.util.List;

public class ak
  extends au<YelpBusinessReview>
{
  private YelpException a;
  private boolean b = false;
  
  private void b(am paramam)
  {
    n.setVisibility(0);
    o.setVisibility(8);
    if (n.getLayout() != null)
    {
      c(paramam);
      return;
    }
    n.getViewTreeObserver().addOnGlobalLayoutListener(new al(this, paramam));
  }
  
  private boolean b(int paramInt)
  {
    return (a != null) && (paramInt >= super.getCount());
  }
  
  private static void c(am paramam)
  {
    Layout localLayout = n.getLayout();
    if ((localLayout == null) || (localLayout.getLineCount() < 1) || (localLayout.getEllipsisCount(0) == 0)) {
      return;
    }
    n.setVisibility(8);
    o.setVisibility(0);
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int j = 8;
    int k = 0;
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903274, paramViewGroup, false);
      localView.setTag(new am(localView, false));
    }
    am localam = (am)localView.getTag();
    YelpBusinessReview localYelpBusinessReview = a(paramInt);
    Resources localResources = localView.getContext().getResources();
    paramView = b;
    int i;
    if (localYelpBusinessReview.isFirstReview())
    {
      i = 0;
      paramView.setVisibility(i);
      j.setText(localYelpBusinessReview.getUserName());
      if (!localYelpBusinessReview.isUserElite()) {
        break label691;
      }
      k.setVisibility(0);
      k.setText(DateFormat.format(localResources.getString(2131165744), new Date()));
      label150:
      paramViewGroup = localResources.getQuantityString(2131623952, localYelpBusinessReview.getUserFriendCount(), new Object[] { Integer.valueOf(localYelpBusinessReview.getUserFriendCount()) });
      TextView localTextView = l;
      if (!a) {
        break label703;
      }
      paramView = paramViewGroup;
      label195:
      localTextView.setText(paramView);
      l.setContentDescription(paramViewGroup);
      paramViewGroup = localResources.getQuantityString(2131623970, localYelpBusinessReview.getUserReviewCount(), new Object[] { Integer.valueOf(localYelpBusinessReview.getUserReviewCount()) });
      localTextView = m;
      if (!a) {
        break label715;
      }
      paramView = paramViewGroup;
      label255:
      localTextView.setText(paramView);
      m.setContentDescription(paramViewGroup);
      paramView = Passport.getMediaQuantityString(a, localYelpBusinessReview, localResources);
      n.setText(paramView);
      n.setContentDescription(paramView);
      if (a)
      {
        o.setText(paramView);
        o.setContentDescription(paramView);
        b(localam);
      }
      paramViewGroup = i;
      if (!a) {
        break label727;
      }
      paramView = RoundedWebImageView.RoundingMode.CLIP;
      label351:
      paramViewGroup.setForceMode(paramView);
      if (localYelpBusinessReview.getUserCheckInCount() <= 0) {
        break label765;
      }
      if ((h == null) || (localYelpBusinessReview.getAttachedMediaCount() <= 0)) {
        break label734;
      }
      g.setText(Integer.toString(localYelpBusinessReview.getUserCheckInCount()));
      label396:
      g.setVisibility(0);
      g.setCompoundDrawablesWithIntrinsicBounds(localYelpBusinessReview.getUserLocationRank().getRankIcon(), 0, 0, 0);
      label424:
      if (h != null)
      {
        if (localYelpBusinessReview.getAttachedMediaCount() <= 0) {
          break label778;
        }
        h.setText(Passport.getMediaQuantityString(false, localYelpBusinessReview.getAttachedPhotoCount(), localYelpBusinessReview.getAttachedVideoCount(), localYelpBusinessReview.getAttachedMediaCount(), AppData.b().getResources()));
        h.setVisibility(0);
      }
      label482:
      i.reset();
      i.setImageUrl(localYelpBusinessReview.getUserPhotoUrl(), 2130837659);
      cp.a(c, localYelpBusinessReview.getRating());
      if ((localYelpBusinessReview.getPreviousReviews() == null) || (localYelpBusinessReview.getPreviousReviews().size() <= 0)) {
        break label791;
      }
      i = 1;
      label544:
      paramView = e;
      if (i != 0) {
        j = 0;
      }
      paramView.setVisibility(j);
      if (b) {
        break label886;
      }
      if (localYelpBusinessReview.getText() == null) {
        break label820;
      }
      if ((!localYelpBusinessReview.shouldDisplayTranslation()) || (localYelpBusinessReview.getTranslatedText() == null)) {
        break label797;
      }
      paramView = localYelpBusinessReview.getTranslatedText();
      label601:
      paramViewGroup = f;
      if (!a) {
        break label806;
      }
      label615:
      paramViewGroup.setText(paramView);
    }
    for (;;)
    {
      d.setText(StringUtils.a(localView.getContext(), StringUtils.Format.LONG, localYelpBusinessReview.getDateModified()));
      if (am.a(localam) != null)
      {
        paramView = am.a(localam);
        i = k;
        if (paramInt == getCount() - 1) {
          i = 4;
        }
        paramView.setVisibility(i);
      }
      return localView;
      i = 8;
      break;
      label691:
      k.setVisibility(4);
      break label150;
      label703:
      paramView = Integer.toString(localYelpBusinessReview.getUserFriendCount());
      break label195;
      label715:
      paramView = Integer.toString(localYelpBusinessReview.getUserReviewCount());
      break label255;
      label727:
      paramView = RoundedWebImageView.RoundingMode.DEFAULT;
      break label351;
      label734:
      g.setText(StringUtils.a(localView.getContext(), 2131623941, localYelpBusinessReview.getUserCheckInCount(), new String[0]));
      break label396;
      label765:
      g.setVisibility(8);
      break label424;
      label778:
      h.setVisibility(8);
      break label482;
      label791:
      i = 0;
      break label544;
      label797:
      paramView = localYelpBusinessReview.getText();
      break label601;
      label806:
      paramView = paramView.replaceAll("\n", " ");
      break label615;
      label820:
      if (localYelpBusinessReview.getTextAttributed() != null)
      {
        paramViewGroup = f;
        if (a) {}
        for (paramView = Html.fromHtml(localYelpBusinessReview.getTextAttributed().replace("\n", "<br/>"));; paramView = localYelpBusinessReview.getTextAttributed().replaceAll("\n", " "))
        {
          paramViewGroup.setText(paramView);
          break;
        }
        label886:
        f.setText(Html.fromHtml(localYelpBusinessReview.getTextExcerpt()));
      }
    }
  }
  
  public YelpBusinessReview a(int paramInt)
  {
    if (b(paramInt)) {
      return null;
    }
    return (YelpBusinessReview)super.getItem(paramInt);
  }
  
  public List<YelpBusinessReview> a()
  {
    return super.a();
  }
  
  public void a(YelpException paramYelpException)
  {
    a = paramYelpException;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean areAllItemsEnabled()
  {
    return a == null;
  }
  
  public View b(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = new TextView(paramViewGroup.getContext());
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, -2, 1));
      paramView.setPadding(ao.j, ao.j, ao.j, ao.j);
    }
    for (;;)
    {
      TextView localTextView = (TextView)paramView;
      localTextView.setGravity(17);
      localTextView.setTextAppearance(paramViewGroup.getContext(), 2131689621);
      localTextView.setText(a.getMessage(paramViewGroup.getContext()));
      return paramView;
    }
  }
  
  public int getCount()
  {
    if (a != null) {
      return super.getCount() + 1;
    }
    return super.getCount();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (b(paramInt)) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      YelpLog.e(this, String.format("Could not detect the view type of the position %d", new Object[] { Integer.valueOf(paramInt) }));
      return paramView;
    case 1: 
      return b(paramInt, paramView, paramViewGroup);
    }
    return a(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return !b(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */