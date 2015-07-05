package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yelp.android.appdata.ao;
import com.yelp.android.b;
import com.yelp.android.serializable.Reservation.Provider;
import com.yelp.android.util.YelpLog;

public class ReservationAttribution
  extends TextView
{
  public ReservationAttribution(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ReservationAttribution(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ReservationAttribution(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(null, b.GapSizes);
    paramInt = paramContext.getDimensionPixelSize(1, ao.e);
    paramContext.recycle();
    setIncludeFontPadding(false);
    setCompoundDrawablePadding(paramInt);
    setVisibility(8);
  }
  
  public void setProvider(Reservation.Provider paramProvider)
  {
    switch (aa.a[paramProvider.ordinal()])
    {
    }
    for (;;)
    {
      setVisibility(0);
      return;
      setText(2131166356);
      setContentDescription(getContext().getString(2131166355));
      setCompoundDrawablesWithIntrinsicBounds(null, null, getResources().getDrawable(2130838231), null);
      continue;
      setText(2131166358);
      setContentDescription(null);
      setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      continue;
      setText(2131166357);
      setContentDescription(null);
      setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      continue;
      YelpLog.error(getContext(), "Trying to set up a ReservationAttribution with no provider");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ReservationAttribution
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */