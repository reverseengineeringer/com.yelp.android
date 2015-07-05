package com.yelp.android.serializable;

import android.os.SystemClock;
import android.text.Html;
import android.text.Spanned;
import java.util.Comparator;
import java.util.Locale;
import org.json.JSONObject;

public class Offer
  extends _Offer
{
  public static final ah<Offer> CREATOR = new bm();
  public static final Comparator<Offer> ComparatorDateRedeemed = new bn();
  public static final String JSON_KEY = "offer";
  private Spanned spanText;
  private Spanned spanTitle;
  
  public Spanned getPromoSpan()
  {
    if (spanText == null) {
      spanText = Html.fromHtml(getPromoText());
    }
    return spanText;
  }
  
  public Spanned getSpan()
  {
    if (spanTitle == null) {
      spanTitle = Html.fromHtml(getOfferText());
    }
    return spanTitle;
  }
  
  public boolean isAwarded()
  {
    return (mState != null) && ((mState == Offer.OfferState.EARNED) || (mState == Offer.OfferState.REDEEMED));
  }
  
  public boolean isExpired()
  {
    return false;
  }
  
  public boolean isRedeemed()
  {
    if (mRedemption == null) {}
    while ((mState == Offer.OfferState.REMOVED) || (mRedemption.getDateRedeemed() == null)) {
      return false;
    }
    return true;
  }
  
  public boolean isStarted()
  {
    return mState != null;
  }
  
  public boolean isUsed()
  {
    if (mRedemption == null) {}
    while ((mState == Offer.OfferState.REMOVED) || (mRedemption.getDateRedeemed() == null) || ((mRedemption.getSecondsToRedeem() > 0) && (SystemClock.elapsedRealtime() < mRedemption.getSystemClockExpiration()))) {
      return false;
    }
    return true;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    paramJSONObject = paramJSONObject.optString("state");
    if (paramJSONObject != null) {}
    try
    {
      mState = Offer.OfferState.valueOf(paramJSONObject.toUpperCase(Locale.US));
      return;
    }
    catch (IllegalArgumentException paramJSONObject) {}
  }
  
  public void setState(Offer.OfferState paramOfferState)
  {
    mState = paramOfferState;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Offer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */