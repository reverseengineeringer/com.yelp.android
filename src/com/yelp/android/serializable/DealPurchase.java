package com.yelp.android.serializable;

import android.content.Context;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Comparator;
import org.json.JSONObject;

public class DealPurchase
  extends _DealPurchase
{
  public static final Comparator<DealPurchase> COMPARATOR_TIME_EXPIRED = new af();
  public static final Comparator<DealPurchase> COMPARATOR_TIME_REDEEMED = new ag();
  public static final JsonParser.DualCreator<DealPurchase> CREATOR = new ae();
  public static final String EXTRA_DEAL_PURCHASED = "extra.deal_purchased";
  
  private boolean isExpired()
  {
    long l = getExpirationTimeMillis();
    return (System.currentTimeMillis() > l) && (l != -1L);
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
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (DealPurchase)paramObject;
        if (mId != null) {
          break;
        }
      } while (mId == null);
      return false;
    } while (mId.equals(mId));
    return false;
  }
  
  public String getCustomerName()
  {
    String str2 = super.getCustomerName();
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = AppData.b().m().t();
    }
    return str1;
  }
  
  public long getExpirationTimeMillis()
  {
    if (mTimeExpire == -1L) {
      return -1L;
    }
    return mTimeExpire * 1000L;
  }
  
  public String getPurchasedByName()
  {
    String str2 = super.getPurchasedByName();
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = AppData.b().m().t();
    }
    return str1;
  }
  
  public long getRedeemedTimeMillis()
  {
    if (mTimeRedeemed == -1L) {
      return -1L;
    }
    return mTimeRedeemed * 1000L;
  }
  
  public CharSequence getRedemptionTitle(Context paramContext, YelpDeal paramYelpDeal)
  {
    if (TextUtils.isEmpty(mRedemptionTitle)) {
      mRedemptionTitle = paramYelpDeal.getOption(mOptionId).getTitle();
    }
    if (TextUtils.isEmpty(mRedemptionTitle)) {
      mRedemptionCode = paramYelpDeal.getDealTitleWithBizName(paramContext);
    }
    return mRedemptionTitle;
  }
  
  public DealPurchase.PurchaseStatus getStatus()
  {
    if (!isRedeemed())
    {
      if (!isExpired()) {
        return DealPurchase.PurchaseStatus.USABLE_FULLPRICE;
      }
      return DealPurchase.PurchaseStatus.USABLE_EXPIRED;
    }
    return DealPurchase.PurchaseStatus.REDEEMED;
  }
  
  public int hashCode()
  {
    if (mId == null) {}
    for (int i = 0;; i = mId.hashCode()) {
      return i + 31;
    }
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
  }
  
  public void setRedeemed()
  {
    mIsRedeemed = true;
    mTimeRedeemed = (System.currentTimeMillis() / 1000L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.DealPurchase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */