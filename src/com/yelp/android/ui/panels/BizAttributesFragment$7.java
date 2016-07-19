package com.yelp.android.ui.panels;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.SurveyAnswer;
import com.yelp.android.serializable.SurveyQuestion;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

class BizAttributesFragment$7
  implements View.OnClickListener
{
  BizAttributesFragment$7(BizAttributesFragment paramBizAttributesFragment, SurveyAnswer paramSurveyAnswer) {}
  
  public void onClick(View paramView)
  {
    paramView = (SurveyQuestion)BizAttributesFragment.a(b).remove(0);
    BizAttributesFragment.k(b).add(a.c());
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("answer_identifier", a.c());
    localTreeMap.put("question_identifier", paramView.b());
    if (BizAttributesFragment.h(b)) {}
    for (paramView = EventIri.CheckInsReceiptSurveyQuestion;; paramView = EventIri.ReviewPostedSurveyQuestion)
    {
      AppData.a(paramView, localTreeMap);
      BizAttributesFragment.l(b).a(a.b());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.BizAttributesFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */