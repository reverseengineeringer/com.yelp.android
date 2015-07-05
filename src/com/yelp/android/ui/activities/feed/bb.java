package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.az.c;
import com.yelp.android.ba.d;
import com.yelp.android.ba.f;
import com.yelp.android.ba.i;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpBusinessReview.ReviewFeedback;
import com.yelp.android.serializable.YelpBusinessReview.UserFeedback;

class bb
{
  private f b;
  private d c;
  private i d;
  private final c e;
  private final c f;
  private final c g;
  private int h;
  private int i;
  private int j;
  private ReviewFeedEntry k;
  private final View.OnClickListener l = new bc(this);
  
  public bb(ba paramba, FeedType paramFeedType, View paramView)
  {
    b = new f(paramFeedType, paramView, 2131493692);
    c = new d(paramView, 2131493674);
    d = new i(paramView, 2131493683);
    e = new c(paramView, 2131493054, 2131362071, 2130838528, l);
    f = new c(paramView, 2131493055, 2131362064, 2130838020, l);
    g = new c(paramView, 2131493056, 2131362063, 2130837865, l);
  }
  
  private CharSequence a(Context paramContext, int paramInt1, int paramInt2)
  {
    Spanned localSpanned = Html.fromHtml("<b>" + paramContext.getString(paramInt1) + "</b>");
    paramContext = localSpanned;
    if (paramInt2 > 0) {
      paramContext = TextUtils.concat(new CharSequence[] { localSpanned, " " + paramInt2 });
    }
    return paramContext;
  }
  
  public void a(Context paramContext)
  {
    YelpBusinessReview.ReviewFeedback localReviewFeedback = k.getReview().getFeedback();
    h = localReviewFeedback.getUsefulVotes();
    i = localReviewFeedback.getFunnyVotes();
    j = localReviewFeedback.getCoolVotes();
    e.a(a(paramContext, 2131166803, localReviewFeedback.getUsefulVotes()));
    f.a(a(paramContext, 2131165877, localReviewFeedback.getFunnyVotes()));
    g.a(a(paramContext, 2131165656, localReviewFeedback.getCoolVotes()));
    paramContext = k.getReview().getUserFeedback();
    e.a(paramContext.isVotedUseful());
    f.a(paramContext.isVotedFunny());
    g.a(paramContext.isVotedCool());
  }
  
  public void a(ReviewFeedEntry paramReviewFeedEntry, int paramInt, Context paramContext)
  {
    k = paramReviewFeedEntry;
    b.a(paramReviewFeedEntry, paramInt, paramContext);
    c.a(paramReviewFeedEntry, paramContext);
    d.a(k, paramContext);
    a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */