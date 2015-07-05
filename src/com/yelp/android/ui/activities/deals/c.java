package com.yelp.android.ui.activities.deals;

import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.util.AnalyticsSpan;
import com.yelp.android.ui.util.au;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class c
  extends au<CharSequence>
{
  c(ActivityDealDetail paramActivityDealDetail) {}
  
  public void a(List<CharSequence> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      paramList = new SpannableString((CharSequence)localIterator.next());
      if (!Linkify.addLinks(paramList, 15)) {
        break label79;
      }
      paramList = AnalyticsSpan.addAnalyticsToSpannedWithUrls(paramList, EventIri.OpenUrl);
    }
    label79:
    for (;;)
    {
      localArrayList.add(paramList);
      break;
      super.a(localArrayList);
      return;
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = LayoutInflater.from(a).inflate(2130903292, a.h, false);
    }
    paramView = (CharSequence)getItem(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131493145);
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    localTextView.setText(paramView);
    if (TextUtils.isEmpty(paramView)) {}
    for (paramInt = 8;; paramInt = 0)
    {
      paramViewGroup.setVisibility(paramInt);
      return paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */