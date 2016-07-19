package com.yelp.android.ui.panels.businesspage;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.util.Linkify;
import android.text.util.Linkify.MatchFilter;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.LocalizedAttribute;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.AnalyticsSpan;
import com.yelp.android.ui.widgets.ListOfDetails;
import com.yelp.android.ui.widgets.SpannableRelativeLayout;
import com.yelp.android.util.StringUtils;
import java.util.Iterator;
import java.util.List;

public class a
  extends ListOfDetails
{
  private final YelpBusiness b;
  private final String c;
  private final String i;
  
  public a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2, List<LocalizedAttribute> paramList)
  {
    super(paramContext);
    int j = getContext().getResources().getDimensionPixelSize(2131361958);
    setPadding(getPaddingLeft(), j, getPaddingRight(), getPaddingBottom());
    b = paramYelpBusiness;
    c = paramString1;
    i = paramString2;
    a(paramList);
  }
  
  private void a(LocalizedAttribute paramLocalizedAttribute, SpannableRelativeLayout paramSpannableRelativeLayout)
  {
    TextView localTextView = (TextView)paramSpannableRelativeLayout.findViewById(2131690013);
    localTextView.setVisibility(0);
    localTextView.setText(paramLocalizedAttribute.f());
    paramSpannableRelativeLayout.setOnClickListener(new a.1(this, paramLocalizedAttribute));
  }
  
  public void a(List<LocalizedAttribute> paramList)
  {
    Iterator localIterator = paramList.iterator();
    LocalizedAttribute localLocalizedAttribute;
    while (localIterator.hasNext())
    {
      localLocalizedAttribute = (LocalizedAttribute)localIterator.next();
      paramList = localLocalizedAttribute.g();
      if ((!TextUtils.equals(paramList, b.am())) || (TextUtils.isEmpty(b.am())))
      {
        if (!Linkify.sUrlMatchFilter.acceptMatch(paramList, 0, paramList.length())) {
          break label164;
        }
        paramList = new SpannableString(paramList);
        Linkify.addLinks(paramList, 1);
        AnalyticsSpan.a(paramList, EventIri.OpenUrl);
      }
    }
    label164:
    for (;;)
    {
      paramList = (SpannableRelativeLayout)a(localLocalizedAttribute.h(), paramList);
      if ((localLocalizedAttribute.b()) && (!StringUtils.d(localLocalizedAttribute.f()))) {
        a(localLocalizedAttribute, paramList);
      }
      if (getChildCount() != 1) {
        break;
      }
      paramList.setLeft(true);
      break;
      if (getChildCount() > 0) {
        a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */