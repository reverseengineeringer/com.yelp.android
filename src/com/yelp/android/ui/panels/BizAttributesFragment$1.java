package com.yelp.android.ui.panels;

import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.widgets.WidgetSpan;
import java.util.ArrayList;

class BizAttributesFragment$1
  implements BizAttributePanel.a
{
  BizAttributesFragment$1(BizAttributesFragment paramBizAttributesFragment) {}
  
  public Spanned a()
  {
    if (BizAttributesFragment.a(a).isEmpty())
    {
      Object localObject;
      if (BizAttributesFragment.b(a)) {
        if (BizAttributesFragment.c(a).w() == ReviewState.DRAFTED) {
          localObject = a.getActivity().getString(2131166627);
        }
      }
      for (;;)
      {
        localObject = new SpannableStringBuilder((CharSequence)localObject);
        ((SpannableStringBuilder)localObject).setSpan(new StyleSpan(1), 0, ((SpannableStringBuilder)localObject).length(), 18);
        return (Spanned)localObject;
        localObject = a.getActivity().getString(2131165531);
        continue;
        if (BizAttributesFragment.d(a)) {
          localObject = a.getActivity().getString(2131166527);
        } else {
          localObject = a.getActivity().getString(2131165467);
        }
      }
    }
    return Html.fromHtml(BizAttributesFragment.e(a).c());
  }
  
  public View a(ViewGroup paramViewGroup)
  {
    if (!BizAttributesFragment.a(a).isEmpty())
    {
      BizAttributesFragment.a(a, (SurveyQuestion)BizAttributesFragment.a(a).get(0));
      BizAttributesFragment.f(a).removeAllViews();
      BizAttributesFragment.a(a, BizAttributesFragment.e(a).d());
      BizAttributesFragment.f(a).getViewTreeObserver().addOnGlobalLayoutListener(BizAttributesFragment.g(a));
      return BizAttributesFragment.f(a);
    }
    if (BizAttributesFragment.h(a))
    {
      if (BizAttributesFragment.d(a))
      {
        AppData.a(ViewIri.CheckInsReceiptAddPhotoVideoButton);
        return BizAttributesFragment.a(a, paramViewGroup);
      }
      if (BizAttributesFragment.b(a))
      {
        AppData.a(ViewIri.CheckInsReceiptReviewStars);
        return BizAttributesFragment.b(a, paramViewGroup);
      }
      AppData.a(ViewIri.CheckInsReceiptTipButton);
      return a.a(paramViewGroup);
    }
    if (BizAttributesFragment.i(a) != null) {
      BizAttributesFragment.i(a).a();
    }
    return null;
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.BizAttributesFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */