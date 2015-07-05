package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.LocalAdType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.EnumSet;
import java.util.List;

public class ab
  extends au<LocalAd>
{
  private final YelpBusiness a;
  
  public ab(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    a = paramYelpBusiness;
  }
  
  private void a(LocalAd paramLocalAd, ae paramae)
  {
    ae.f(paramae).setImageUrl(paramLocalAd.getBusiness().getPhotoUrl(), 2130837648);
    ae.f(paramae).setVisibility(0);
    ae.g(paramae).setVisibility(8);
    ae.h(paramae).setVisibility(8);
  }
  
  private void a(LocalAd paramLocalAd, ae paramae, Context paramContext)
  {
    YelpBusiness localYelpBusiness = paramLocalAd.getBusiness();
    ae.a(paramae).setText(localYelpBusiness.getDisplayName());
    int i = localYelpBusiness.getPrice();
    LocaleSettings localLocaleSettings = AppData.b().g();
    ae.b(paramae).setText(localYelpBusiness.getLocalizedPrice());
    ae.b(paramae).setContentDescription(localLocaleSettings.a(paramContext, i, localYelpBusiness.getCountry()));
    if (paramLocalAd.isRatingDisabled())
    {
      paramLocalAd = localYelpBusiness.getAddress1();
      if (!TextUtils.isEmpty(paramLocalAd)) {
        ae.c(paramae).setText(paramLocalAd);
      }
      while (TextUtils.isEmpty(ae.c(paramae).getText()))
      {
        ae.d(paramae).setVisibility(8);
        return;
        paramLocalAd = localYelpBusiness.getNeighborhoods();
        if (!paramLocalAd.isEmpty())
        {
          paramLocalAd = (String)paramLocalAd.get(0);
          if (!TextUtils.isEmpty(paramLocalAd)) {
            ae.c(paramae).setText(paramLocalAd);
          }
        }
      }
      ae.e(paramae).setVisibility(8);
      return;
    }
    cp.a(ae.e(paramae), localYelpBusiness.getAvgRating());
    i = localYelpBusiness.getReviewCount();
    ae.c(paramae).setText(paramContext.getResources().getQuantityString(2131623970, i, new Object[] { Integer.valueOf(i) }));
  }
  
  private void a(LocalAd paramLocalAd, ae paramae, String paramString)
  {
    ae.f(paramae).setVisibility(8);
    ae.g(paramae).setVisibility(0);
    if ((paramLocalAd.getLocalAdType() == LocalAdType.CUSTOM_CREATIVE) && (paramLocalAd.getPhoto() != null)) {
      ae.g(paramae).setImageUrl(paramLocalAd.getPhoto().getThumbnailUrl(), 2130837648);
    }
    for (;;)
    {
      ae.h(paramae).setText(paramString);
      ae.h(paramae).setVisibility(0);
      return;
      ae.g(paramae).setImageUrl(paramLocalAd.getBusiness().getPhotoUrl(), 2130837648);
    }
  }
  
  private void b(LocalAd paramLocalAd, ae paramae)
  {
    a(paramLocalAd, paramae, paramLocalAd.getSpecialty().replaceAll("\n", " "));
  }
  
  private void b(LocalAd paramLocalAd, ae paramae, Context paramContext)
  {
    ae.f(paramae).setVisibility(8);
    ae.g(paramae).setVisibility(0);
    ae.g(paramae).setImageUrl(paramLocalAd.getReview().getUserPhotoUrl(), 2130837660);
    String str = paramLocalAd.getReview().getTextExcerpt().replaceAll("\n", " ");
    paramLocalAd = paramContext.getResources().getString(2131166465, new Object[] { paramLocalAd.getReview().getUserName(), str });
    ae.h(paramae).setText(Html.fromHtml(paramLocalAd));
    ae.h(paramae).setVisibility(0);
  }
  
  private void c(LocalAd paramLocalAd, ae paramae)
  {
    a(paramLocalAd, paramae, paramLocalAd.getCustomCreativeText().replaceAll("\n", " "));
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((LocalAd)super.getItem(paramInt)).getLocalAdType().ordinal();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903139, paramViewGroup, false);
      localView.setTag(new ae(localView));
    }
    paramView = (ae)localView.getTag();
    LocalAd localLocalAd = (LocalAd)getItem(paramInt);
    paramViewGroup = paramViewGroup.getContext();
    a(localLocalAd, paramView, paramViewGroup);
    switch (ad.a[localLocalAd.getLocalAdType().ordinal()])
    {
    }
    for (;;)
    {
      localView.setOnClickListener(new ac(this, localLocalAd));
      return localView;
      b(localLocalAd, paramView, paramViewGroup);
      continue;
      b(localLocalAd, paramView);
      continue;
      c(localLocalAd, paramView);
      continue;
      a(localLocalAd, paramView);
    }
  }
  
  public int getViewTypeCount()
  {
    return EnumSet.allOf(LocalAdType.class).size();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */