package com.yelp.android.ui.activities.reviews;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.analytics.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dy;
import com.yelp.android.appdata.webrequests.dy.a;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.ui.activities.ActivityFullScreenAward;
import com.yelp.android.ui.activities.ActivityFullScreenAward.AwardType;
import com.yelp.android.ui.activities.addphoto.AddBusinessPhoto;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.panels.BizAttributesFragment;
import com.yelp.android.ui.panels.BizAttributesFragment.a;
import com.yelp.android.ui.panels.YourNextReviewAwaitsFragment;
import com.yelp.android.ui.panels.YourNextReviewAwaitsFragment.a;
import com.yelp.android.ui.util.ActivityYelpHopScotchMediaList;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.av.a;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.MessageAlertBox;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class ActivityReviewComplete
  extends ActivityYelpHopScotchMediaList
  implements YourNextReviewAwaitsFragment.a
{
  private boolean d;
  private String e;
  private String f;
  private int g;
  private String h;
  private boolean i;
  private dy j;
  private LinearLayout k;
  private WebImageView l;
  private LeftDrawableButton m;
  private View n;
  private TextView o;
  private BizAttributesFragment p;
  private final BizAttributesFragment.a q = new BizAttributesFragment.a()
  {
    public void a()
    {
      ActivityReviewComplete.d(ActivityReviewComplete.this).a();
      av.a local1 = new av.a()
      {
        public void onAnimationEnd(Animation paramAnonymous2Animation)
        {
          getSupportFragmentManager().a().a(ActivityReviewComplete.d(ActivityReviewComplete.this)).a();
        }
      };
      View localView = ActivityReviewComplete.d(ActivityReviewComplete.this).getView();
      if (ActivityReviewComplete.e(ActivityReviewComplete.this).getVisibility() == 0)
      {
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
        localAlphaAnimation.setDuration(av.a);
        localAlphaAnimation.setAnimationListener(local1);
        localView.startAnimation(localAlphaAnimation);
        return;
      }
      av.a(localView, av.a, true, local1);
    }
  };
  private final ApiRequest.b<dy.a> r = new ApiRequest.b()
  {
    private int b;
    
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, dy.a paramAnonymousa)
    {
      ActivityReviewComplete.a(ActivityReviewComplete.this, true);
      paramAnonymousApiRequest = d.a(getIntent().getIntArrayExtra("extra.review_share_types"), ShareRequest.ShareType.values());
      if ((a.size() > 0) && (((YelpBusinessReview)a.get(0)).D())) {
        startActivity(ActivityFullScreenAward.a(ActivityReviewComplete.this, ActivityFullScreenAward.AwardType.FirstToReview, ActivityReviewComplete.g(ActivityReviewComplete.this).z(), ((YelpBusinessReview)a.get(0)).a(), ShareService.ShareObjectType.REVIEW, paramAnonymousApiRequest));
      }
      while ((paramAnonymousApiRequest == null) || (paramAnonymousApiRequest.isEmpty())) {
        return;
      }
      startService(ShareService.a(ActivityReviewComplete.this, ShareService.ShareObjectType.REVIEW, ActivityReviewComplete.h(ActivityReviewComplete.this), paramAnonymousApiRequest, false));
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      if (b == 3)
      {
        YelpLog.remoteError("ActivityReviewComplete", paramAnonymousYelpException);
        ActivityReviewComplete.a(ActivityReviewComplete.this, true);
        return;
      }
      b += 1;
      ActivityReviewComplete.f(ActivityReviewComplete.this);
    }
  };
  
  public static Intent a(YelpBusiness paramYelpBusiness, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, int paramInt, Context paramContext, ArrayList<SurveyQuestion> paramArrayList, ArrayList<ReviewSuggestion> paramArrayList1, List<ShareRequest.ShareType> paramList)
  {
    paramContext = new Intent(paramContext, ActivityReviewComplete.class);
    paramContext.putExtra("extra.review_status_message", paramString2);
    paramContext.putExtra("extra.review_warning", paramString3);
    paramContext.putExtra("extra.review_is_tip", paramBoolean);
    paramContext.putExtra("extra.reviewed_business", paramYelpBusiness);
    paramContext.putExtra("extra.review_id", paramString1);
    paramContext.putExtra("yelp:return_to_biz_id", paramYelpBusiness.aD());
    paramContext.putExtra("extra.review_content", paramString4);
    paramContext.putExtra("extra.review_rating", paramInt);
    paramContext.putExtra("extra.review_share_types", d.a(paramList));
    paramContext.putParcelableArrayListExtra("extra.survey_questions", paramArrayList);
    paramContext.putParcelableArrayListExtra("extra.review_suggestions", paramArrayList1);
    paramContext.addFlags(67108864);
    return paramContext;
  }
  
  private MessageAlertBox a(String paramString)
  {
    MessageAlertBox localMessageAlertBox;
    if (d)
    {
      localMessageAlertBox = new MessageAlertBox(this, null, 2131296552);
      localMessageAlertBox.setSubtitle(paramString);
    }
    for (paramString = localMessageAlertBox;; paramString = localMessageAlertBox)
    {
      paramString.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      return paramString;
      localMessageAlertBox = new MessageAlertBox(this, null, 2131296541);
      localMessageAlertBox.setTitle(paramString);
    }
  }
  
  private void a(View paramView, TextView paramTextView)
  {
    if (a.H() == 0) {
      paramView.findViewById(2131689940).setVisibility(8);
    }
    for (int i1 = g;; i1 = a.H())
    {
      ar.a((ImageView)paramView.findViewById(2131689938), i1);
      if (a.G() <= 0) {
        break;
      }
      paramTextView.setText(StringUtils.a(this, 2131230725, a.G()));
      return;
    }
    paramTextView.setVisibility(8);
  }
  
  private void j()
  {
    j = new dy(a.aD(), 0, 1, e, AppData.b().g().h(), null, r);
    j.f(new Void[0]);
  }
  
  private void k()
  {
    if (l == null) {
      l = ((WebImageView)b(2130903561));
    }
    List localList = c.c();
    if (localList.isEmpty())
    {
      l.setImageUrl(null, 2131624229);
      return;
    }
    int i1 = ar.a(this);
    int i2 = ar.b(this);
    l.setImageUrl(((Photo)localList.get(0)).s(), i1, i2);
    ar.b(l, getResources().getInteger(2131492874));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, MediaPayload paramMediaPayload)
  {
    super.a(paramApiRequest, paramMediaPayload);
    if (!paramMediaPayload.d().isEmpty())
    {
      m.setVisibility(8);
      n.setVisibility(0);
    }
    populateReviewInformation(r());
    k();
  }
  
  public void b()
  {
    if ((k.getHeight() > r().getHeight()) && (k.getTop() + k.getHeight() > r().getHeight())) {
      r().smoothScrollToPositionFromTop(0, r().getHeight() - k.getHeight());
    }
  }
  
  public void f()
  {
    l locall = getSupportFragmentManager();
    Fragment localFragment = locall.a(2131689944);
    locall.a().a(localFragment).a();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ReviewPosted;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    parama = new TreeMap();
    parama.put("is_converted_tip", String.valueOf(d));
    parama.put("review_length", String.valueOf(f.length()));
    parama.put("id", a.aD());
    return parama;
  }
  
  public void hideLoadingDialog()
  {
    disableLoading();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        do
        {
          return;
        } while (paramInt2 != -1);
        paramIntent = paramIntent.getExtras();
      } while (!paramIntent.containsKey("extra.images"));
      m.setVisibility(8);
      n.setVisibility(0);
      a(paramIntent);
    } while (c.getCount() != 2);
    populateReviewInformation(r());
    k();
  }
  
  @SuppressLint({"CommitTransaction"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((YelpBusiness)getIntent().getParcelableExtra("extra.reviewed_business"));
    e = getIntent().getStringExtra("extra.review_id");
    d = getIntent().getBooleanExtra("extra.review_is_tip", false);
    f = getIntent().getStringExtra("extra.review_content");
    g = getIntent().getIntExtra("extra.review_rating", 0);
    h = getIntent().getStringExtra("extra.review_warning");
    Object localObject = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ActivityReviewComplete.a(ActivityReviewComplete.this).isEmpty()) {
          AppData.a(EventIri.ReviewPostedAddPhotoButtonPressed);
        }
        for (;;)
        {
          startActivityForResult(AddBusinessPhoto.a(ActivityReviewComplete.this, ActivityReviewComplete.b(ActivityReviewComplete.this), false), 1041);
          return;
          AppData.a(EventIri.BusinessPhotoAddMore);
        }
      }
    };
    k = ((LinearLayout)getLayoutInflater().inflate(2130903120, r(), false));
    n = k.findViewById(2131689945);
    m = ((LeftDrawableButton)k.findViewById(2131689942));
    if (!Features.video_capture.isEnabled()) {
      m.setText(getString(2131165464));
    }
    m.setOnClickListener((View.OnClickListener)localObject);
    o = ((TextView)k.findViewById(2131689941));
    o.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ActivityReviewComplete.c(ActivityReviewComplete.this).getMaxLines() == getResources().getInteger(2131492897)) {}
        for (int i = Integer.MAX_VALUE;; i = getResources().getInteger(2131492897))
        {
          ActivityReviewComplete.c(ActivityReviewComplete.this).setMaxLines(i);
          return;
        }
      }
    });
    r().addHeaderView(k, null, false);
    a((View.OnClickListener)localObject, EventIri.BusinessPhotos, new HashMap(), paramBundle);
    if (paramBundle == null)
    {
      paramBundle = getIntent().getParcelableArrayListExtra("extra.review_suggestions");
      localObject = getIntent().getParcelableArrayListExtra("extra.survey_questions");
      if ((localObject != null) && (!((ArrayList)localObject).isEmpty()) && ((paramBundle == null) || (paramBundle.isEmpty())))
      {
        p = BizAttributesFragment.a((ArrayList)localObject, a, false);
        getSupportFragmentManager().a().a(2131689943, p, "biz_attribute").a();
        if (!TextUtils.isEmpty(h)) {
          AlertDialogFragment.a(null, h).show(getSupportFragmentManager(), null);
        }
      }
    }
    for (;;)
    {
      if (p != null) {
        p.a(q);
      }
      r().setBackgroundColor(getResources().getColor(2131624260));
      return;
      if ((paramBundle == null) || (paramBundle.isEmpty())) {
        break;
      }
      localObject = YourNextReviewAwaitsFragment.a(paramBundle);
      getSupportFragmentManager().a().a(2131689944, (Fragment)localObject, "ynra_fragment").a();
      h.a(IriSource.PostReviewYNRA, paramBundle);
      break;
      p = ((BizAttributesFragment)getSupportFragmentManager().a("biz_attribute"));
      i = paramBundle.getBoolean("first_to_review_returned");
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755040, paramMenu);
    getSupportActionBar().a(a.z());
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      startActivity(ActivityReviewWrite.b(this, a, ReviewSource.BizPageReviewsListEdit));
      AppData.a(EventIri.ReviewPostedEdit);
      finish();
      continue;
      AppData.a(EventIri.ReviewPostedClose);
      finish();
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("first_to_review", j);
    if (p != null) {
      p.a();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!i)
    {
      j = ((dy)thawRequest("first_to_review", j, r));
      if (j == null) {
        j();
      }
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("first_to_review_returned", i);
  }
  
  public void populateReviewInformation(View paramView)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(2131689941);
    TextView localTextView2 = (TextView)paramView.findViewById(2131689939);
    ((FrameLayout)paramView.findViewById(2131689935)).addView(a(getIntent().getStringExtra("extra.review_status_message")));
    if (d)
    {
      paramView.findViewById(2131689937).setVisibility(8);
      localTextView1.setMinLines(10);
    }
    for (;;)
    {
      localTextView1.setText(f);
      return;
      a(paramView, localTextView2);
    }
  }
  
  public void showLoadingDialog()
  {
    enableLoading(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewComplete
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */