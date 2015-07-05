package com.yelp.android.ui.activities.reviewpage;

import android.content.Intent;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils.TruncateAt;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.BusinessOwnerReply;
import com.yelp.android.serializable.FeatureSet.Feature;
import com.yelp.android.serializable.PreviousReview;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpBusinessReview.ReviewFeedback;
import com.yelp.android.serializable.YelpBusinessReview.UserFeedback;
import com.yelp.android.ui.activities.addphoto.i;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ReviewFragment
  extends YelpFragment
  implements View.OnClickListener
{
  DataSetObserver a = new au(this);
  private YelpBusinessReview b;
  private av c;
  private String d;
  private LinearLayout e;
  private i g;
  private ToggleButton h;
  private ToggleButton i;
  private ToggleButton j;
  private PanelReviewTranslate k;
  private View l;
  private View m;
  private bi n;
  
  public static ReviewFragment a(YelpBusinessReview paramYelpBusinessReview, String paramString1, String paramString2)
  {
    ReviewFragment localReviewFragment = new ReviewFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("review.extra", paramYelpBusinessReview);
    localBundle.putString("business_id", paramString1);
    localBundle.putString("business_name", paramString2);
    localReviewFragment.setArguments(localBundle);
    return localReviewFragment;
  }
  
  private void a(View paramView, YelpBusinessReview paramYelpBusinessReview)
  {
    if (paramYelpBusinessReview.getBusinessOwnerReply() != null)
    {
      ((WebImageView)paramView.findViewById(2131493043)).setImageUrl(paramYelpBusinessReview.getBusinessOwnerReply().getPhotoUrl(), 2130837659);
      ((TextView)paramView.findViewById(2131493046)).setText(getString(2131166289, new Object[] { paramYelpBusinessReview.getBusinessOwnerReply().getName(), d }));
      TextView localTextView = (TextView)paramView.findViewById(2131493045);
      localTextView.setText(paramYelpBusinessReview.getBusinessOwnerReply().getText());
      paramView = (TextView)paramView.findViewById(2131493044);
      a(localTextView, paramView);
      paramYelpBusinessReview = new aq(this, localTextView, paramView);
      paramView.setOnClickListener(paramYelpBusinessReview);
      localTextView.setOnClickListener(paramYelpBusinessReview);
      return;
    }
    paramView.findViewById(2131493042).setVisibility(8);
  }
  
  private void a(View paramView, YelpBusinessReview paramYelpBusinessReview, dc paramdc)
  {
    YelpBusinessReview.UserFeedback localUserFeedback = paramYelpBusinessReview.getUserFeedback();
    YelpBusinessReview.ReviewFeedback localReviewFeedback = paramYelpBusinessReview.getFeedback();
    boolean bool1 = paramdc.a(paramYelpBusinessReview.getUserId());
    boolean bool2 = paramdc.c();
    int i1;
    if ((bool1) && (localReviewFeedback.isEmpty()))
    {
      i1 = 1;
      paramYelpBusinessReview = paramView.findViewById(2131493049);
      if (i1 == 0) {
        break label172;
      }
    }
    label172:
    for (int i2 = 8;; i2 = 0)
    {
      paramYelpBusinessReview.setVisibility(i2);
      if (i1 == 0)
      {
        paramYelpBusinessReview = (TextView)paramView.findViewById(2131493051);
        if (!bool1) {
          break label178;
        }
        paramView.findViewById(2131493053).setVisibility(8);
        paramYelpBusinessReview.setText(2131166757);
        paramView = (TextView)paramView.findViewById(2131493052);
        paramView.setText(getString(2131166758, new Object[] { Integer.valueOf(localReviewFeedback.getUsefulVotes()), Integer.valueOf(localReviewFeedback.getFunnyVotes()), Integer.valueOf(localReviewFeedback.getCoolVotes()) }));
        paramView.setVisibility(0);
      }
      return;
      i1 = 0;
      break;
    }
    label178:
    a(h, 2131165656, localReviewFeedback.getCoolVotes(), localUserFeedback.isVotedCool(), bool1, bool2);
    a(i, 2131165877, localReviewFeedback.getFunnyVotes(), localUserFeedback.isVotedFunny(), bool1, bool2);
    a(j, 2131166803, localReviewFeedback.getUsefulVotes(), localUserFeedback.isVotedUseful(), bool1, bool2);
    paramYelpBusinessReview.setText(2131166760);
  }
  
  private void a(TextView paramTextView1, TextView paramTextView2)
  {
    paramTextView2.setText(2131166102);
    paramTextView1.setMaxLines(2);
    paramTextView1.setEllipsize(TextUtils.TruncateAt.END);
  }
  
  private void a(ToggleButton paramToggleButton, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    int i1 = paramInt2;
    if (paramBoolean1) {
      i1 = paramInt2 - 1;
    }
    String str = getString(paramInt1);
    paramInt1 = i1 + 1;
    paramToggleButton.setOnCheckedChangeListener(null);
    paramToggleButton.setTextOff(Html.fromHtml(getResources().getQuantityString(2131623981, paramInt1, new Object[] { str, Integer.valueOf(i1) })));
    paramToggleButton.setTextOn(Html.fromHtml(getResources().getQuantityString(2131623981, paramInt1 + 1, new Object[] { str, Integer.valueOf(i1 + 1) })));
    paramToggleButton.setChecked(paramBoolean1);
    if (!paramBoolean2) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      paramToggleButton.setEnabled(paramBoolean1);
      if (paramToggleButton.isEnabled())
      {
        if (!paramBoolean3) {
          break;
        }
        paramToggleButton.setOnClickListener(null);
        paramToggleButton.setOnCheckedChangeListener(c);
      }
      return;
    }
    paramToggleButton.setOnCheckedChangeListener(null);
    paramToggleButton.setOnClickListener(new as(this));
  }
  
  private void b()
  {
    b("com.yelp.android.media.update", new ao(this));
    b("com.yelp.android.review.translate", new ap(this));
  }
  
  private void b(View paramView, YelpBusinessReview paramYelpBusinessReview)
  {
    paramYelpBusinessReview = paramYelpBusinessReview.getPreviousReviews();
    paramView = (LinearLayout)paramView.findViewById(2131493047);
    if ((paramYelpBusinessReview != null) && (paramYelpBusinessReview.size() > 0))
    {
      ((TextView)paramView.findViewById(2131493048)).setText(StringUtils.a(AppData.b(), 2131623968, paramYelpBusinessReview.size(), new Object[0]));
      paramYelpBusinessReview = paramYelpBusinessReview.iterator();
    }
    while (paramYelpBusinessReview.hasNext())
    {
      PreviousReview localPreviousReview = (PreviousReview)paramYelpBusinessReview.next();
      View localView = LayoutInflater.from(getActivity()).inflate(2130903278, paramView, false);
      paramView.addView(localView);
      TextView localTextView1 = (TextView)localView.findViewById(2131493767);
      ImageView localImageView = (ImageView)localView.findViewById(2131493684);
      TextView localTextView2 = (TextView)localView.findViewById(2131493768);
      localTextView1.setText(localPreviousReview.getText());
      cp.a(localImageView, localPreviousReview.getRating());
      localTextView2.setText(StringUtils.a(getActivity(), StringUtils.Format.LONG, localPreviousReview.getDateModified()));
      localView.setTag(localPreviousReview.getId());
      localView.setOnClickListener(new ar(this));
      continue;
      paramView.setVisibility(8);
    }
  }
  
  private void b(View paramView, YelpBusinessReview paramYelpBusinessReview, dc paramdc)
  {
    l = paramView.findViewById(2131493057);
    if ((paramdc.a(paramYelpBusinessReview.getUserId())) || (paramYelpBusinessReview.isFeatureDisabled(FeatureSet.Feature.SEND_COMPLIMENT)))
    {
      l.setVisibility(8);
      return;
    }
    l.setOnClickListener(new at(this, paramYelpBusinessReview));
  }
  
  private void b(TextView paramTextView1, TextView paramTextView2)
  {
    paramTextView2.setText(2131166007);
    paramTextView1.setMaxLines(Integer.MAX_VALUE);
    paramTextView1.setEllipsize(null);
  }
  
  private void c()
  {
    PanelReviewTranslate.TranslateState localTranslateState = PanelReviewTranslate.TranslateState.ORIGINAL;
    if (b.shouldDisplayTranslation()) {
      if (b.getTranslatedText() != null) {
        break label121;
      }
    }
    label121:
    for (localTranslateState = PanelReviewTranslate.TranslateState.TRANSLATING;; localTranslateState = PanelReviewTranslate.TranslateState.TRANSLATED)
    {
      n = new bi();
      n.a(Collections.singletonList(b));
      k.setContents(Collections.singletonList(b));
      k.setState(localTranslateState);
      n.a(m, k);
      n.registerDataSetObserver(a);
      Linkify.addLinks(m.getTag()).f, 15);
      return;
    }
  }
  
  private void c(View paramView)
  {
    m = paramView.findViewById(2131493041);
    Object localObject = new am(m, true);
    m.setTag(localObject);
    f.setMaxLines(Integer.MAX_VALUE);
    f.setEllipsize(null);
    f.setOnClickListener(this);
    m.findViewById(2131493736).setOnClickListener(new an(this));
    localObject = AppData.b().m();
    a(paramView, b);
    b(paramView, b);
    a(paramView, b, (dc)localObject);
    b(paramView, b, (dc)localObject);
    c();
  }
  
  private void d(View paramView)
  {
    e = ((LinearLayout)paramView.findViewById(16908298));
    paramView = new HashMap();
    paramView.put("id", b.getBusinessId());
    g = i.a(getActivity(), null, EventIri.BusinessPhotos, paramView, b.getBusinessId());
    paramView = b.getAttachedMediaSorted();
    g.a(paramView);
    g.a_(b.getPhotos());
    g.b(b.getVideos());
    g.b(paramView.size());
    g.notifyDataSetChanged();
    int i1 = 0;
    while (i1 < g.getCount())
    {
      e.addView(g.getView(i1, null, e), i1 + 1);
      i1 += 1;
    }
  }
  
  public void a()
  {
    View localView = getView();
    if (localView != null) {
      a(localView, b, AppData.b().m());
    }
  }
  
  public void a(av paramav)
  {
    c = paramav;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    b();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    a();
  }
  
  public void onClick(View paramView)
  {
    if (c != null) {
      c.a();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      b = ((YelpBusinessReview)paramBundle.getParcelable("review.extra"));
      d = paramBundle.getString("business_name");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903067, paramViewGroup, false);
    h = ((ToggleButton)paramLayoutInflater.findViewById(2131493056));
    i = ((ToggleButton)paramLayoutInflater.findViewById(2131493055));
    j = ((ToggleButton)paramLayoutInflater.findViewById(2131493054));
    k = ((PanelReviewTranslate)paramLayoutInflater.findViewById(2131493739));
    paramLayoutInflater.findViewById(2131493040).setOnClickListener(this);
    c(paramLayoutInflater);
    d(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    n.unregisterDataSetObserver(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ReviewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */