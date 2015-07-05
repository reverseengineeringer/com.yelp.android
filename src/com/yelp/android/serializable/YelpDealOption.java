package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.math.BigDecimal;
import java.util.Currency;

public class YelpDealOption
  extends _YelpDealOption
{
  public static final JsonParser.DualCreator<YelpDealOption> CREATOR = new ek();
  private static final BigDecimal ONE_HUNDRED = new BigDecimal(100.0D);
  
  private static BigDecimal getPriceAsBigDec(Currency paramCurrency, String paramString)
  {
    BigDecimal localBigDecimal = new BigDecimal(paramString).divide(ONE_HUNDRED).setScale(paramCurrency.getDefaultFractionDigits()).stripTrailingZeros();
    if (localBigDecimal.scale() < 0) {
      paramString = localBigDecimal.setScale(0);
    }
    do
    {
      return paramString;
      paramString = localBigDecimal;
    } while (localBigDecimal.scale() <= 0);
    return localBigDecimal.setScale(paramCurrency.getDefaultFractionDigits());
  }
  
  public BigDecimal getDecimalOriginalPrice(Currency paramCurrency)
  {
    return getPriceAsBigDec(paramCurrency, getOriginalPrice());
  }
  
  public BigDecimal getDecimalPrice(Currency paramCurrency)
  {
    return getPriceAsBigDec(paramCurrency, getPrice());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpDealOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */