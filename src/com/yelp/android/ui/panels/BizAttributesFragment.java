package com.yelp.android.ui.panels;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.text.Layout.Alignment;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.r;
import com.yelp.android.au.a;
import com.yelp.android.serializable.SurveyAnswer;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.YelpCheckIn.ContributionType;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.activities.reviews.StarsView;
import com.yelp.android.ui.activities.tips.WriteTip;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.SpannableFrameLayout;
import com.yelp.android.ui.widgets.SpannedTextView;
import com.yelp.android.ui.widgets.TwoTierButton;
import com.yelp.android.ui.widgets.WidgetSpan;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

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
  private a n;
  private final ViewTreeObserver.OnGlobalLayoutListener o = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    private boolean a(TextView paramAnonymousTextView, String paramAnonymousString)
    {
      boolean bool = false;
      int i = paramAnonymousTextView.getWidth();
      int j = paramAnonymousTextView.getPaddingLeft();
      int k = paramAnonymousTextView.getPaddingRight();
      if (new StaticLayout(paramAnonymousString, paramAnonymousTextView.getPaint(), i - j - k, Layout.Alignment.ALIGN_CENTER, 1.0F, 0.0F, false).getHeight() > paramAnonymousTextView.getHeight()) {
        bool = true;
      }
      return bool;
    }
    
    public void onGlobalLayout()
    {
      int i;
      View localView;
      Object localObject2;
      Object localObject1;
      if (BizAttributesFragment.f(BizAttributesFragment.this) != null)
      {
        i = 0;
        if (i < BizAttributesFragment.f(BizAttributesFragment.this).getChildCount())
        {
          localView = BizAttributesFragment.f(BizAttributesFragment.this).getChildAt(i);
          localObject2 = null;
          localObject1 = null;
          if ((localView instanceof SpannedTextView))
          {
            localObject2 = (TextView)localView;
            localObject1 = String.valueOf(((TextView)localObject2).getText());
            if (!a((TextView)localObject2, (String)localObject1)) {
              break label222;
            }
          }
        }
      }
      for (;;)
      {
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject1 = "The string [" + (String)localObject1 + "] did not fit in a biz attribute button.";
          a.a((String)localObject1);
          a.a(new BizAttributesFragment.AttributeVotingStringException(BizAttributesFragment.this, (String)localObject1));
        }
        i += 1;
        break;
        if ((localView instanceof TwoTierButton))
        {
          TextView localTextView = ((TwoTierButton)localView).getLabel();
          Object localObject3 = String.valueOf(localTextView.getText());
          localObject1 = localObject2;
          if (a(localTextView, (String)localObject3)) {
            localObject1 = localObject3;
          }
          localObject3 = ((TwoTierButton)localView).getValue();
          localObject2 = String.valueOf(((TextView)localObject3).getText());
          if (a((TextView)localObject3, (String)localObject2))
          {
            localObject1 = localObject2;
            continue;
            ar.a(BizAttributesFragment.f(BizAttributesFragment.this), this);
            return;
            label222:
            localObject1 = null;
          }
        }
      }
    }
  };
  
  public static BizAttributesFragment a(YelpCheckIn paramYelpCheckIn)
  {
    boolean bool2 = true;
    BizAttributesFragment localBizAttributesFragment = a(paramYelpCheckIn.B(), paramYelpCheckIn.d(), true);
    Bundle localBundle = localBizAttributesFragment.getArguments();
    if (paramYelpCheckIn.s() == YelpCheckIn.ContributionType.REVIEW)
    {
      bool1 = true;
      localBundle.putBoolean("show_review", bool1);
      localBundle = localBizAttributesFragment.getArguments();
      if (paramYelpCheckIn.s() != YelpCheckIn.ContributionType.PHOTO_OR_VIDEO) {
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
  
  private void a(ArrayList<String> paramArrayList, ApiRequest.b<ArrayList<String>> paramb)
  {
    if (h < 4)
    {
      new r(g.aD(), paramArrayList, paramb).f(new Void[0]);
      h += 1;
    }
  }
  
  private void a(List<SurveyAnswer> paramList)
  {
    float f1 = 1.0F / paramList.size();
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      final SurveyAnswer localSurveyAnswer = (SurveyAnswer)localIterator.next();
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, -1, f1);
      int i1;
      label70:
      Object localObject1;
      Object localObject2;
      if (localSurveyAnswer.d() == null) {
        if (l)
        {
          i1 = 2130772234;
          localObject1 = new SpannedTextView(getActivity(), null, i1);
          localObject2 = (SpannedTextView)localObject1;
          if (paramList.size() >= 4) {
            break label179;
          }
          i1 = 2131296487;
          label105:
          ((SpannedTextView)localObject2).setTextAppearance(getActivity(), i1);
          ((SpannedTextView)localObject2).setText(localSurveyAnswer.e());
        }
      }
      for (;;)
      {
        ((View)localObject1).setLayoutParams(localLayoutParams);
        ((View)localObject1).setPadding(n.j, 0, n.j, 0);
        ((View)localObject1).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            paramAnonymousView = (SurveyQuestion)BizAttributesFragment.a(BizAttributesFragment.this).remove(0);
            BizAttributesFragment.k(BizAttributesFragment.this).add(localSurveyAnswer.c());
            TreeMap localTreeMap = new TreeMap();
            localTreeMap.put("answer_identifier", localSurveyAnswer.c());
            localTreeMap.put("question_identifier", paramAnonymousView.b());
            if (BizAttributesFragment.h(BizAttributesFragment.this)) {}
            for (paramAnonymousView = EventIri.CheckInsReceiptSurveyQuestion;; paramAnonymousView = EventIri.ReviewPostedSurveyQuestion)
            {
              AppData.a(paramAnonymousView, localTreeMap);
              BizAttributesFragment.l(BizAttributesFragment.this).a(localSurveyAnswer.b());
              return;
            }
          }
        });
        f.addView((View)localObject1);
        break;
        i1 = 2130772425;
        break label70;
        label179:
        i1 = 2131296496;
        break label105;
        localObject1 = new TwoTierButton(getActivity());
        if (!l) {
          ((View)localObject1).setBackgroundResource(2130838975);
        }
        localObject2 = (TwoTierButton)localObject1;
        ((TwoTierButton)localObject2).setValue(localSurveyAnswer.e());
        ((TwoTierButton)localObject2).setLabel(localSurveyAnswer.d());
        ((TwoTierButton)localObject2).getValue().setTextAppearance(getActivity(), 2131296487);
        ((TwoTierButton)localObject2).getLabel().setTextAppearance(getActivity(), 2131296466);
      }
    }
  }
  
  private SpannableFrameLayout b(ViewGroup paramViewGroup)
  {
    paramViewGroup = (SpannableFrameLayout)((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903140, paramViewGroup, false);
    final StarsView localStarsView = (StarsView)paramViewGroup.findViewById(2131689999);
    localStarsView.setNumStars(g.H());
    localStarsView.setOnStarsClicked(new Runnable()
    {
      public void run()
      {
        if (BizAttributesFragment.i(BizAttributesFragment.this) != null) {
          BizAttributesFragment.i(BizAttributesFragment.this).a();
        }
        AppData.a(EventIri.CheckInsReceiptReviewStars);
        Intent localIntent = ActivityReviewWrite.a(getActivity(), BizAttributesFragment.c(BizAttributesFragment.this), localStarsView.getNumStars(), ReviewSource.PostCheckInSurvey);
        startActivity(localIntent);
      }
    });
    return paramViewGroup;
  }
  
  private View c(ViewGroup paramViewGroup)
  {
    paramViewGroup = getActivity().getLayoutInflater().inflate(2130903164, paramViewGroup, false);
    if (!Features.video_capture.isEnabled()) {
      ((LeftDrawableButton)paramViewGroup.findViewById(2131690078)).setText(getString(2131165464));
    }
    paramViewGroup.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (BizAttributesFragment.i(BizAttributesFragment.this) != null) {
          BizAttributesFragment.i(BizAttributesFragment.this).a();
        }
        AppData.a(EventIri.CheckInsReceiptAddPhotoVideoButton, "business_id", BizAttributesFragment.c(BizAttributesFragment.this).aD());
        startActivity(PhotoTeaser.a(getActivity(), BizAttributesFragment.c(BizAttributesFragment.this)));
      }
    });
    return paramViewGroup;
  }
  
  public View a(ViewGroup paramViewGroup)
  {
    paramViewGroup = getActivity().getLayoutInflater().inflate(2130903165, paramViewGroup, false);
    paramViewGroup.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (BizAttributesFragment.i(BizAttributesFragment.this) != null) {
          BizAttributesFragment.i(BizAttributesFragment.this).a();
        }
        AppData.a(EventIri.CheckInsReceiptTipButton, "business_id", BizAttributesFragment.c(BizAttributesFragment.this).aD());
        startActivity(WriteTip.a(getActivity(), BizAttributesFragment.c(BizAttributesFragment.this)));
      }
    });
    return paramViewGroup;
  }
  
  public void a()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("number_answered", Integer.valueOf(b.size()));
    if (a.size() > 0) {
      localTreeMap.put("unanswered_question_identifier", ((SurveyQuestion)a.get(0)).b());
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
      AppData.a(EventIri.ReviewPostedSurveyQuestionFinished, localTreeMap);
    }
    j = new Runnable()
    {
      public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ArrayList<String> paramAnonymousArrayList)
      {
        if ((paramAnonymousArrayList != null) && (!paramAnonymousArrayList.isEmpty()))
        {
          BizAttributesFragment.a(BizAttributesFragment.this, paramAnonymousArrayList);
          BizAttributesFragment.b().schedule(BizAttributesFragment.j(BizAttributesFragment.this), 3L, TimeUnit.SECONDS);
        }
      }
      
      public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
      {
        BizAttributesFragment.b().schedule(BizAttributesFragment.j(BizAttributesFragment.this), 3L, TimeUnit.SECONDS);
      }
    }
    {
      public void run()
      {
        BizAttributesFragment.a(BizAttributesFragment.this, BizAttributesFragment.k(BizAttributesFragment.this), a);
      }
    };
    h = 0;
    j.run();
  }
  
  public void a(a parama)
  {
    n = parama;
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
    for (int i1 = 2130837993;; i1 = 2130838272)
    {
      f.setBackgroundDrawable(getResources().getDrawable(i1));
      e = new BizAttributePanel(getActivity(), new BizAttributePanel.a()
      {
        public Spanned a()
        {
          if (BizAttributesFragment.a(BizAttributesFragment.this).isEmpty())
          {
            Object localObject;
            if (BizAttributesFragment.b(BizAttributesFragment.this)) {
              if (BizAttributesFragment.c(BizAttributesFragment.this).w() == ReviewState.DRAFTED) {
                localObject = getActivity().getString(2131166627);
              }
            }
            for (;;)
            {
              localObject = new SpannableStringBuilder((CharSequence)localObject);
              ((SpannableStringBuilder)localObject).setSpan(new StyleSpan(1), 0, ((SpannableStringBuilder)localObject).length(), 18);
              return (Spanned)localObject;
              localObject = getActivity().getString(2131165531);
              continue;
              if (BizAttributesFragment.d(BizAttributesFragment.this)) {
                localObject = getActivity().getString(2131166527);
              } else {
                localObject = getActivity().getString(2131165467);
              }
            }
          }
          return Html.fromHtml(BizAttributesFragment.e(BizAttributesFragment.this).c());
        }
        
        public View a(ViewGroup paramAnonymousViewGroup)
        {
          if (!BizAttributesFragment.a(BizAttributesFragment.this).isEmpty())
          {
            BizAttributesFragment.a(BizAttributesFragment.this, (SurveyQuestion)BizAttributesFragment.a(BizAttributesFragment.this).get(0));
            BizAttributesFragment.f(BizAttributesFragment.this).removeAllViews();
            BizAttributesFragment.a(BizAttributesFragment.this, BizAttributesFragment.e(BizAttributesFragment.this).d());
            BizAttributesFragment.f(BizAttributesFragment.this).getViewTreeObserver().addOnGlobalLayoutListener(BizAttributesFragment.g(BizAttributesFragment.this));
            return BizAttributesFragment.f(BizAttributesFragment.this);
          }
          if (BizAttributesFragment.h(BizAttributesFragment.this))
          {
            if (BizAttributesFragment.d(BizAttributesFragment.this))
            {
              AppData.a(ViewIri.CheckInsReceiptAddPhotoVideoButton);
              return BizAttributesFragment.a(BizAttributesFragment.this, paramAnonymousViewGroup);
            }
            if (BizAttributesFragment.b(BizAttributesFragment.this))
            {
              AppData.a(ViewIri.CheckInsReceiptReviewStars);
              return BizAttributesFragment.b(BizAttributesFragment.this, paramAnonymousViewGroup);
            }
            AppData.a(ViewIri.CheckInsReceiptTipButton);
            return BizAttributesFragment.this.a(paramAnonymousViewGroup);
          }
          if (BizAttributesFragment.i(BizAttributesFragment.this) != null) {
            BizAttributesFragment.i(BizAttributesFragment.this).a();
          }
          return null;
        }
        
        public void a(boolean paramAnonymousBoolean)
        {
          BizAttributesFragment.this.a(paramAnonymousBoolean);
        }
      });
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
  
  private class AttributeVotingStringException
    extends Exception
  {
    private static final long serialVersionUID = -5073834080572160415L;
    
    public AttributeVotingStringException(String paramString)
    {
      super();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.BizAttributesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */