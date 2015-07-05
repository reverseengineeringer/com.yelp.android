package com.yelp.android.serializable;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.Spanned;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Locale;

public class ReviewHighlight
  extends _ReviewHighlight
{
  public static final JsonParser.DualCreator<ReviewHighlight> CREATOR = new cs();
  private ReviewHighlight.ReviewHighlightType mReviewHighlightType;
  
  public Spanned getMarkedUpSentence(Context paramContext)
  {
    return Html.fromHtml(paramContext.getResources().getString(2131166383, new Object[] { getSentence() }));
  }
  
  public ReviewHighlight.ReviewHighlightType getReviewHighlightType()
  {
    if (mReviewHighlightType == null) {
      mReviewHighlightType = ReviewHighlight.ReviewHighlightType.valueOf(getType().toUpperCase(Locale.US));
    }
    return mReviewHighlightType;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReviewHighlight
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */