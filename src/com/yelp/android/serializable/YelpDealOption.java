package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.math.BigDecimal;
import java.util.Currency;

public class YelpDealOption
  extends _YelpDealOption
{
  public static final JsonParser.DualCreator<YelpDealOption> CREATOR = new YelpDealOption.1();
  private static final BigDecimal h = new BigDecimal(100.0D);
  
  private static BigDecimal a(Currency paramCurrency, String paramString)
  {
    BigDecimal localBigDecimal = new BigDecimal(paramString).divide(h).setScale(paramCurrency.getDefaultFractionDigits()).stripTrailingZeros();
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
  
  public BigDecimal a(Currency paramCurrency)
  {
    return a(paramCurrency, d());
  }
  
  public BigDecimal b(Currency paramCurrency)
  {
    return a(paramCurrency, c());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpDealOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */