package com.yelp.android.ui.panels.businesspage;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.g.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpHoursPair;
import com.yelp.android.services.f;
import com.yelp.android.ui.util.AnalyticsSpan;
import com.yelp.android.ui.widgets.ListOfDetails;
import com.yelp.android.ui.widgets.SpannableWidget;
import java.util.List;
import java.util.TimeZone;

public class c
  extends ListOfDetails
{
  private YelpBusiness b;
  
  public c(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    super(paramContext);
    b = paramYelpBusiness;
    b();
  }
  
  private void b()
  {
    f();
    d();
    e();
    h();
    c();
    g();
    if (getChildCount() > 0)
    {
      ((SpannableWidget)getChildAt(0)).setLeft(true);
      a();
    }
  }
  
  private void c()
  {
    String str1 = b.y();
    if (TextUtils.isEmpty(str1)) {
      return;
    }
    View localView = getNewRow();
    b(localView).setText(2131166801);
    TextView localTextView = a(localView);
    a(localTextView);
    SpannableString localSpannableString = SpannableString.valueOf(str1);
    Object localObject = new g.a().a(b.n()).a(EventIri.BusinessOpenURL).a("id", b.aD());
    com.yelp.android.analytics.h.a(getContext(), (g.a)localObject);
    g localg = ((g.a)localObject).a();
    String str2 = b.al();
    if (TextUtils.isEmpty(str2)) {}
    for (localObject = str1;; localObject = str2)
    {
      localObject = new c.1(this, localg, (String)localObject);
      localSpannableString.setSpan(new AnalyticsSpan(localg, str2), 0, localSpannableString.length(), 33);
      localTextView.setText(localSpannableString);
      localView.setOnClickListener((View.OnClickListener)localObject);
      localView.findViewById(2131690012).setVisibility(0);
      com.yelp.android.ui.util.h.a(localView, 2131166801, str1);
      return;
    }
  }
  
  private void d()
  {
    Object localObject2 = b.aj();
    Object localObject1 = b.ai();
    if ((TextUtils.isEmpty((CharSequence)localObject2)) && (TextUtils.isEmpty((CharSequence)localObject1))) {
      return;
    }
    if (TextUtils.isEmpty((CharSequence)localObject1)) {
      localObject1 = localObject2;
    }
    for (;;)
    {
      Object localObject3 = getNewRow();
      b((View)localObject3).setText(2131166140);
      TextView localTextView = a((View)localObject3);
      a(localTextView);
      localObject2 = SpannableString.valueOf((CharSequence)localObject2);
      g localg = new g(EventIri.BusinessOpenMenuURL, b.n(), b.aD());
      c.2 local2 = new c.2(this, localg, (String)localObject1);
      ((SpannableString)localObject2).setSpan(new AnalyticsSpan(localg, (String)localObject1), 0, ((SpannableString)localObject2).length(), 33);
      localTextView.setText((CharSequence)localObject2);
      ((View)localObject3).setOnClickListener(local2);
      ((View)localObject3).findViewById(2131690012).setVisibility(0);
      com.yelp.android.ui.util.h.a((View)localObject3, 2131166140, (String)localObject1);
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
    Object localObject2 = b.aM();
    Object localObject1 = b.d();
    YelpHoursPair[] arrayOfYelpHoursPair = (YelpHoursPair[])((List)localObject2).toArray(new YelpHoursPair[((List)localObject2).size()]);
    List localList = b.aQ();
    if (localList.size() == 0) {
      return;
    }
    localObject2 = getNewRow();
    b((View)localObject2).setText(2131165996);
    TextView localTextView = a((View)localObject2);
    if (f.a(arrayOfYelpHoursPair, (TimeZone)localObject1)) {}
    for (localObject1 = getContext().getString(2131165564);; localObject1 = TextUtils.join("\n", localList))
    {
      localTextView.setText((CharSequence)localObject1);
      com.yelp.android.ui.util.h.a((View)localObject2, 2131165996, (String)localObject1);
      return;
    }
  }
  
  private void f()
  {
    String str = b.an();
    if (TextUtils.isEmpty(str)) {
      return;
    }
    View localView = getNewRow();
    b(localView).setText(2131166725);
    a(localView).setText(str);
    com.yelp.android.ui.util.h.a(localView, 2131166725, str);
  }
  
  private void g()
  {
    if (TextUtils.isEmpty(b.am())) {
      return;
    }
    Object localObject = new SpannableString(b.am());
    ((Spannable)localObject).setSpan(new URLSpan(b.ah()), 0, b.am().length(), 33);
    AnalyticsSpan.a((Spanned)localObject, EventIri.OpenUrl);
    localObject = a(getResources().getString(2131165984), (CharSequence)localObject);
    ((View)localObject).findViewById(2131690012).setVisibility(0);
    ((View)localObject).setOnClickListener(new c.3(this));
    com.yelp.android.ui.util.h.a((View)localObject, 2131165984, b.ah());
  }
  
  private void h()
  {
    String str = b.as();
    if (TextUtils.isEmpty(str)) {
      return;
    }
    View localView = getNewRow();
    b(localView).setText(2131166334);
    a(localView).setText(str);
    TextView localTextView = (TextView)localView.findViewById(2131690013);
    localTextView.setVisibility(0);
    localTextView.setText(2131165582);
    localView.setOnClickListener(new c.4(this));
    com.yelp.android.ui.util.h.a(localView, 2131166334, str);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */