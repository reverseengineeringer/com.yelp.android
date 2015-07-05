package com.yelp.android.ui.activities.reviewpage;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.ArrayList;
import java.util.Iterator;

class ah
  implements DialogInterface.OnClickListener
{
  ah(PanelReviewTranslate paramPanelReviewTranslate) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PanelReviewTranslate.a(a, PanelReviewTranslate.TranslateState.TRANSLATING);
    a.a();
    paramDialogInterface = new ArrayList();
    Iterator localIterator = PanelReviewTranslate.b(a).iterator();
    while (localIterator.hasNext())
    {
      YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)localIterator.next();
      if (localYelpBusinessReview.getTranslatedText() == null) {
        paramDialogInterface.add(localYelpBusinessReview.getId());
      }
    }
    a.a(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */