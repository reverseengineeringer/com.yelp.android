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
import com.yelp.android.services.f;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils.Format;
import java.util.Date;
import java.util.GregorianCalendar;

public class b
  extends w<Parcelable>
{
  private final boolean a;
  
  public b(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private String a(Context paramContext, long paramLong)
  {
    long l = new Date().getTime();
    if (paramLong == -1L) {
      return paramContext.getString(2131165752);
    }
    if (paramLong == Long.MAX_VALUE) {
      return "";
    }
    if (l >= paramLong) {
      return paramContext.getString(2131165884, new Object[] { a(paramContext, new Date(paramLong)) });
    }
    if (DateUtils.isToday(paramLong)) {
      return paramContext.getString(2131165885);
    }
    if (DateUtils.isToday(paramLong - 86400000L)) {
      return paramContext.getString(2131165886);
    }
    Object localObject = new Date(paramLong);
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTime((Date)localObject);
    if ((l < paramLong) && (l + 604800000L > paramLong)) {}
    for (localObject = DateUtils.getDayOfWeekString(localGregorianCalendar.get(7), 10);; localObject = a(paramContext, (Date)localObject)) {
      return paramContext.getString(2131165754, new Object[] { localObject });
    }
  }
  
  private String a(Context paramContext, Date paramDate)
  {
    return f.a(paramContext, 2131166401, paramDate);
  }
  
  protected void a(Context paramContext, b.a parama, Offer paramOffer)
  {
    d.setImageUrl(paramOffer.h().au());
    a.setText(paramOffer.a());
    b.setText(paramOffer.h().z());
    if (paramOffer.e())
    {
      paramContext = paramContext.getString(2131166766, new Object[] { a(paramContext, paramOffer.m().i()) });
      c.setText(paramContext);
      c.setVisibility(0);
    }
    do
    {
      return;
      paramContext = paramOffer.h().a(paramContext, StringUtils.Format.LONG);
    } while (paramContext == null);
    c.setText(paramContext);
    c.setVisibility(0);
  }
  
  protected void a(Context paramContext, b.a parama, YelpDeal paramYelpDeal)
  {
    d.setImageUrl(paramYelpDeal.v());
    a.setText(paramYelpDeal.w());
    b.setText(paramYelpDeal.u());
    long l;
    if (a)
    {
      paramYelpDeal = paramYelpDeal.a();
      if (paramYelpDeal != null)
      {
        l = paramYelpDeal.e();
        switch (b.1.a[paramYelpDeal.c().ordinal()])
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
            paramYelpDeal = paramYelpDeal.a(DealPurchase.PurchaseStatus.REDEEMED);
            break;
          } while (l >= System.currentTimeMillis() + 2419200000L);
          paramYelpDeal = a(paramContext, l);
        } while (TextUtils.isEmpty(paramYelpDeal));
        c.setText(paramYelpDeal);
        c.setTextColor(paramContext.getResources().getColor(2131624190));
        c.setVisibility(0);
        return;
        paramYelpDeal = a(paramContext, l);
      } while (TextUtils.isEmpty(paramYelpDeal));
      c.setText(paramYelpDeal);
      c.setTextColor(paramContext.getResources().getColor(2131624190));
      c.setVisibility(0);
      return;
      l = paramYelpDeal.f();
    } while (-1L == l);
    paramContext = paramContext.getString(2131166766, new Object[] { a(paramContext, new Date(l)) });
    c.setText(paramContext);
    c.setVisibility(0);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(localContext).inflate(2130903421, paramViewGroup, false);
      localView.setTag(new b.a(localView));
    }
    paramView = (b.a)localView.getTag();
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
 * Qualified Name:     com.yelp.android.ui.panels.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */