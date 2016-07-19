package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable.Creator;
import com.yelp.android.analytics.g.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.YelpBusinessReview;

public class ReviewShareFormatter
  extends ShareFormatter<YelpBusinessReview>
{
  public static final Parcelable.Creator<ReviewShareFormatter> CREATOR = new ReviewShareFormatter.1();
  
  public ReviewShareFormatter(YelpBusinessReview paramYelpBusinessReview)
  {
    super(paramYelpBusinessReview);
  }
  
  protected Uri a()
  {
    return Uri.parse(((YelpBusinessReview)c()).H());
  }
  
  public String a(Context paramContext)
  {
    return paramContext.getString(2131166574, new Object[] { ((YelpBusinessReview)c()).M(), ((YelpBusinessReview)c()).O(), Integer.valueOf(((YelpBusinessReview)c()).C()) });
  }
  
  public void a(Context paramContext, e.a parama, Intent paramIntent)
  {
    super.a(paramContext, parama, paramIntent);
    if (parama.e()) {
      paramIntent.putExtra("android.intent.extra.SUBJECT", paramContext.getString(2131166573, new Object[] { ((YelpBusinessReview)c()).M() }));
    }
  }
  
  public g.a b()
  {
    return new g.a().a(EventIri.ReviewShare).a("review_id", ((YelpBusinessReview)c()).a());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.ReviewShareFormatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */