package com.yelp.android.ui.panels;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.SurveyAnswer;
import com.yelp.android.serializable.SurveyQuestion;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

class m
  implements View.OnClickListener
{
  m(BizAttributesFragment paramBizAttributesFragment, SurveyAnswer paramSurveyAnswer) {}
  
  public void onClick(View paramView)
  {
    paramView = (SurveyQuestion)BizAttributesFragment.a(b).remove(0);
    BizAttributesFragment.k(b).add(a.getAnswerIdentifier());
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("answer_identifier", a.getAnswerIdentifier());
    localTreeMap.put("question_identifier", paramView.getQuestionIdentifier());
    if (BizAttributesFragment.h(b)) {}
    for (paramView = EventIri.CheckInsReceiptSurveyQuestion;; paramView = ReviewEventIri.ReviewPostedSurveyQuestion)
    {
      AppData.a((b)paramView, localTreeMap);
      BizAttributesFragment.l(b).a(a.getSuccessMessage());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */