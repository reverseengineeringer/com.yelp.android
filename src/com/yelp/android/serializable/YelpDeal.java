package com.yelp.android.serializable;

import android.content.Context;
import android.os.SystemClock;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Currency;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class YelpDeal
  extends _YelpDeal
{
  public static final String ACTION_DEAL_CHANGED = "com.yelp.android.deal_changed";
  public static final Comparator<YelpDeal> COMPARATOR_TIME_EXPIRED = new eh();
  public static final Comparator<YelpDeal> COMPARATOR_TIME_REDEEMED = new ei();
  public static final JsonParser.DualCreator<YelpDeal> CREATOR = new eg();
  public static final String EXTRA_DEAL = "extra.yelp_deal";
  protected EnumMap<DealPurchase.PurchaseStatus, ArrayList<DealPurchase>> mPurchaseMap;
  
  private EnumMap<DealPurchase.PurchaseStatus, ArrayList<DealPurchase>> initPurchaseMap()
  {
    if (mPurchaseMap == null)
    {
      mPurchaseMap = new EnumMap(DealPurchase.PurchaseStatus.class);
      Object localObject1 = DealPurchase.PurchaseStatus.values();
      int j = localObject1.length;
      int i = 0;
      Object localObject2;
      while (i < j)
      {
        localObject2 = localObject1[i];
        mPurchaseMap.put((Enum)localObject2, new ArrayList());
        i += 1;
      }
      localObject1 = mPurchases.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (DealPurchase)((Iterator)localObject1).next();
        ((ArrayList)mPurchaseMap.get(((DealPurchase)localObject2).getStatus())).add(localObject2);
      }
      if (((ArrayList)mPurchaseMap.get(DealPurchase.PurchaseStatus.USABLE_FULLPRICE)).size() > 0) {
        Collections.sort((List)mPurchaseMap.get(DealPurchase.PurchaseStatus.USABLE_FULLPRICE), DealPurchase.COMPARATOR_TIME_EXPIRED);
      }
      if (((ArrayList)mPurchaseMap.get(DealPurchase.PurchaseStatus.USABLE_EXPIRED)).size() > 0) {
        Collections.sort((List)mPurchaseMap.get(DealPurchase.PurchaseStatus.USABLE_EXPIRED), DealPurchase.COMPARATOR_TIME_EXPIRED);
      }
      if (((ArrayList)mPurchaseMap.get(DealPurchase.PurchaseStatus.REDEEMED)).size() > 0) {
        Collections.sort((List)mPurchaseMap.get(DealPurchase.PurchaseStatus.REDEEMED), DealPurchase.COMPARATOR_TIME_REDEEMED);
      }
    }
    return mPurchaseMap;
  }
  
  public int countUsablePurchases()
  {
    initPurchaseMap();
    int i = ((ArrayList)mPurchaseMap.get(DealPurchase.PurchaseStatus.USABLE_EXPIRED)).size();
    return ((ArrayList)mPurchaseMap.get(DealPurchase.PurchaseStatus.USABLE_FULLPRICE)).size() + i;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof _YelpDeal)) {
          return false;
        }
        paramObject = (_YelpDeal)paramObject;
        if (mId != null) {
          break;
        }
      } while (mId == null);
      return false;
    } while (mId.equals(mId));
    return false;
  }
  
  public Currency getCurrency()
  {
    return Currency.getInstance(mCurrencyCode);
  }
  
  public String getDealTitleWithBizName(Context paramContext)
  {
    return paramContext.getString(2131165676, new Object[] { mTitle, mBusinessName });
  }
  
  public YelpDealOption getDisplayDeal()
  {
    return (YelpDealOption)getOptions().get(0);
  }
  
  public ej getDisplayPrices()
  {
    ej localej = new ej();
    Object localObject = getCurrency();
    NumberFormat localNumberFormat = NumberFormat.getCurrencyInstance();
    localNumberFormat.setCurrency((Currency)localObject);
    BigDecimal localBigDecimal = getDisplayDeal().getDecimalPrice((Currency)localObject);
    localNumberFormat.setMinimumFractionDigits(localBigDecimal.scale());
    a = localNumberFormat.format(localBigDecimal);
    localObject = getDisplayDeal().getDecimalOriginalPrice((Currency)localObject);
    localNumberFormat.setMinimumFractionDigits(((BigDecimal)localObject).scale());
    b = localNumberFormat.format(localObject);
    localNumberFormat.setMinimumFractionDigits(Math.max(((BigDecimal)localObject).scale(), localBigDecimal.scale()));
    c = localNumberFormat.format(((BigDecimal)localObject).subtract(localBigDecimal));
    d = (100 - localBigDecimal.multiply(new BigDecimal(100)).divide((BigDecimal)localObject, 2, RoundingMode.HALF_EVEN).intValue());
    return localej;
  }
  
  public DealPurchase getFirstPurchaseByStatus(DealPurchase.PurchaseStatus paramPurchaseStatus)
  {
    initPurchaseMap();
    if (((ArrayList)mPurchaseMap.get(paramPurchaseStatus)).size() > 0) {
      return (DealPurchase)((ArrayList)mPurchaseMap.get(paramPurchaseStatus)).get(0);
    }
    return null;
  }
  
  public DealPurchase getFirstUsablePurchase()
  {
    DealPurchase localDealPurchase2 = getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.USABLE_FULLPRICE);
    DealPurchase localDealPurchase1 = localDealPurchase2;
    if (localDealPurchase2 == null) {
      localDealPurchase1 = getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.USABLE_EXPIRED);
    }
    return localDealPurchase1;
  }
  
  public int getMaxGiftQuantity()
  {
    if (mMaxGiftQuantity < 0) {
      return Integer.MAX_VALUE;
    }
    return mMaxGiftQuantity;
  }
  
  public int getMaxQuantity()
  {
    if (mMaxQuantity < 0) {
      return Integer.MAX_VALUE;
    }
    return mMaxQuantity;
  }
  
  public int getMaxUserQuantity()
  {
    if (mMaxUserQuantity < 0) {
      return Integer.MAX_VALUE;
    }
    return mMaxUserQuantity;
  }
  
  public YelpDealOption getOption(String paramString)
  {
    Iterator localIterator = getOptions().iterator();
    while (localIterator.hasNext())
    {
      YelpDealOption localYelpDealOption = (YelpDealOption)localIterator.next();
      if (mId.equals(paramString)) {
        return localYelpDealOption;
      }
    }
    return null;
  }
  
  public int getOptionalCount()
  {
    return Math.max(getPurchasedCount(), getRemainingCount());
  }
  
  public int getOptionalString()
  {
    if (mPurchasedCount == -1)
    {
      if (mRemainingCount == -1) {
        return 0;
      }
      return 2131166415;
    }
    return 2131166596;
  }
  
  public ArrayList<DealPurchase> getPurchasesByStatus(DealPurchase.PurchaseStatus paramPurchaseStatus)
  {
    initPurchaseMap();
    return (ArrayList)mPurchaseMap.get(paramPurchaseStatus);
  }
  
  public long getSystemClockExpiration()
  {
    return mSystemClockExpiration;
  }
  
  public ArrayList<DealPurchase> getUsablePurchases()
  {
    initPurchaseMap();
    ArrayList localArrayList = new ArrayList((Collection)mPurchaseMap.get(DealPurchase.PurchaseStatus.USABLE_FULLPRICE));
    localArrayList.addAll((Collection)mPurchaseMap.get(DealPurchase.PurchaseStatus.USABLE_EXPIRED));
    return localArrayList;
  }
  
  public int hashCode()
  {
    if (mId == null) {}
    for (int i = 0;; i = mId.hashCode()) {
      return i + 31;
    }
  }
  
  public boolean isActive()
  {
    return (isStandingDeal()) || (mSystemClockExpiration - SystemClock.elapsedRealtime() > 0L);
  }
  
  public boolean isStandingDeal()
  {
    return mTimeEnd == -1L;
  }
  
  public boolean markPurchaseRedeemedById(String paramString)
  {
    Iterator localIterator = getPurchases().iterator();
    while (localIterator.hasNext())
    {
      DealPurchase localDealPurchase = (DealPurchase)localIterator.next();
      if (paramString.equals(localDealPurchase.getId()))
      {
        localDealPurchase.setRedeemed();
        mPurchaseMap = null;
        return true;
      }
    }
    return false;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    if (!isStandingDeal()) {
      mSystemClockExpiration = (SystemClock.elapsedRealtime() + (mTimeEnd - mTimeReference) * 1000L);
    }
  }
  
  public void updatePurchase(DealPurchase paramDealPurchase)
  {
    mPurchases.remove(paramDealPurchase);
    mPurchases.add(paramDealPurchase);
    mPurchaseMap = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpDeal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */