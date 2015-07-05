package com.yelp.android.ui.panels;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.t;
import com.yelp.android.serializable.SurveyAnswer;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.YelpCheckIn.ContributionType;
import com.yelp.android.ui.activities.reviews.StarsView;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.SpannableFrameLayout;
import com.yelp.android.ui.widgets.SpannedTextView;
import com.yelp.android.ui.widgets.TwoTierButton;
import com.yelp.android.ui.widgets.WidgetSpan;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public class BizAttributesFragment
  extends Fragment
{
  private static final ScheduledExecutorService i = ;
  private ArrayList<SurveyQuestion> a;
  private ArrayList<String> b;
  private SurveyQuestion c = null;
  private int d;
  private BizAttributePanel e;
  private WidgetSpan f;
  private YelpBusiness g;
  private int h;
  private Runnable j;
  private boolean k;
  private boolean l;
  private boolean m;
  private o n;
  private final ViewTreeObserver.OnGlobalLayoutListener o = new n(this);
  
  public static BizAttributesFragment a(YelpCheckIn paramYelpCheckIn)
  {
    boolean bool2 = true;
    BizAttributesFragment localBizAttributesFragment = a(paramYelpCheckIn.getSurveyQuestions(), paramYelpCheckIn.getBusiness(), true);
    Bundle localBundle = localBizAttributesFragment.getArguments();
    if (paramYelpCheckIn.getContributionType() == YelpCheckIn.ContributionType.REVIEW)
    {
      bool1 = true;
      localBundle.putBoolean("show_review", bool1);
      localBundle = localBizAttributesFragment.getArguments();
      if (paramYelpCheckIn.getContributionType() != YelpCheckIn.ContributionType.PHOTO_OR_VIDEO) {
        break label74;
      }
    }
    label74:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localBundle.putBoolean("add_photo_video", bool1);
      return localBizAttributesFragment;
      bool1 = false;
      break;
    }
  }
  
  public static BizAttributesFragment a(ArrayList<SurveyQuestion> paramArrayList, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    BizAttributesFragment localBizAttributesFragment = new BizAttributesFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("survey_questions", paramArrayList);
    localBundle.putParcelable("business", paramYelpBusiness);
    localBundle.putBoolean("is_check_in", paramBoolean);
    localBizAttributesFragment.setArguments(localBundle);
    return localBizAttributesFragment;
  }
  
  private void a(ArrayList<SurveyAnswer> paramArrayList)
  {
    float f1 = 1.0F / paramArrayList.size();
    Iterator localIterator = paramArrayList.iterator();
    if (localIterator.hasNext())
    {
      SurveyAnswer localSurveyAnswer = (SurveyAnswer)localIterator.next();
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, -1, f1);
      int i1;
      label66:
      Object localObject1;
      Object localObject2;
      if (localSurveyAnswer.getText() == null) {
        if (l)
        {
          i1 = 2130772170;
          localObject1 = new SpannedTextView(getActivity(), null, i1);
          localObject2 = (SpannedTextView)localObject1;
          if (paramArrayList.size() >= 4) {
            break label172;
          }
          i1 = 2131689616;
          label99:
          ((SpannedTextView)localObject2).setTextAppearance(getActivity(), i1);
          ((SpannedTextView)localObject2).setText(localSurveyAnswer.getTitle());
        }
      }
      for (;;)
      {
        ((View)localObject1).setLayoutParams(localLayoutParams);
        ((View)localObject1).setPadding(ao.j, 0, ao.j, 0);
        ((View)localObject1).setOnClickListener(new m(this, localSurveyAnswer));
        f.addView((View)localObject1);
        break;
        i1 = 2130772316;
        break label66;
        label172:
        i1 = 2131689709;
        break label99;
        localObject1 = new TwoTierButton(getActivity());
        if (!l) {
          ((View)localObject1).setBackgroundResource(2130838546);
        }
        localObject2 = (TwoTierButton)localObject1;
        ((TwoTierButton)localObject2).setValue(localSurveyAnswer.getTitle());
        ((TwoTierButton)localObject2).setLabel(localSurveyAnswer.getText());
        ((TwoTierButton)localObject2).getValue().setTextAppearance(getActivity(), 2131689616);
        ((TwoTierButton)localObject2).getLabel().setTextAppearance(getActivity(), 2131689699);
      }
    }
  }
  
  private void a(ArrayList<String> paramArrayList, com.yelp.android.appdata.webrequests.m<ArrayList<String>> paramm)
  {
    if (h < 4)
    {
      new t(g.getId(), paramArrayList, paramm).execute(new Void[0]);
      h += 1;
    }
  }
  
  private SpannableFrameLayout b(ViewGroup paramViewGroup)
  {
    paramViewGroup = (SpannableFrameLayout)((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903128, paramViewGroup, false);
    StarsView localStarsView = (StarsView)paramViewGroup.findViewById(2131493334);
    localStarsView.setNumStars(g.getUserReviewRating());
    localStarsView.setOnStarsClicked(new j(this, localStarsView));
    return paramViewGroup;
  }
  
  private View c(ViewGroup paramViewGroup)
  {
    paramViewGroup = getActivity().getLayoutInflater().inflate(2130903146, paramViewGroup, false);
    if (!Features.video_capture.isEnabled()) {
      ((LeftDrawableButton)paramViewGroup.findViewById(2131493386)).setText(getString(2131165338));
    }
    paramViewGroup.setOnClickListener(new k(this));
    return paramViewGroup;
  }
  
  public View a(ViewGroup paramViewGroup)
  {
    paramViewGroup = getActivity().getLayoutInflater().inflate(2130903147, paramViewGroup, false);
    paramViewGroup.setOnClickListener(new l(this));
    return paramViewGroup;
  }
  
  public void a()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("number_answered", Integer.valueOf(b.size()));
    if (a.size() > 0) {
      localTreeMap.put("unanswered_question_identifier", ((SurveyQuestion)a.get(0)).getQuestionIdentifier());
    }
    if (l)
    {
      localTreeMap.put("number_total", Integer.valueOf(d));
      AppData.a(EventIri.CheckInsReceiptSurveyQuestionFinished, localTreeMap);
    }
    while (b.isEmpty())
    {
      return;
      localTreeMap.put("number_received", Integer.valueOf(d));
      AppData.a(ReviewEventIri.ReviewPostedSurveyQuestionFinished, localTreeMap);
    }
    j = new i(this, new h(this));
    h = 0;
    j.run();
  }
  
  public void a(o paramo)
  {
    n = paramo;
  }
  
  public void a(boolean paramBoolean)
  {
    if (f != null)
    {
      int i1 = 0;
      while (i1 < f.getChildCount())
      {
        f.getChildAt(i1).setClickable(paramBoolean);
        i1 += 1;
      }
      f.setClickable(paramBoolean);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null) {}
    for (a = getArguments().getParcelableArrayList("survey_questions");; a = paramBundle.getParcelableArrayList("saved_survey_questions"))
    {
      d = a.size();
      g = ((YelpBusiness)getArguments().getParcelable("business"));
      k = getArguments().getBoolean("show_review");
      m = getArguments().getBoolean("add_photo_video");
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = new LinearLayout(getActivity());
    paramLayoutInflater.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    paramLayoutInflater.setOrientation(1);
    b = new ArrayList();
    l = getArguments().getBoolean("is_check_in");
    if (!a.isEmpty())
    {
      f = new WidgetSpan(getActivity());
      paramViewGroup = new LinearLayout.LayoutParams(-1, -1);
      f.setLayoutParams(paramViewGroup);
      if (!l) {
        break label159;
      }
    }
    label159:
    for (int i1 = 2130837873;; i1 = 2130838070)
    {
      f.setBackgroundDrawable(getResources().getDrawable(i1));
      e = new BizAttributePanel(getActivity(), new g(this));
      paramLayoutInflater.addView(e);
      return paramLayoutInflater;
    }
  }
  
  public void onPause()
  {
    super.onPause();
    e.b();
    e.a();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("saved_survey_questions", a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.BizAttributesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */