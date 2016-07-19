package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Spanned;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yelp.android.b.a;
import com.yelp.android.ui.widgets.QuantityDropDownView;
import com.yelp.android.ui.widgets.QuantityDropDownView.a;
import com.yelp.android.util.StringUtils;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.Currency;

public class CalculatedPriceView
  extends DealQuantityViewBase
  implements QuantityDropDownView.a
{
  private final int b;
  private NumberFormat c;
  private BigDecimal d;
  private BigDecimal e;
  
  public CalculatedPriceView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CalculatedPriceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772031);
  }
  
  public CalculatedPriceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.a.DealQuantityBaseView, paramInt, paramInt);
    b = paramContext.getResourceId(0, 2131166408);
    paramContext.recycle();
  }
  
  private void a(int paramInt)
  {
    e = d.multiply(new BigDecimal(paramInt));
    Spanned localSpanned = StringUtils.a(getContext(), b, paramInt, new String[] { c.format(d), c.format(e) });
    a.setText(localSpanned);
  }
  
  public void a(int paramInt, QuantityDropDownView paramQuantityDropDownView)
  {
    a(paramQuantityDropDownView.getQuantity().intValue());
  }
  
  public void a(BigDecimal paramBigDecimal, Currency paramCurrency)
  {
    d = paramBigDecimal;
    c = NumberFormat.getCurrencyInstance();
    c.setCurrency(paramCurrency);
    c.setMinimumFractionDigits(d.scale());
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (Bundle)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getParcelable("super"));
    e = new BigDecimal(paramParcelable.getInt("quantity"));
    d = new BigDecimal(paramParcelable.getString("price"));
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("super", super.onSaveInstanceState());
    localBundle.putInt("quantity", e.intValue());
    localBundle.putString("price", d.toPlainString());
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.CalculatedPriceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */