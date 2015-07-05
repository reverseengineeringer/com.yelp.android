package com.yelp.android.ui.activities.reviewpage;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Iterator;

class ag
  implements View.OnClickListener
{
  ag(PanelReviewTranslate paramPanelReviewTranslate) {}
  
  public void onClick(View paramView)
  {
    if (PanelReviewTranslate.a(a) == PanelReviewTranslate.TranslateState.TRANSLATED)
    {
      PanelReviewTranslate.a(a, PanelReviewTranslate.TranslateState.ORIGINAL);
      paramView = PanelReviewTranslate.b(a).iterator();
      while (paramView.hasNext()) {
        ((YelpBusinessReview)paramView.next()).setDisplayTranslatedText(false);
      }
      new ObjectDirtyEvent(PanelReviewTranslate.b(a), "com.yelp.android.review.translate").a(a.getContext());
      a.a();
      if (PanelReviewTranslate.c(a) != null) {
        PanelReviewTranslate.c(a).a();
      }
    }
    do
    {
      do
      {
        return;
      } while (PanelReviewTranslate.a(a) != PanelReviewTranslate.TranslateState.ORIGINAL);
      paramView = new ArrayList();
      Iterator localIterator = PanelReviewTranslate.b(a).iterator();
      while (localIterator.hasNext())
      {
        YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)localIterator.next();
        if (localYelpBusinessReview.getTranslatedText() == null) {
          paramView.add(localYelpBusinessReview.getId());
        }
      }
      if (paramView.size() > 0)
      {
        localIterator = PanelReviewTranslate.b(a).iterator();
        while (localIterator.hasNext()) {
          ((YelpBusinessReview)localIterator.next()).setDisplayTranslatedText(true);
        }
        PanelReviewTranslate.a(a, PanelReviewTranslate.TranslateState.TRANSLATING);
        a.a();
        a.a(paramView);
        return;
      }
      PanelReviewTranslate.a(a, PanelReviewTranslate.TranslateState.TRANSLATED);
      paramView = PanelReviewTranslate.b(a).iterator();
      while (paramView.hasNext()) {
        ((YelpBusinessReview)paramView.next()).setDisplayTranslatedText(true);
      }
      new ObjectDirtyEvent(PanelReviewTranslate.b(a), "com.yelp.android.review.translate").a(a.getContext());
      a.a();
    } while (PanelReviewTranslate.c(a) == null);
    PanelReviewTranslate.c(a).a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */