package com.yelp.android.ui.panels.businesspage;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.util.Linkify;
import android.text.util.Linkify.MatchFilter;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.AttributedLabelValuePair;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpHoursPair;
import com.yelp.android.services.r;
import com.yelp.android.ui.util.AnalyticsSpan;
import com.yelp.android.ui.util.k;
import com.yelp.android.ui.widgets.ListOfDetails;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

public class f
  extends ListOfDetails
{
  private String g;
  private YelpBusiness h;
  
  public f(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    super(paramContext);
    h = paramYelpBusiness;
    b();
  }
  
  private void b()
  {
    setAnalyticsRequestId(h.getYelpRequestId());
    a(getResources().getString(2131166105));
    e();
    f();
    d();
    c();
    Iterator localIterator = h.getLocalizedAttributes().iterator();
    AttributedLabelValuePair localAttributedLabelValuePair;
    Object localObject;
    if (localIterator.hasNext())
    {
      localAttributedLabelValuePair = (AttributedLabelValuePair)localIterator.next();
      localObject = localAttributedLabelValuePair.getValue();
      if (!Linkify.sUrlMatchFilter.acceptMatch((CharSequence)localObject, 0, ((CharSequence)localObject).length())) {
        break label151;
      }
      localObject = new SpannableString((CharSequence)localObject);
      Linkify.addLinks((Spannable)localObject, 1);
      AnalyticsSpan.addAnalyticsToSpannedWithUrls((Spanned)localObject, EventIri.OpenUrl);
    }
    label151:
    for (;;)
    {
      a(localAttributedLabelValuePair.getLabel(), (CharSequence)localObject);
      break;
      if (getChildCount() == 1)
      {
        setVisibility(8);
        return;
      }
      a();
      return;
    }
  }
  
  private void c()
  {
    String str1 = h.getBestUrl();
    if (TextUtils.isEmpty(str1)) {
      return;
    }
    View localView = getNewRow();
    b(localView).setText(2131166834);
    TextView localTextView = a(localView);
    a(localTextView);
    SpannableString localSpannableString = SpannableString.valueOf(str1);
    Object localObject = new com.yelp.android.analytics.h().a(g).a(EventIri.BusinessOpenURL).a("id", h.getId());
    i.a(getContext(), (com.yelp.android.analytics.h)localObject);
    com.yelp.android.analytics.g localg = ((com.yelp.android.analytics.h)localObject).a();
    String str2 = h.getUrl();
    if (TextUtils.isEmpty(str2)) {}
    for (localObject = str1;; localObject = str2)
    {
      localObject = new g(this, localg, (String)localObject);
      localSpannableString.setSpan(new AnalyticsSpan(localg, str2), 0, localSpannableString.length(), 33);
      localTextView.setText(localSpannableString);
      localView.setOnClickListener((View.OnClickListener)localObject);
      localView.findViewById(2131493345).setVisibility(0);
      k.a(localView, 2131166834, str1);
      return;
    }
  }
  
  private void d()
  {
    Object localObject2 = h.getMenuUrl();
    Object localObject1 = h.getMenuDisplayUrl();
    if ((TextUtils.isEmpty((CharSequence)localObject2)) && (TextUtils.isEmpty((CharSequence)localObject1))) {
      return;
    }
    if (TextUtils.isEmpty((CharSequence)localObject1)) {
      localObject1 = localObject2;
    }
    for (;;)
    {
      Object localObject3 = getNewRow();
      b((View)localObject3).setText(2131166078);
      TextView localTextView = a((View)localObject3);
      a(localTextView);
      localObject2 = SpannableString.valueOf((CharSequence)localObject2);
      com.yelp.android.analytics.g localg = new com.yelp.android.analytics.g(EventIri.BusinessOpenMenuURL, g, h.getId());
      h localh = new h(this, localg, (String)localObject1);
      ((SpannableString)localObject2).setSpan(new AnalyticsSpan(localg, (String)localObject1), 0, ((SpannableString)localObject2).length(), 33);
      localTextView.setText((CharSequence)localObject2);
      ((View)localObject3).setOnClickListener(localh);
      ((View)localObject3).findViewById(2131493345).setVisibility(0);
      k.a((View)localObject3, 2131166078, (String)localObject1);
      return;
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject2 = localObject1;
      }
      else
      {
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
    }
  }
  
  private void e()
  {
    Object localObject2 = h.getHours();
    Object localObject1 = h.getTimeZone();
    YelpHoursPair[] arrayOfYelpHoursPair = (YelpHoursPair[])((List)localObject2).toArray(new YelpHoursPair[((List)localObject2).size()]);
    List localList = h.getLocalizedHours();
    if (localList.size() == 0) {
      return;
    }
    localObject2 = getNewRow();
    b((View)localObject2).setText(2131165931);
    TextView localTextView = a((View)localObject2);
    if (r.a(arrayOfYelpHoursPair, (TimeZone)localObject1)) {}
    for (localObject1 = getContext().getString(2131165428);; localObject1 = TextUtils.join("\n", localList))
    {
      localTextView.setText((CharSequence)localObject1);
      k.a((View)localObject2, 2131165931, (String)localObject1);
      return;
    }
  }
  
  private void f()
  {
    String str = h.getTransitDescription();
    if (TextUtils.isEmpty(str)) {
      return;
    }
    View localView = getNewRow();
    b(localView).setText(2131166744);
    a(localView).setText(str);
    k.a(localView, 2131166744, str);
  }
  
  private void setAnalyticsRequestId(String paramString)
  {
    g = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */