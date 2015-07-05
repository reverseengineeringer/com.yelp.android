package com.yelp.android.ui.activities.reviews;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.i;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.panels.BizAttributesFragment;
import com.yelp.android.ui.panels.YourNextReviewAwaitsFragment;
import com.yelp.android.ui.panels.aj;
import com.yelp.android.ui.panels.o;
import com.yelp.android.ui.util.ActivityYelpHopScotchMediaList;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.MessageAlertBox;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class ActivityReviewComplete
  extends ActivityYelpHopScotchMediaList
  implements aj
{
  private boolean d;
  private String e;
  private String f;
  private int g;
  private String h;
  private boolean i;
  private ey j;
  private LinearLayout k;
  private WebImageView l;
  private LeftDrawableButton m;
  private View n;
  private BizAttributesFragment o;
  private final o p = new h(this);
  private final m<ez> q = new j(this);
  
  public static Intent a(YelpBusiness paramYelpBusiness, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, int paramInt, Context paramContext, ArrayList<SurveyQuestion> paramArrayList, ArrayList<ReviewSuggestion> paramArrayList1)
  {
    paramContext = new Intent(paramContext, ActivityReviewComplete.class);
    paramContext.putExtra("extra.review_status_message", paramString2);
    paramContext.putExtra("extra.review_warning", paramString3);
    paramContext.putExtra("extra.review_is_tip", paramBoolean);
    paramContext.putExtra("extra.reviewed_business", paramYelpBusiness);
    paramContext.putExtra("extra.review_id", paramString1);
    paramContext.putExtra("yelp:return_to_biz_id", paramYelpBusiness.getId());
    paramContext.putExtra("extra.review_content", paramString4);
    paramContext.putExtra("extra.review_rating", paramInt);
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
      localMessageAlertBox = new MessageAlertBox(this, null, 2131689645);
      localMessageAlertBox.setSubtitle(paramString);
    }
    for (paramString = localMessageAlertBox;; paramString = localMessageAlertBox)
    {
      paramString.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      return paramString;
      localMessageAlertBox = new MessageAlertBox(this, null, 2131689634);
      localMessageAlertBox.setTitle(paramString);
    }
  }
  
  private void a(View paramView, TextView paramTextView)
  {
    if (a.getUserReviewRating() == 0) {
      paramView.findViewById(2131493283).setVisibility(8);
    }
    for (int i1 = g;; i1 = a.getUserReviewRating())
    {
      cp.a((ImageView)paramView.findViewById(2131493281), i1);
      if (a.getUserCheckinsCount() <= 0) {
        break;
      }
      paramTextView.setText(StringUtils.a(this, 2131623941, a.getUserCheckinsCount()));
      return;
    }
    paramTextView.setVisibility(8);
  }
  
  private void j()
  {
    j = new ey(a.getId(), 0, 1, e, AppData.b().g().h(), null, q);
    j.execute(new String[0]);
  }
  
  private void k()
  {
    if (l == null) {
      l = ((WebImageView)b(2130903437));
    }
    List localList = c.b();
    if (localList.isEmpty())
    {
      l.setImageUrl(null, 2131362006);
      return;
    }
    int i1 = cp.a(this);
    int i2 = cp.b(this);
    l.setImageUrl(((Photo)localList.get(0)).getLargeUrl(), i1, i2);
    cp.b(l, getResources().getInteger(2131558403));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dm paramdm)
  {
    super.a(paramApiRequest, paramdm);
    if (!paramdm.a().isEmpty())
    {
      m.setVisibility(8);
      n.setVisibility(0);
    }
    populateReviewInformation(q());
    k();
  }
  
  public void c()
  {
    if ((k.getHeight() > q().getHeight()) && (k.getTop() + k.getHeight() > q().getHeight())) {
      q().smoothScrollToPositionFromTop(0, q().getHeight() - k.getHeight());
    }
  }
  
  public void f()
  {
    FragmentManager localFragmentManager = getSupportFragmentManager();
    Fragment localFragment = localFragmentManager.findFragmentById(2131493287);
    localFragmentManager.beginTransaction().remove(localFragment).commit();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ReviewPosted;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new TreeMap();
    paramb.put("is_converted_tip", String.valueOf(d));
    paramb.put("review_length", String.valueOf(f.length()));
    paramb.put("id", a.getId());
    return paramb;
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
      } while (!paramIntent.containsKey("bitmap_extra"));
      m.setVisibility(8);
      n.setVisibility(0);
      a(paramIntent);
    } while (c.getCount() != 2);
    populateReviewInformation(q());
    k();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((YelpBusiness)getIntent().getParcelableExtra("extra.reviewed_business"));
    e = getIntent().getStringExtra("extra.review_id");
    d = getIntent().getBooleanExtra("extra.review_is_tip", false);
    f = getIntent().getStringExtra("extra.review_content");
    g = getIntent().getIntExtra("extra.review_rating", 0);
    h = getIntent().getStringExtra("extra.review_warning");
    Object localObject = new g(this);
    k = ((LinearLayout)getLayoutInflater().inflate(2130903109, q(), false));
    n = k.findViewById(2131493288);
    m = ((LeftDrawableButton)k.findViewById(2131493285));
    if (!Features.video_capture.isEnabled()) {
      m.setText(getString(2131165338));
    }
    m.setOnClickListener((View.OnClickListener)localObject);
    q().addHeaderView(k, null, false);
    a((View.OnClickListener)localObject, EventIri.BusinessPhotos, new HashMap(), paramBundle);
    if (paramBundle == null)
    {
      paramBundle = getIntent().getParcelableArrayListExtra("extra.review_suggestions");
      localObject = getIntent().getParcelableArrayListExtra("extra.survey_questions");
      if ((localObject != null) && (!((ArrayList)localObject).isEmpty()) && ((paramBundle == null) || (paramBundle.isEmpty())))
      {
        o = BizAttributesFragment.a((ArrayList)localObject, a, false);
        getSupportFragmentManager().beginTransaction().add(2131493286, o, "biz_attribute").commit();
        if (!TextUtils.isEmpty(h)) {
          AlertDialogFragment.a(null, h).show(getSupportFragmentManager(), null);
        }
      }
    }
    for (;;)
    {
      if (o != null) {
        o.a(p);
      }
      q().setBackgroundColor(getResources().getColor(2131362035));
      return;
      if ((paramBundle == null) || (paramBundle.isEmpty())) {
        break;
      }
      paramBundle = YourNextReviewAwaitsFragment.a(paramBundle);
      getSupportFragmentManager().beginTransaction().add(2131493287, paramBundle, "ynra_fragment").commit();
      AppData.a(ViewIri.ReviewSuggestionsViewed, "source", "post_review_ynra");
      break;
      o = ((BizAttributesFragment)getSupportFragmentManager().findFragmentByTag("biz_attribute"));
      i = paramBundle.getBoolean("first_to_review_returned");
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755036, paramMenu);
    getSupportActionBar().a(a.getDisplayName());
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
      AppData.a(ReviewEventIri.ReviewPostedEdit);
      finish();
      continue;
      AppData.a(ReviewEventIri.ReviewPostedClose);
      finish();
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("first_to_review", j);
    if (o != null) {
      o.a();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!i)
    {
      j = ((ey)thawRequest("first_to_review", j, q));
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
    TextView localTextView1 = (TextView)paramView.findViewById(2131493284);
    TextView localTextView2 = (TextView)paramView.findViewById(2131493282);
    ((FrameLayout)paramView.findViewById(2131493278)).addView(a(getIntent().getStringExtra("extra.review_status_message")));
    if (d)
    {
      paramView.findViewById(2131493280).setVisibility(8);
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