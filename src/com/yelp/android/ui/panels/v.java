package com.yelp.android.ui.panels;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.DealPurchase.PurchaseStatus;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.OfferRedemption;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.services.r;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils.Format;
import java.util.Date;
import java.util.GregorianCalendar;

public class v
  extends au<Parcelable>
{
  private final boolean a;
  
  public v(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private String a(Context paramContext, long paramLong)
  {
    long l = new Date().getTime();
    if (paramLong == -1L) {
      return paramContext.getString(2131165677);
    }
    if (paramLong == Long.MAX_VALUE) {
      return "";
    }
    if (l >= paramLong) {
      return paramContext.getString(2131165798, new Object[] { a(paramContext, new Date(paramLong)) });
    }
    if (DateUtils.isToday(paramLong)) {
      return paramContext.getString(2131165799);
    }
    if (DateUtils.isToday(paramLong - 86400000L)) {
      return paramContext.getString(2131165800);
    }
    Object localObject = new Date(paramLong);
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTime((Date)localObject);
    if ((l < paramLong) && (l + 604800000L > paramLong)) {}
    for (localObject = DateUtils.getDayOfWeekString(localGregorianCalendar.get(7), 10);; localObject = a(paramContext, (Date)localObject)) {
      return paramContext.getString(2131165679, new Object[] { localObject });
    }
  }
  
  private String a(Context paramContext, Date paramDate)
  {
    return r.a(paramContext, 2131166376, paramDate);
  }
  
  protected void a(Context paramContext, x paramx, Offer paramOffer)
  {
    d.setImageUrl(paramOffer.getBusiness().getPhotoUrl());
    a.setText(paramOffer.getSpan());
    b.setText(paramOffer.getBusiness().getDisplayName());
    if (paramOffer.isUsed())
    {
      paramContext = paramContext.getString(2131166802, new Object[] { a(paramContext, paramOffer.getRedemption().getDateRedeemed()) });
      c.setText(paramContext);
      c.setVisibility(0);
    }
    do
    {
      return;
      paramContext = paramOffer.getBusiness().getDistanceFormatted(paramContext, StringUtils.Format.LONG);
    } while (paramContext == null);
    c.setText(paramContext);
    c.setVisibility(0);
  }
  
  protected void a(Context paramContext, x paramx, YelpDeal paramYelpDeal)
  {
    d.setImageUrl(paramYelpDeal.getImageUrl());
    a.setText(paramYelpDeal.getTitle());
    b.setText(paramYelpDeal.getBusinessName());
    long l;
    if (a)
    {
      paramYelpDeal = paramYelpDeal.getFirstUsablePurchase();
      if (paramYelpDeal != null)
      {
        l = paramYelpDeal.getExpirationTimeMillis();
        switch (w.a[paramYelpDeal.getStatus().ordinal()])
        {
        }
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            paramYelpDeal = paramYelpDeal.getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.REDEEMED);
            break;
          } while (l >= System.currentTimeMillis() + 2419200000L);
          paramYelpDeal = a(paramContext, l);
        } while (TextUtils.isEmpty(paramYelpDeal));
        c.setText(paramYelpDeal);
        c.setTextColor(paramContext.getResources().getColor(2131361970));
        c.setVisibility(0);
        return;
        paramYelpDeal = a(paramContext, l);
      } while (TextUtils.isEmpty(paramYelpDeal));
      c.setText(paramYelpDeal);
      c.setTextColor(paramContext.getResources().getColor(2131361970));
      c.setVisibility(0);
      return;
      l = paramYelpDeal.getRedeemedTimeMillis();
    } while (-1L == l);
    paramContext = paramContext.getString(2131166802, new Object[] { a(paramContext, new Date(l)) });
    c.setText(paramContext);
    c.setVisibility(0);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(localContext).inflate(2130903323, paramViewGroup, false);
      localView.setTag(new x(localView));
    }
    paramView = (x)localView.getTag();
    paramViewGroup = (Parcelable)getItem(paramInt);
    if ((paramViewGroup instanceof YelpDeal)) {
      a(localContext, paramView, (YelpDeal)paramViewGroup);
    }
    while (!(paramViewGroup instanceof Offer)) {
      return localView;
    }
    a(localContext, paramView, (Offer)paramViewGroup);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */