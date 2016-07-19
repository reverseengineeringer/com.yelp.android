package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.Layout;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.TranslatedReview;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.AwardBanner;
import com.yelp.android.ui.widgets.RoundedWebImageView.RoundingMode;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import com.yelp.android.util.YelpLog;
import java.util.Date;
import java.util.List;

public class c
  extends w<YelpBusinessReview>
{
  private YelpException a;
  private boolean b = false;
  
  private void b(final a parama)
  {
    p.setVisibility(0);
    q.setVisibility(8);
    if (p.getLayout() != null)
    {
      c(parama);
      return;
    }
    p.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        c.a(parama);
        paramap.getViewTreeObserver().removeGlobalOnLayoutListener(this);
      }
    });
  }
  
  private boolean b(int paramInt)
  {
    return (a != null) && (paramInt >= super.getCount());
  }
  
  private static void c(a parama)
  {
    Layout localLayout = p.getLayout();
    if ((localLayout == null) || (localLayout.getLineCount() < 1) || (localLayout.getEllipsisCount(0) == 0)) {
      return;
    }
    p.setVisibility(8);
    q.setVisibility(0);
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903363, paramViewGroup, false);
      localView.setTag(new a(localView, false));
    }
    a locala = (a)localView.getTag();
    YelpBusinessReview localYelpBusinessReview = a(paramInt);
    Resources localResources = localView.getContext().getResources();
    if (localYelpBusinessReview.u())
    {
      c.setVisibility(8);
      b.setVisibility(8);
      d.setVisibility(0);
      l.setText(localYelpBusinessReview.O());
      if (!localYelpBusinessReview.r()) {
        break label805;
      }
      m.setVisibility(0);
      m.setText(DateFormat.format(localResources.getString(2131165825), User.j()));
      label156:
      paramViewGroup = localResources.getQuantityString(2131230736, localYelpBusinessReview.A(), new Object[] { Integer.valueOf(localYelpBusinessReview.A()) });
      TextView localTextView = n;
      if (!a) {
        break label817;
      }
      paramView = paramViewGroup;
      label201:
      localTextView.setText(paramView);
      n.setContentDescription(paramViewGroup);
      paramViewGroup = localResources.getQuantityString(2131230757, localYelpBusinessReview.B(), new Object[] { Integer.valueOf(localYelpBusinessReview.B()) });
      localTextView = o;
      if (!a) {
        break label829;
      }
      paramView = paramViewGroup;
      label261:
      localTextView.setText(paramView);
      o.setContentDescription(paramViewGroup);
      paramView = Passport.a(a, localYelpBusinessReview, localResources);
      p.setText(paramView);
      p.setContentDescription(paramView);
      if (a)
      {
        q.setText(paramView);
        q.setContentDescription(paramView);
        b(locala);
      }
      paramViewGroup = k;
      if (!a) {
        break label841;
      }
      paramView = RoundedWebImageView.RoundingMode.CLIP;
      label357:
      paramViewGroup.setForceMode(paramView);
      if (localYelpBusinessReview.z() <= 0) {
        break label879;
      }
      if ((j == null) || (localYelpBusinessReview.j() <= 0)) {
        break label848;
      }
      i.setText(Integer.toString(localYelpBusinessReview.z()));
      label402:
      i.setVisibility(0);
      i.setCompoundDrawablesWithIntrinsicBounds(localYelpBusinessReview.n().getRankIcon(), 0, 0, 0);
      label430:
      if (j != null)
      {
        if (localYelpBusinessReview.j() <= 0) {
          break label892;
        }
        j.setText(Passport.a(false, localYelpBusinessReview.h(), localYelpBusinessReview.i(), localYelpBusinessReview.j(), AppData.b().getResources()));
        j.setVisibility(0);
      }
      label488:
      k.reset();
      k.setImageUrl(localYelpBusinessReview.N(), 2130837702);
      ar.a(e, localYelpBusinessReview.C());
      if ((localYelpBusinessReview.T() == null) || (localYelpBusinessReview.T().size() <= 0)) {
        break label905;
      }
      paramInt = 1;
      label549:
      paramView = g;
      if (paramInt == 0) {
        break label910;
      }
      paramInt = 0;
      label561:
      paramView.setVisibility(paramInt);
      if (b) {
        break label1033;
      }
      if (localYelpBusinessReview.e() == null) {
        break label967;
      }
      if ((!localYelpBusinessReview.p()) || (localYelpBusinessReview.G() == null)) {
        break label922;
      }
      paramViewGroup = localYelpBusinessReview.G().c();
      paramView = paramViewGroup;
      if (r != null)
      {
        paramView = r;
        if (!localYelpBusinessReview.G().a()) {
          break label916;
        }
        paramInt = i;
        label636:
        paramView.setVisibility(paramInt);
        paramView = paramViewGroup;
      }
      label643:
      paramViewGroup = h;
      if (!a) {
        break label953;
      }
      label657:
      paramViewGroup.setText(paramView);
    }
    for (;;)
    {
      f.setText(StringUtils.a(localView.getContext(), StringUtils.Format.LONG, localYelpBusinessReview.W()));
      return localView;
      if (localYelpBusinessReview.V() == null)
      {
        c.setVisibility(8);
        d.setVisibility(8);
        paramView = b;
        if (localYelpBusinessReview.D()) {}
        for (paramInt = 0;; paramInt = 8)
        {
          paramView.setVisibility(paramInt);
          break;
        }
      }
      b.setVisibility(8);
      d.setVisibility(8);
      c.setRightText(DateUtils.formatDateTime(paramViewGroup.getContext(), localYelpBusinessReview.V().getTime(), 131076));
      c.setVisibility(0);
      break;
      label805:
      m.setVisibility(4);
      break label156;
      label817:
      paramView = Integer.toString(localYelpBusinessReview.A());
      break label201;
      label829:
      paramView = Integer.toString(localYelpBusinessReview.B());
      break label261;
      label841:
      paramView = RoundedWebImageView.RoundingMode.DEFAULT;
      break label357;
      label848:
      i.setText(StringUtils.a(localView.getContext(), 2131230725, localYelpBusinessReview.z(), new String[0]));
      break label402;
      label879:
      i.setVisibility(8);
      break label430;
      label892:
      j.setVisibility(8);
      break label488;
      label905:
      paramInt = 0;
      break label549;
      label910:
      paramInt = 8;
      break label561;
      label916:
      paramInt = 8;
      break label636;
      label922:
      paramViewGroup = localYelpBusinessReview.e();
      paramView = paramViewGroup;
      if (r == null) {
        break label643;
      }
      r.setVisibility(8);
      paramView = paramViewGroup;
      break label643;
      label953:
      paramView = paramView.replaceAll("\n", " ");
      break label657;
      label967:
      if (localYelpBusinessReview.J() != null)
      {
        paramViewGroup = h;
        if (a) {}
        for (paramView = Html.fromHtml(localYelpBusinessReview.J().replace("\n", "<br/>"));; paramView = localYelpBusinessReview.J().replaceAll("\n", " "))
        {
          paramViewGroup.setText(paramView);
          break;
        }
        label1033:
        h.setText(Html.fromHtml(localYelpBusinessReview.P()));
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
      paramView.setPadding(n.j, n.j, n.j, n.j);
    }
    for (;;)
    {
      TextView localTextView = (TextView)paramView;
      localTextView.setGravity(17);
      localTextView.setTextAppearance(paramViewGroup.getContext(), 2131296462);
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
  
  public static final class a
  {
    public final boolean a;
    public final View b;
    public final AwardBanner c;
    public final AwardBanner d;
    public final ImageView e;
    public final TextView f;
    public final TextView g;
    public final TextView h;
    public final TextView i;
    public final TextView j;
    public final WebImageView k;
    public final TextView l;
    public final TextView m;
    public final TextView n;
    public final TextView o;
    public final TextView p;
    public final TextView q;
    public final View r;
    
    public a(View paramView, boolean paramBoolean)
    {
      a = paramBoolean;
      b = paramView.findViewById(2131690552);
      c = ((AwardBanner)paramView.findViewById(2131690553));
      d = ((AwardBanner)paramView.findViewById(2131690554));
      e = ((ImageView)paramView.findViewById(2131690557));
      f = ((TextView)paramView.findViewById(2131690560));
      g = ((TextView)paramView.findViewById(2131690558));
      h = ((TextView)paramView.findViewById(2131690559));
      i = ((TextView)paramView.findViewById(2131690488));
      j = ((TextView)paramView.findViewById(2131690531));
      k = ((WebImageView)paramView.findViewById(2131690074));
      l = ((TextView)paramView.findViewById(2131690076));
      m = ((TextView)paramView.findViewById(2131690556));
      n = ((TextView)paramView.findViewById(2131690064));
      o = ((TextView)paramView.findViewById(2131690746));
      p = ((TextView)paramView.findViewById(2131690747));
      q = ((TextView)paramView.findViewById(2131690749));
      r = paramView.findViewById(2131690569);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */