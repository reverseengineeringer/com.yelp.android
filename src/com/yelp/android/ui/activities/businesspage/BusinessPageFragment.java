package com.yelp.android.ui.activities.businesspage;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adjust.sdk.e;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.cw;
import com.yelp.android.appdata.webrequests.cx;
import com.yelp.android.appdata.webrequests.cy;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.eg;
import com.yelp.android.appdata.webrequests.eu;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.appdata.webrequests.gn;
import com.yelp.android.av.a;
import com.yelp.android.serializable.Attribution;
import com.yelp.android.serializable.Attribution.Type;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.BusinessSearchResult.SearchActionType;
import com.yelp.android.serializable.CallToAction;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.FromThisBusiness;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.PlatformAction;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.android.serializable.SearchAction;
import com.yelp.android.serializable.SpecialHours;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.activities.ActivityCheckIn;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.deals.ActivityDealDetail;
import com.yelp.android.ui.activities.deals.ActivityDealRedemption;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter.RankMode;
import com.yelp.android.ui.activities.messaging.ActivityMessageTheBusiness;
import com.yelp.android.ui.activities.mutatebiz.EditBusiness;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.reservations.FindReservation;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewsFilteredByHighlightPage;
import com.yelp.android.ui.activities.reviewpage.v;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.ui.activities.tips.WriteTip;
import com.yelp.android.ui.dialogs.CheckInOfferDialog;
import com.yelp.android.ui.map.MapSpannableLinearLayout;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.panels.businesspage.ConsumerAlertPanel;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.PullDownListView;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.k;
import com.yelp.android.ui.util.s;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.ui.widgets.o;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.r;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

public class BusinessPageFragment
  extends YelpListFragment
  implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, com.yelp.android.ui.activities.reviewpage.bg, v, com.yelp.android.ui.util.al, o
{
  private com.yelp.android.ui.util.h A;
  private BusinessMediaRequest B;
  private com.yelp.android.ui.util.ax C;
  private com.yelp.android.ui.activities.reviewpage.t D;
  private eu E;
  private int F;
  private List<ReviewHighlight> G;
  private com.yelp.android.ui.activities.reviewpage.aw H;
  private com.yelp.android.ui.util.h I;
  private com.yelp.android.ui.util.h J;
  private com.yelp.android.ui.util.h K;
  private cw L;
  private List<Tip> M;
  private com.yelp.android.ui.activities.reviewpage.bi N;
  private com.yelp.android.ui.util.h O;
  private com.yelp.android.ui.util.h P;
  private com.yelp.android.ui.util.h Q;
  private String R;
  private ey S;
  private List<YelpBusinessReview> T;
  private int U;
  private CheckinRankAdapter V;
  private com.yelp.android.ui.util.h W;
  private com.yelp.android.ui.util.h X;
  private com.yelp.android.appdata.webrequests.ab Y;
  private List<Ranking> Z;
  private com.yelp.android.ui.widgets.b a;
  private PublisherAdView aA;
  private View aB;
  private com.yelp.android.ui.util.h aC;
  private boolean aD = false;
  private View aE;
  private View aF;
  private LinkedHashMap<com.yelp.android.ui.activities.reviewpage.bi, com.yelp.android.ui.util.bv<com.yelp.android.ui.activities.reviewpage.bi>> aG;
  private com.yelp.android.ui.util.bv<com.yelp.android.ui.activities.reviewpage.bi> aH;
  private LinkedHashSet<Locale> aI;
  private SearchRequest aJ;
  private bv aK;
  private bw aL;
  private final View.OnClickListener aM = new aj(this);
  private final cc aN = new ak(this, EventIri.BusinessAddTip, "button");
  private final cc aO = new am(this, EventIri.BusinessCheckIn, "button");
  private final com.yelp.android.appdata.webrequests.m<ArrayList<Ranking>> aP = new bf(this);
  private final AdListener aQ = new bg(this);
  private final com.yelp.android.appdata.webrequests.m<dm> aR = new bi(this);
  private final com.yelp.android.appdata.webrequests.m<YelpBookmark> aS = new bj(this);
  private final com.yelp.android.appdata.webrequests.m<List<LocalAd>> aT = new bk(this);
  private final com.yelp.android.appdata.webrequests.m<cx> aU = new bl(this);
  private final com.yelp.android.appdata.webrequests.m<ez> aV = new bm(this);
  private final com.yelp.android.av.i aW = new bn(this);
  private final android.support.v7.widget.bt aX = new bo(this);
  private View aa;
  private TextView ab;
  private boolean ac = false;
  private boolean ad = false;
  private boolean ae = false;
  private boolean af = false;
  private boolean ag = false;
  private boolean ah = false;
  private Map<Locale, Integer> ai = new HashMap();
  private ArrayList<Locale> aj;
  private String ak = null;
  private String al = null;
  private String am = null;
  private String an = null;
  private View ao;
  private boolean ap;
  private t aq;
  private BusinessSearchResult ar;
  private YelpBusiness as;
  private a at;
  private dc au;
  private ArrayList<Intent> av;
  private boolean aw;
  private com.yelp.android.ui.dialogs.bn ax;
  private ApiRequest<Void, ?, ?> ay;
  private YelpMap<YelpBusiness> az;
  private MenuItem b;
  private com.yelp.android.ui.panels.businesspage.b c;
  private View d;
  private p e;
  private cd g;
  private p h;
  private p i;
  private gn j;
  private s k;
  private TextView l;
  private TextView m;
  private com.yelp.android.ui.util.h n;
  private cy o;
  private com.yelp.android.ui.activities.reviewpage.ab p;
  private com.yelp.android.ui.activities.reviewpage.ab q;
  private List<LocalAd> r;
  private List<LocalAd> s;
  private FromThisBusinessPanel t;
  private com.yelp.android.ui.util.h u;
  private com.yelp.android.ui.util.h v;
  private ConsumerAlertPanel w;
  private RecyclerView x;
  private com.yelp.android.ui.util.bs y;
  private com.yelp.android.ui.util.h z;
  
  private void F()
  {
    String str1 = as.getLocalizedStreetAddress();
    String str2 = as.getGeneralAddress();
    if ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str2)))
    {
      n.clear();
      return;
    }
    if (!TextUtils.isEmpty(str1)) {
      l.setText(str1);
    }
    while (!TextUtils.isEmpty(str2))
    {
      m.setText(str2);
      return;
      l.setVisibility(8);
    }
    m.setVisibility(8);
  }
  
  private boolean G()
  {
    FromThisBusiness localFromThisBusiness = as.getFromThisBusiness();
    return (localFromThisBusiness != null) && (localFromThisBusiness.getShowTeaser());
  }
  
  private void H()
  {
    if (!G())
    {
      u.clear();
      return;
    }
    t.a(as, as.getFromThisBusiness());
    if (u.getCount() == 0) {
      u.b(t);
    }
    u.notifyDataSetChanged();
  }
  
  private void I()
  {
    Object localObject = new bu(this, EventIri.BusinessOpenMoreHighlights);
    D = new com.yelp.android.ui.activities.reviewpage.t(2130903357, this, as);
    localObject = com.yelp.android.ui.util.bw.a(getString(2131166519), D).b(2131493928).a(a(getString(2131166109), (View.OnClickListener)localObject, false, null, null));
    y.a(2131492877, ((com.yelp.android.ui.util.bw)localObject).a());
  }
  
  private void J()
  {
    boolean bool3 = true;
    x = new RecyclerView(getActivity());
    x.setLayoutParams(new ViewGroup.LayoutParams(-1, AppData.b().getResources().getDimensionPixelSize(2131427492) + com.yelp.android.appdata.ao.b));
    x.a(aX);
    C = new com.yelp.android.ui.util.ax(as, as.getBizOwnerVideo(), getActivity());
    x.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
    x.setAdapter(C);
    Object localObject = getActivity().createPendingResult(1039, new Intent(), 268435456);
    C.a((PendingIntent)localObject, new com.yelp.android.ui.util.bd(C.d()));
    ab localab = new ab(this, EventIri.BusinessAddPhoto, "button");
    int i2 = as.getPhotosAndVideosCount();
    if (i2 != 0)
    {
      boolean bool1;
      boolean bool2;
      label214:
      ac localac;
      int i1;
      if (as.getVideoCount() > 0)
      {
        bool1 = true;
        if (as.getPhotoCount() <= 0) {
          break label405;
        }
        bool2 = true;
        localac = new ac(this, EventIri.BusinessMorePhotos, bool1, bool2);
        z = new com.yelp.android.ui.util.h(new View[0]);
        A = new com.yelp.android.ui.util.h(new View[0]);
        if ((!bool1) || (!bool2)) {
          break label411;
        }
        i1 = 2131166331;
        label273:
        localObject = null;
        if (i2 > 3) {
          localObject = String.format(getString(2131166528), new Object[] { Integer.valueOf(i2) });
        }
        if (i2 <= 0) {
          break label438;
        }
        bool1 = bool3;
        label311:
        if (!Features.video_capture.isEnabled()) {
          break label443;
        }
      }
      label405:
      label411:
      label438:
      label443:
      for (String str = getString(2131165339);; str = getString(2131165338))
      {
        localObject = a((String)localObject, localac, bool1, str, localab);
        y.a(2131166330, com.yelp.android.ui.util.bw.a(getString(i1), z).a((View)localObject).a());
        y.a(2131492879, com.yelp.android.ui.util.bw.a(getString(i1), A).a());
        return;
        bool1 = false;
        break;
        bool2 = false;
        break label214;
        if (bool1)
        {
          i1 = 2131166828;
          break label273;
        }
        ad = true;
        ak();
        i1 = 2131166330;
        break label273;
        bool1 = false;
        break label311;
      }
    }
    ad = true;
    y.a(2131166199, com.yelp.android.ui.util.bw.a(getString(2131166199), new com.yelp.android.ui.util.h(new View[] { a(2131165338, 2130837854, localab) })).a());
  }
  
  private void K()
  {
    int i1 = as.getTipCount();
    Object localObject = new ad(this, EventIri.BusinessMoreTipsClicked);
    localObject = a(getString(2131166124), (View.OnClickListener)localObject, true, getString(2131165341), aN);
    H = new com.yelp.android.ui.activities.reviewpage.aw(AppData.b().m().b(), this);
    y.a(2131166526, com.yelp.android.ui.util.bw.a(getString(2131166526), H).b(2131493965).a((View)localObject).a());
    I = new com.yelp.android.ui.util.h(new View[0]);
    y.a(2131492881, com.yelp.android.ui.util.bw.a(getString(2131166526), I).a((View)localObject).a());
    J = new com.yelp.android.ui.util.h(new View[0]);
    y.a(2131166210, com.yelp.android.ui.util.bw.a(getString(2131166210), J).a());
    K = new com.yelp.android.ui.util.h(new View[0]);
    y.a(2131492891, com.yelp.android.ui.util.bw.a(getString(2131166526), K).a());
    if (i1 == 0) {
      ag = true;
    }
  }
  
  private ArrayList<String> L()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = aG.keySet().iterator();
    while (localIterator.hasNext())
    {
      com.yelp.android.ui.activities.reviewpage.bi localbi = (com.yelp.android.ui.activities.reviewpage.bi)localIterator.next();
      if ((localbi.a().size() != 0) && (localbi.b())) {
        localArrayList.add(localbi.c().getLanguage());
      }
    }
    if ((N.a().size() != 0) && (N.b())) {
      localArrayList.add(N.c().getLanguage());
    }
    return localArrayList;
  }
  
  private void M()
  {
    Object localObject = new ae(this, EventIri.BusinessMoreReviewsClicked);
    aE = a(getString(2131166118), (View.OnClickListener)localObject, true, getString(as.getReviewState().getTextResourceForState()), aM);
    if (aq()) {
      y.a(2131165462, com.yelp.android.ui.util.bw.a(getString(2131166398), new com.yelp.android.ui.util.h(new View[0])).a());
    }
    aG = new LinkedHashMap();
    localObject = new SparseIntArray();
    ((SparseIntArray)localObject).put(0, 2131492886);
    ((SparseIntArray)localObject).put(1, 2131492887);
    ((SparseIntArray)localObject).put(2, 2131492888);
    ((SparseIntArray)localObject).put(3, 2131492889);
    int i1 = 0;
    while (i1 < 4)
    {
      com.yelp.android.ui.activities.reviewpage.bi localbi = new com.yelp.android.ui.activities.reviewpage.bi();
      com.yelp.android.ui.util.bv localbv = com.yelp.android.ui.util.bw.a(getString(2131166398), localbi).b(2131493727).a();
      aG.put(localbi, localbv);
      y.a(((SparseIntArray)localObject).get(i1), localbv);
      i1 += 1;
    }
    N = new com.yelp.android.ui.activities.reviewpage.bi();
    aH = com.yelp.android.ui.util.bw.a(getString(2131166398), N).b(2131493727).a(aE).a();
    y.a(2131166477, aH);
    O = new com.yelp.android.ui.util.h(new View[0]);
    y.a(2131492880, com.yelp.android.ui.util.bw.a(getString(2131166398), O).a(aE).a());
    P = new com.yelp.android.ui.util.h(new View[0]);
    y.a(2131166204, com.yelp.android.ui.util.bw.a(getString(2131166201), P).a());
    Q = new com.yelp.android.ui.util.h(new View[0]);
    y.a(2131492890, com.yelp.android.ui.util.bw.a(getString(2131166398), Q).a());
  }
  
  private void N()
  {
    int i2 = as.getRegularCount();
    af localaf = new af(this, EventIri.BusinessMoreRegularsClicked, "button");
    int i1;
    com.yelp.android.ui.util.bs localbs;
    com.yelp.android.ui.util.bw localbw;
    String str;
    if (i2 > 3)
    {
      i1 = i2 - 3;
      localbs = y;
      localbw = com.yelp.android.ui.util.bw.a(getString(2131165492), V).b(2131493871);
      str = a(2131623957, 2131166115, i1);
      if (i1 <= 0) {
        break label214;
      }
    }
    label214:
    for (boolean bool = true;; bool = false)
    {
      localbs.a(2131165492, localbw.a(a(str, localaf, bool, getString(2131165301), aO)).a());
      W = new com.yelp.android.ui.util.h(new View[0]);
      y.a(2131166186, com.yelp.android.ui.util.bw.a(getString(2131166186), W).a());
      X = new com.yelp.android.ui.util.h(new View[0]);
      y.a(2131492885, com.yelp.android.ui.util.bw.a(getString(2131165492), X).a());
      if (i2 == 0) {
        ah = true;
      }
      return;
      i1 = 0;
      break;
    }
  }
  
  private void O()
  {
    if (aF == null) {
      aF = getActivity().getLayoutInflater().inflate(2130903337, m(), false);
    }
    ((TextView)aF.findViewById(2131492996)).setText(StringUtils.a(getActivity(), 2131623976, U, new Object[0]));
    aF.setOnClickListener(new ag(this));
    v.clear();
    v.b(aF);
  }
  
  private void P()
  {
    Object localObject = y.a(2131165462);
    if (localObject == null) {}
    do
    {
      return;
      localObject = (com.yelp.android.ui.util.h)a;
    } while (!((com.yelp.android.ui.util.h)localObject).isEmpty());
    View localView = LayoutInflater.from(getActivity()).inflate(2130903136, m(), false);
    localView.setOnClickListener(new ah(this));
    localView.findViewById(2131493355).setOnClickListener(new ai(this, (com.yelp.android.ui.util.h)localObject, localView));
    ((com.yelp.android.ui.util.h)localObject).b(localView);
  }
  
  private void Q()
  {
    v();
    w.a(as);
    g.a(getActivity(), as);
    h.a(as);
    i.a(as);
    if (e != null) {
      e.a(as);
    }
    c.a(as);
    c.setBookmarkChecked(as.isBookmarked());
    AppData.b().i().f().c(as);
    int i1 = getActivity().getIntent().getIntExtra("extra.contributing", -1);
    if ((i1 >= 0) && (i1 < BusinessContributionType.values().length)) {
      switch (bp.a[BusinessContributionType.values()[i1].ordinal()])
      {
      }
    }
    for (;;)
    {
      ap = true;
      return;
      i();
      continue;
      ae();
      continue;
      h();
    }
  }
  
  private void R()
  {
    if ((!aD) || (as.getDfpParameters() == null))
    {
      aA.setVisibility(8);
      return;
    }
    if (aA.getVisibility() == 0) {
      aA.setVisibility(4);
    }
    try
    {
      JSONObject localJSONObject = as.getDfpParameters();
      AppData.a(AutoIri.DFPWillRequest);
      aA.setAdListener(aQ);
      aA.loadAd(com.yelp.android.ui.util.q.a(localJSONObject));
      return;
    }
    catch (JSONException localJSONException)
    {
      Log.e("DFP", "Problems parsing ad param set");
    }
  }
  
  private void S()
  {
    if ((ay instanceof eg))
    {
      ((eg)ay).setCallback(aW);
      e(2131166444);
    }
    while (!(ay instanceof com.yelp.android.appdata.webrequests.d)) {
      return;
    }
    ((com.yelp.android.appdata.webrequests.d)ay).setCallback(aS);
    e(2131165345);
  }
  
  private void T()
  {
    a(EventIri.BusinessRedeemCheckInOffer);
    CheckInOfferDialog.a(as.getCheckInOffer(), as).show(getActivity().getSupportFragmentManager(), "");
  }
  
  private void U()
  {
    a(EventIri.BusinessDealClicked);
    YelpDeal localYelpDeal = as.getDeal();
    if (localYelpDeal == null) {
      return;
    }
    startActivity(ActivityDealDetail.a(getActivity(), as, localYelpDeal.getId()));
  }
  
  private void V()
  {
    Object localObject = new TreeMap();
    ((Map)localObject).put("business_id", as.getId());
    ((Map)localObject).put("call_to_action_id", as.getCallToAction().getId());
    at.a(EventIri.CallToActionBusinessClick, (Map)localObject);
    localObject = Uri.parse(as.getCallToAction().getUrl());
    if (("http".equals(((Uri)localObject).getScheme())) || ("https".equals(((Uri)localObject).getScheme()))) {
      startActivity(WebViewActivity.getWebIntent(getActivity(), (Uri)localObject, as.getDisplayName(), ViewIri.CallToActionWebView, EnumSet.noneOf(WebViewActivity.Feature.class)));
    }
    while (!"tel".equals(((Uri)localObject).getScheme())) {
      return;
    }
    startActivity(r.a((Uri)localObject));
  }
  
  private void W()
  {
    AppData.a(EventIri.BusinessAddedToContacts, "business_id", as.getId());
    m.a(getActivity(), as);
  }
  
  private void X()
  {
    b(EventIri.DirectionsToBusiness);
    r.a(getActivity(), as);
  }
  
  private void Y()
  {
    AppData.a(EventIri.BusinessMessageTheBusinessOpen);
    startActivityForResult(ActivityMessageTheBusiness.a(getActivity(), as), 1031);
  }
  
  private void Z()
  {
    a(EventIri.BusinessOpenYelpMenu);
    startActivity(WebViewActivity.getWebIntent(getActivity(), Uri.parse(as.getMenu().getActionUrl()), as.getMenu().getViewTitle(), ViewIri.BusinessMenu, EnumSet.of(WebViewActivity.Feature.EVENTS)));
  }
  
  private View a(int paramInt1, int paramInt2, View.OnClickListener paramOnClickListener)
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903144, m(), false);
    localView.findViewById(2131493383).setOnClickListener(paramOnClickListener);
    paramOnClickListener = (TextView)localView.findViewById(2131493384);
    paramOnClickListener.setText(getString(paramInt1));
    paramOnClickListener.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(paramInt2), null, null, null);
    return localView;
  }
  
  private View a(String paramString, View.OnClickListener paramOnClickListener)
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903141, m(), false);
    ((TextView)localView.findViewById(2131493377)).setText(paramString);
    localView.findViewById(2131493378).setOnClickListener(paramOnClickListener);
    return localView;
  }
  
  private View a(String paramString1, View.OnClickListener paramOnClickListener1, boolean paramBoolean, String paramString2, View.OnClickListener paramOnClickListener2)
  {
    View localView1 = getActivity().getLayoutInflater().inflate(2130903142, m(), false);
    View localView2 = localView1.findViewById(2131493381);
    if (!TextUtils.isEmpty(paramString1))
    {
      b(localView1, paramBoolean, paramString1);
      localView2.setOnClickListener(paramOnClickListener1);
      localView2.setVisibility(0);
    }
    for (;;)
    {
      paramString1 = (TextView)localView1.findViewById(2131493380);
      if (TextUtils.isEmpty(paramString2)) {
        break;
      }
      paramString1.setText(paramString2);
      paramString1.setOnClickListener(paramOnClickListener2);
      paramString1.setVisibility(0);
      return localView1;
      localView2.setVisibility(8);
    }
    paramString1.setVisibility(8);
    return localView1;
  }
  
  public static BusinessPageFragment a(YelpBusiness paramYelpBusiness, String paramString, SearchRequest paramSearchRequest)
  {
    BusinessPageFragment localBusinessPageFragment = new BusinessPageFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra.business", paramYelpBusiness);
    if (paramString != null) {
      localBundle.putString("top_highlighted_review_id", paramString);
    }
    if (paramSearchRequest != null) {
      localBundle.putParcelable("search_request", paramSearchRequest);
    }
    localBusinessPageFragment.setArguments(localBundle);
    return localBusinessPageFragment;
  }
  
  public static BusinessPageFragment a(YelpBusiness paramYelpBusiness, String paramString, SearchRequest paramSearchRequest, BusinessSearchResult paramBusinessSearchResult)
  {
    paramYelpBusiness = a(paramYelpBusiness, paramString, paramSearchRequest);
    paramString = paramYelpBusiness.getArguments();
    if (paramBusinessSearchResult != null) {
      paramString.putParcelable("business_search_result", paramBusinessSearchResult);
    }
    return paramYelpBusiness;
  }
  
  public static BusinessPageFragment a(YelpBusiness paramYelpBusiness, String paramString, SearchRequest paramSearchRequest, BusinessSearchResult paramBusinessSearchResult, YelpCheckIn paramYelpCheckIn)
  {
    paramYelpBusiness = a(paramYelpBusiness, paramString, paramSearchRequest, paramBusinessSearchResult);
    paramYelpBusiness.getArguments().putParcelable("extra.check_in", paramYelpCheckIn);
    return paramYelpBusiness;
  }
  
  private String a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 > 0) {
      return StringUtils.a(getActivity(), paramInt1, paramInt3, new Object[0]);
    }
    return getString(paramInt2);
  }
  
  private void a(int paramInt)
  {
    startActivityForResult(ActivityMediaViewer.a(getActivity(), as, C.d(), paramInt), 1041);
  }
  
  private void a(Context paramContext, EventIri paramEventIri, String paramString)
  {
    paramEventIri = c(paramEventIri, paramString);
    com.yelp.android.analytics.i.a(paramContext, paramEventIri);
    at.a(paramEventIri.a());
  }
  
  private void a(Bundle paramBundle)
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903140, m(), false);
    MapSpannableLinearLayout localMapSpannableLinearLayout = (MapSpannableLinearLayout)localView.findViewById(2131493371);
    az = localMapSpannableLinearLayout.getYelpMap();
    if (!localMapSpannableLinearLayout.a(as, new com.yelp.android.ui.map.b(getActivity()), as.getAssetForMap(), paramBundle, true))
    {
      localMapSpannableLinearLayout.b();
      paramBundle = (ImageView)localView.findViewById(2131493376);
      ImageView localImageView = (ImageView)localView.findViewById(2131493373);
      paramBundle.setVisibility(4);
      localImageView.setVisibility(0);
    }
    localMapSpannableLinearLayout.setOnClickListener(new bt(this, EventIri.BusinessMap));
    ao = localView.findViewById(2131493372);
    k.a(localMapSpannableLinearLayout, 2131165348, as.getCompleteAddress());
    l = ((TextView)ao.findViewById(2131493374));
    m = ((TextView)ao.findViewById(2131493375));
    n = new com.yelp.android.ui.util.h(new View[] { localView });
    y.a(2131492878, com.yelp.android.ui.util.bw.a(n).a());
  }
  
  private void a(android.view.Menu paramMenu)
  {
    if (android.support.v4.view.as.a(b) == null)
    {
      paramMenu = AnimationUtils.loadAnimation(getActivity(), 2130968599);
      android.support.v4.view.as.b(b, 2130903062);
      android.support.v4.view.as.a(b).startAnimation(paramMenu);
      b.setVisible(true);
    }
  }
  
  private void a(View paramView, boolean paramBoolean, String paramString)
  {
    paramView = (Button)paramView.findViewById(2131493380);
    paramView.setText(paramString);
    paramView.setEnabled(paramBoolean);
  }
  
  private void a(EventIri paramEventIri)
  {
    a(paramEventIri, null);
  }
  
  private void a(EventIri paramEventIri, String paramString)
  {
    at.a(c(paramEventIri, paramString).a());
  }
  
  private void a(com.yelp.android.ui.activities.reviewpage.ab paramab, List<LocalAd> paramList, boolean paramBoolean)
  {
    Object localObject1 = as.getFromThisBusiness();
    if ((localObject1 != null) && (((FromThisBusiness)localObject1).getShowTeaser()))
    {
      paramab.clear();
      paramab.notifyDataSetChanged();
    }
    do
    {
      return;
      if ((paramList == null) || (paramList.isEmpty()))
      {
        if (paramBoolean)
        {
          aD = true;
          R();
        }
        paramab.clear();
        paramab.notifyDataSetChanged();
        return;
      }
    } while (!paramab.isEmpty());
    localObject1 = as.getCategoryForBusinessSearchResult();
    Object localObject2 = paramList.iterator();
    int i1 = 0;
    if (((Iterator)localObject2).hasNext())
    {
      Object localObject3 = (LocalAd)((Iterator)localObject2).next();
      at.a(AutoIri.AdBusinessImpression, ((LocalAd)localObject3).getIriParams(as, false));
      if (((LocalAd)localObject3).getBusiness() != null)
      {
        localObject3 = ((LocalAd)localObject3).getBusiness().getCategories().iterator();
        while (((Iterator)localObject3).hasNext()) {
          if (((Category)((Iterator)localObject3).next()).getName().equals(localObject1)) {
            i1 += 1;
          }
        }
      }
      for (;;)
      {
        break;
        YelpLog.error("AdsFix", "LocalAd has a null business. business id: " + as.getId() + " ad type: " + ((LocalAd)localObject3).getType() + "local ad business id: " + ((LocalAd)localObject3).getBusinessId());
      }
    }
    int i2;
    if (paramBoolean)
    {
      i2 = 2131492870;
      localObject2 = y.a(i2);
      if (i1 != paramList.size()) {
        break label334;
      }
      ((com.yelp.android.ui.util.bv)localObject2).a(getString(2131166287, new Object[] { localObject1 }));
    }
    for (;;)
    {
      paramab.a(paramList);
      paramab.notifyDataSetChanged();
      return;
      i2 = 2131492869;
      break;
      label334:
      ((com.yelp.android.ui.util.bv)localObject2).a(getString(2131166919));
    }
  }
  
  private void a(com.yelp.android.ui.util.bw<com.yelp.android.ui.util.h> parambw)
  {
    SpannableStringBuilder localSpannableStringBuilder1 = null;
    aa = getActivity().getLayoutInflater().inflate(2130903134, m(), false);
    ab = ((TextView)aa.findViewById(2131493347));
    Object localObject = as.getAttributions();
    if (!((List)localObject).isEmpty())
    {
      localObject = (Attribution)((List)localObject).get(0);
      if (((Attribution)localObject).getType() == Attribution.Type.FOOTER)
      {
        localSpannableStringBuilder1 = new SpannableStringBuilder(((Attribution)localObject).getText());
        parambw = null;
      }
    }
    for (;;)
    {
      if (TextUtils.isEmpty(localSpannableStringBuilder1))
      {
        ab.setVisibility(8);
        return;
        if (((Attribution)localObject).getType() == Attribution.Type.YP_ADS)
        {
          if (G())
          {
            localObject = getActivity().getLayoutInflater().inflate(2130903143, m(), false);
            SpannableStringBuilder localSpannableStringBuilder2 = new SpannableStringBuilder(getString(2131166373));
            StringUtils.a(localSpannableStringBuilder2, "%1$s", getResources().getDrawable(2130838560));
            ((TextView)((View)localObject).findViewById(2131493382)).setText(localSpannableStringBuilder2);
            parambw.b((View)localObject);
            parambw = null;
            continue;
          }
          localSpannableStringBuilder1 = new SpannableStringBuilder(getString(2131166359));
          StringUtils.a(localSpannableStringBuilder1, "%1$s", getResources().getDrawable(2130838560));
          parambw = getString(2131166014);
        }
      }
      else
      {
        ab.setVisibility(0);
        ab.setText(localSpannableStringBuilder1);
        ab.setContentDescription(parambw);
        return;
      }
      parambw = null;
    }
  }
  
  private void a(String paramString)
  {
    Intent localIntent = r.a(as.getDialablePhone());
    paramString = c(EventIri.CallBusiness, paramString).a(null).a("scheme", localIntent.getData().getScheme());
    com.yelp.android.analytics.i.a(getActivity(), paramString);
    at.a(paramString.a());
    try
    {
      startActivity(localIntent);
      return;
    }
    catch (Exception paramString)
    {
      Log.e("BusinessPageFragment", "Error launching dialer intent: " + paramString.toString(), paramString);
      ((ActivityBusinessPage)getActivity()).a(2131165455, getText(2131165767));
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    FromThisBusiness localFromThisBusiness = as.getFromThisBusiness();
    if ((localFromThisBusiness != null) && (localFromThisBusiness.getShowTeaser())) {
      aT.onError(null, null);
    }
    while ((o != null) && (o.isFetching())) {
      return;
    }
    o = new cy(paramString1, paramString2, aT);
    o.execute(new Void[0]);
  }
  
  private void a(EnumSet<BusinessPageFragment.MessageAlertBoxNotification> paramEnumSet)
  {
    FragmentActivity localFragmentActivity = getActivity();
    aq = new t();
    c.getAlertsPager().setAdapter(aq);
    Object localObject = localFragmentActivity.getIntent();
    boolean bool = ((Intent)localObject).getBooleanExtra("com.yelp.android.webview_done", false);
    if (as.getReservation() != null) {
      aq.a(localFragmentActivity, as);
    }
    for (;;)
    {
      paramEnumSet = paramEnumSet.iterator();
      while (paramEnumSet.hasNext())
      {
        localObject = (BusinessPageFragment.MessageAlertBoxNotification)paramEnumSet.next();
        ((BusinessPageFragment.MessageAlertBoxNotification)localObject).addNotification(localFragmentActivity, aq, ((BusinessPageFragment.MessageAlertBoxNotification)localObject).getData());
      }
      if (bool) {
        aq.a(localFragmentActivity, as, ((Intent)localObject).getStringExtra("com.yelp.android.webview_title"), ((Intent)localObject).getStringExtra("com.yelp.android.webview_subtitle"), ((Intent)localObject).getBooleanExtra("com.yelp.android.webview_has_details", false));
      }
    }
    paramEnumSet = as.getDateReopening();
    localObject = as.getMovedToBusinessId();
    bool = as.isMovedToNewAddress();
    int i2;
    if (as.isClosed())
    {
      if (bool) {
        aq.b(localFragmentActivity, (String)localObject);
      }
    }
    else
    {
      if (as.getCheckedInFriendCount() != 0) {
        aq.b(localFragmentActivity, as);
      }
      if (as.getSpecialHours().isEmpty()) {
        break label401;
      }
      i2 = Calendar.getInstance().get(6);
      paramEnumSet = as.getSpecialHours().iterator();
    }
    label274:
    label399:
    for (;;)
    {
      if (!paramEnumSet.hasNext()) {
        break label401;
      }
      localObject = ((SpecialHours)paramEnumSet.next()).getDays();
      int i1 = 0;
      for (;;)
      {
        if (i1 >= localObject.length) {
          break label399;
        }
        if (localObject[i1] == i2 - 1)
        {
          aq.d(localFragmentActivity, as.getDialablePhone());
          break label274;
          if (paramEnumSet != null)
          {
            aq.a(localFragmentActivity, android.text.format.DateFormat.getLongDateFormat(localFragmentActivity).format(paramEnumSet));
            break;
          }
          if (!TextUtils.isEmpty((CharSequence)localObject))
          {
            aq.c(localFragmentActivity, (String)localObject);
            break;
          }
          aq.b(localFragmentActivity);
          break;
        }
        i1 += 1;
      }
    }
    label401:
    aq.notifyDataSetChanged();
    if (aq.getCount() != 0)
    {
      c.getAlertsPager().setVisibility(0);
      return;
    }
    c.getAlertsPager().setVisibility(8);
  }
  
  private void a(List<ReviewHighlight> paramList, int paramInt)
  {
    G = paramList;
    F = paramInt;
    ae = true;
    ap();
  }
  
  private void aa()
  {
    TreeMap localTreeMap = new TreeMap();
    String str = null;
    if (ar != null) {
      str = ar.getBizDimension();
    }
    if (!StringUtils.e(str)) {
      localTreeMap.put("biz_dimension", str);
    }
    localTreeMap.put("id", as.getBusiness().getId());
    AppData.a(EventIri.BusinessReservationOpen, localTreeMap);
    startActivity(FindReservation.a(getActivity(), as, str, "source_business_page"));
  }
  
  private void ab()
  {
    startActivity(ActivityMovies.a(getActivity(), as.getMovies(), as.getId(), as.getTheaterUrl()));
  }
  
  private void ac()
  {
    a(EventIri.BusinessMoreInfoClicked);
    startActivity(ActivityMoreInfoPage.a(getActivity(), as, true));
  }
  
  private void ad()
  {
    ((ActivityBusinessPage)getActivity()).showDialog(309);
  }
  
  private void ae()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (!AppData.b().m().e())
    {
      startActivityForResult(ActivityLogin.a(localFragmentActivity, 2131166037), 1007);
      return;
    }
    startActivityForResult(ActivityCheckIn.a(localFragmentActivity, as), 1006);
  }
  
  private void af()
  {
    String str = as.getId();
    if (!ac) {
      a(str, as.getYelpRequestId());
    }
    if (!ad) {
      c(str);
    }
    if (!ae) {
      d(str);
    }
    if (!af) {
      e(str);
    }
    if (!ag) {
      b(str);
    }
    if (!ah) {
      f(str);
    }
  }
  
  private void ag()
  {
    b("com.yelp.android.reservation.update", new an(this));
    b("com.yelp.android.tips.add", new ao(this));
    b("com.yelp.android.tips.update", new ap(this));
    b("com.yelp.android.tips.delete", new aq(this));
    b("com.yelp.android.review.update", new ar(this));
    b("com.yelp.android.review.state.update", new as(this));
    b("com.yelp.android.media.add", new at(this));
    b("com.yelp.android.media.update", new au(this));
    b("com.yelp.android.media.delete", new av(this));
    b("com.yelp.android.review.translate", new ax(this));
    a("com.yelp.android.offer_redeemed", new ay(this));
  }
  
  private String ah()
  {
    if (G == null) {}
    for (int i1 = 0; (as.getReviewInsights().size() > 0) && (i1 > 0); i1 = G.size()) {
      return getString(2131166519);
    }
    if (i1 == 0) {
      return getString(2131166520);
    }
    return getString(2131166518);
  }
  
  private Locale ai()
  {
    Iterator localIterator1;
    if (T != null) {
      localIterator1 = aI.iterator();
    }
    for (;;)
    {
      Locale localLocale;
      if (localIterator1.hasNext())
      {
        localLocale = (Locale)localIterator1.next();
        Iterator localIterator2 = T.iterator();
        do
        {
          if (!localIterator2.hasNext()) {
            break;
          }
        } while (!((YelpBusinessReview)localIterator2.next()).getLocale().equals(localLocale));
      }
      for (int i1 = 1; i1 == 0; i1 = 0)
      {
        return localLocale;
        return null;
      }
    }
  }
  
  private void aj()
  {
    AppData.b().i().f().a(as);
    new ObjectDirtyEvent(as, "com.yelp.android.business.update").a(getActivity());
  }
  
  private void ak()
  {
    if (!TextUtils.isEmpty(an))
    {
      z.clear();
      if (A.isEmpty()) {
        A.b(a(an, new bb(this)));
      }
    }
    do
    {
      do
      {
        return;
      } while (as.getPhotosAndVideosCount() == 0);
      A.clear();
    } while (!z.isEmpty());
    z.b(x);
  }
  
  private void al()
  {
    boolean bool = false;
    Object localObject = y.a(2131492877);
    ((com.yelp.android.ui.util.bv)localObject).a(ah());
    ArrayList localArrayList = new ArrayList();
    List localList = as.getReviewInsights();
    if (localList != null) {
      localArrayList.addAll(localList);
    }
    if ((F > 0) && (!G.isEmpty()))
    {
      localArrayList.addAll(G);
      if (G != null) {
        break label140;
      }
    }
    label140:
    for (int i1 = 0;; i1 = G.size())
    {
      i1 = F - i1;
      if (i1 > 0)
      {
        localObject = ((com.yelp.android.ui.util.bv)localObject).a();
        if (i1 > 0) {
          bool = true;
        }
        b((View)localObject, bool, a(2131623956, 2131166109, i1));
      }
      D.a(localArrayList);
      return;
    }
  }
  
  private void am()
  {
    boolean bool = false;
    if (!TextUtils.isEmpty(ak))
    {
      N.clear();
      P.clear();
      O.clear();
      if (Q.isEmpty()) {
        Q.b(a(ak, new bc(this)));
      }
      return;
    }
    Object localObject3;
    Iterator localIterator1;
    Object localObject2;
    Object localObject1;
    if (as.getReviewCount() != 0)
    {
      P.clear();
      Q.clear();
      if ((T != null) && (!T.isEmpty()))
      {
        localObject3 = AppData.b().g().h();
        localIterator1 = aI.iterator();
        localObject2 = (Locale)localIterator1.next();
        localObject1 = getString(2131166398);
        if (((Locale)localObject2).equals(localObject3)) {
          break label867;
        }
        localObject1 = getString(2131166521, new Object[] { ((Locale)localObject2).getDisplayLanguage() });
      }
    }
    label862:
    label865:
    label867:
    for (;;)
    {
      if (ai.containsKey(localObject2)) {}
      Object localObject4;
      for (int i1 = ((Integer)ai.get(localObject2)).intValue();; i1 = 0)
      {
        localObject3 = new ArrayList();
        localIterator2 = T.iterator();
        while (localIterator2.hasNext())
        {
          localObject4 = (YelpBusinessReview)localIterator2.next();
          if (((YelpBusinessReview)localObject4).getLocale().equals(localObject2)) {
            ((ArrayList)localObject3).add(localObject4);
          }
        }
      }
      Iterator localIterator2 = aG.entrySet().iterator();
      localObject2 = localObject1;
      localObject1 = localObject3;
      while ((i1 < 5) && (localIterator2.hasNext()) && (localIterator1.hasNext()))
      {
        localObject3 = (Map.Entry)localIterator2.next();
        ((com.yelp.android.ui.util.bv)((Map.Entry)localObject3).getValue()).a((CharSequence)localObject2);
        ((com.yelp.android.ui.activities.reviewpage.bi)((Map.Entry)localObject3).getKey()).a((List)localObject1);
        localObject3 = (Locale)localIterator1.next();
        localObject2 = getString(2131166521, new Object[] { ((Locale)localObject3).getDisplayLanguage() });
        localObject1 = new ArrayList();
        localObject4 = T.iterator();
        while (((Iterator)localObject4).hasNext())
        {
          YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)((Iterator)localObject4).next();
          if (localYelpBusinessReview.getLocale().equals(localObject3)) {
            ((ArrayList)localObject1).add(localYelpBusinessReview);
          }
        }
        i1 += ((ArrayList)localObject1).size();
      }
      while (localIterator2.hasNext())
      {
        localObject3 = (Map.Entry)localIterator2.next();
        ((com.yelp.android.ui.util.bv)((Map.Entry)localObject3).getValue()).a("");
        ((com.yelp.android.ui.activities.reviewpage.bi)((Map.Entry)localObject3).getKey()).clear();
      }
      aH.a((CharSequence)localObject2);
      N.a((List)localObject1);
      if (aq())
      {
        localObject3 = y.a(2131165462);
        localObject2 = (com.yelp.android.ui.util.bv)aG.values().iterator().next();
        localObject1 = localObject2;
        if (b == "") {
          localObject1 = aH;
        }
        if (b != "")
        {
          ((com.yelp.android.ui.util.bv)localObject3).a(b);
          ((com.yelp.android.ui.util.bv)localObject1).a("");
        }
      }
      localObject1 = y.a(2131166477).a();
      O.clear();
      P();
      for (;;)
      {
        if (localObject1 == null) {
          break label865;
        }
        if (T == null) {}
        for (i1 = 0;; i1 = T.size())
        {
          i1 = as.getReviewCount() - i1;
          if (i1 > 0) {
            bool = true;
          }
          b((View)localObject1, bool, a(2131623958, 2131166118, i1));
          return;
          if (!O.isEmpty()) {
            break label862;
          }
          localObject1 = AppData.b().g().h().getDisplayLanguage();
          localObject2 = (TextView)getActivity().getLayoutInflater().inflate(2130903145, m(), false).findViewById(2131493385);
          ((TextView)localObject2).setText(getString(2131166200, new Object[] { localObject1 }));
          O.b((View)localObject2);
          localObject1 = y.a(2131492880).a();
          break;
        }
        if (!P.isEmpty()) {
          break;
        }
        Q.clear();
        P.b(a(as.getReviewState().getTextResourceForState(), 2130837855, aM));
        return;
        localObject1 = null;
      }
      break;
    }
  }
  
  private void an()
  {
    boolean bool = false;
    if (!TextUtils.isEmpty(al))
    {
      H.clear();
      J.clear();
      I.clear();
      if (K.isEmpty()) {
        K.b(a(al, new bd(this)));
      }
    }
    label339:
    label342:
    for (;;)
    {
      return;
      Object localObject;
      if (as.getTipCount() != 0)
      {
        J.clear();
        K.clear();
        if ((M != null) && (!M.isEmpty()))
        {
          H.a(M);
          localObject = y.a(2131166526).a();
          I.clear();
        }
      }
      for (;;)
      {
        if (localObject == null) {
          break label342;
        }
        if (M == null) {}
        for (int i1 = 0;; i1 = M.size())
        {
          i1 = as.getTipCount() - i1;
          if (i1 > 0) {
            bool = true;
          }
          b((View)localObject, bool, a(2131623960, 2131166124, i1));
          return;
          if (!I.isEmpty()) {
            break label339;
          }
          localObject = AppData.b().g().h().getDisplayLanguage();
          TextView localTextView = (TextView)getActivity().getLayoutInflater().inflate(2130903145, m(), false).findViewById(2131493385);
          localTextView.setText(getString(2131166209, new Object[] { localObject }));
          I.b(localTextView);
          localObject = y.a(2131492881).a();
          break;
        }
        if (!J.isEmpty()) {
          break;
        }
        K.clear();
        J.b(a(2131165341, 2130837862, aN));
        return;
        localObject = null;
      }
    }
  }
  
  private void ao()
  {
    if (!TextUtils.isEmpty(am))
    {
      V.clear();
      W.clear();
      if (X.isEmpty()) {
        X.b(a(am, new be(this)));
      }
    }
    for (;;)
    {
      ScrollToLoadListView localScrollToLoadListView = m();
      if (!localScrollToLoadListView.g())
      {
        localScrollToLoadListView.f();
        localScrollToLoadListView.addFooterView(aa);
      }
      return;
      if ((Z != null) && (!Z.isEmpty()))
      {
        X.clear();
        W.clear();
        V.a(Z);
      }
      else if (V.isEmpty())
      {
        X.clear();
        W.clear();
        W.b(a(2131165301, 2130837853, aO));
      }
    }
  }
  
  private void ap()
  {
    if (ac)
    {
      a(p, r, true);
      if (ad)
      {
        ak();
        if (ae)
        {
          al();
          if (af)
          {
            am();
            if (ag)
            {
              an();
              if (ah)
              {
                ao();
                a(q, s, false);
              }
            }
            if (U > 0) {
              O();
            }
          }
        }
      }
      y.notifyDataSetChanged();
    }
  }
  
  private boolean aq()
  {
    com.yelp.android.appdata.i locali = AppData.b().f();
    boolean bool = locali.G();
    int i1;
    if (System.currentTimeMillis() > locali.J() + 7776000000L)
    {
      i1 = 1;
      if (locali.I() <= 60) {
        break label63;
      }
    }
    label63:
    for (int i2 = 1;; i2 = 0)
    {
      if ((bool) || (i1 != 0) || (i2 != 0)) {
        break label68;
      }
      return true;
      i1 = 0;
      break;
    }
    label68:
    return false;
  }
  
  private ReviewSource b(ReviewSource paramReviewSource)
  {
    ReviewState localReviewState = as.getReviewState();
    if (ReviewState.FINISHED_RECENTLY.equals(localReviewState)) {
      paramReviewSource = ReviewSource.BizPageReviewsListEdit;
    }
    while (!ReviewState.FINISHED_NOT_RECENTLY.equals(localReviewState)) {
      return paramReviewSource;
    }
    return ReviewSource.BizPageReviewsListUpdate;
  }
  
  private void b(View paramView, boolean paramBoolean, String paramString)
  {
    paramView = (Button)paramView.findViewById(2131493381);
    paramView.setText(paramString);
    paramView.setEnabled(paramBoolean);
    if (paramBoolean)
    {
      paramView.setTextColor(getResources().getColor(2131361808));
      return;
    }
    paramView.setTextColor(getResources().getColor(2131361906));
  }
  
  private void b(EventIri paramEventIri)
  {
    a(getActivity(), paramEventIri, null);
  }
  
  private void b(EventIri paramEventIri, String paramString)
  {
    a(getActivity(), paramEventIri, paramString);
  }
  
  private void b(String paramString)
  {
    if ((L != null) && (L.isFetching())) {
      return;
    }
    L = new cw(paramString, 0, 5, AppData.b().g().h(), false, aU);
    L.execute(new String[0]);
  }
  
  private void b(boolean paramBoolean)
  {
    PlatformAction localPlatformAction = as.getPlatformAction();
    if (localPlatformAction != null)
    {
      String str = null;
      if (ar != null) {
        str = ar.getBizDimension();
      }
      TreeMap localTreeMap = new TreeMap();
      if (!StringUtils.e(str)) {
        localTreeMap.put("biz_dimension", str);
      }
      if (paramBoolean) {
        localTreeMap.put("source", "promoted");
      }
      localTreeMap.put("id", as.getId());
      AppData.a(EventIri.BusinessPlatformOpen, localTreeMap);
      startActivity(WebViewActivity.getWebIntent(getActivity(), Uri.parse(localPlatformAction.getUrl()), localPlatformAction.getTitle(), ViewIri.OpenURL, EnumSet.of(WebViewActivity.Feature.EVENTS, WebViewActivity.Feature.FINISH_ON_BACK), 2131166916, true, str, "source_business_page"));
    }
  }
  
  private com.yelp.android.analytics.h c(EventIri paramEventIri, String paramString)
  {
    paramEventIri = new com.yelp.android.analytics.h().a(paramEventIri).a(as.getYelpRequestId()).a("id", as.getId());
    if (!TextUtils.isEmpty(paramString)) {
      paramEventIri.a("source", paramString);
    }
    return paramEventIri;
  }
  
  private void c(String paramString)
  {
    if ((B != null) && (B.isFetching())) {
      return;
    }
    B = new BusinessMediaRequest(paramString, 0, 3, aR);
    B.execute(new Void[0]);
  }
  
  private void d(String paramString)
  {
    if ((E != null) && (E.isFetching())) {
      return;
    }
    E = new eu(paramString, 0, 3, aJ, new cb(this));
    E.execute(new String[0]);
  }
  
  private void e(int paramInt)
  {
    if (ax == null)
    {
      ax = new com.yelp.android.ui.dialogs.bn(getActivity());
      ax.setCancelable(false);
    }
    ax.setMessage(getString(paramInt));
    ax.show();
  }
  
  private void e(String paramString)
  {
    if ((S != null) && (S.isFetching())) {
      return;
    }
    if (T == null) {}
    for (int i1 = 0; i1 >= 5; i1 = T.size())
    {
      af = true;
      ap();
      return;
    }
    Object localObject = AppData.b().g().h();
    Locale localLocale = ai();
    if (localLocale != null) {
      localObject = localLocale;
    }
    for (;;)
    {
      S = new ey(paramString, 0, 5 - i1, R, (Locale)localObject, aV);
      S.execute(new String[0]);
      return;
    }
  }
  
  private void f(String paramString)
  {
    if ((Y != null) && (Y.isFetching())) {
      return;
    }
    Y = new com.yelp.android.appdata.webrequests.ab(paramString, 0, 3, aP);
    Y.execute(new Void[0]);
  }
  
  private void g(String paramString)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("id", as.getId());
    localHashMap.put("source", paramString);
    AppData.a(EventIri.BusinessReviewWrite, localHashMap);
  }
  
  private void u()
  {
    Handler localHandler = ((ActivityBusinessPage)getActivity()).getHandler();
    if ((av != null) && (!av.isEmpty()) && (av.get(0) != null)) {
      localHandler.postDelayed(new br(this), 100L);
    }
    while (!aw) {
      return;
    }
    aw = false;
    localHandler.postDelayed(new bs(this, CheckInOfferDialog.a(as.getCheckInOffer(), as, false)), 100L);
  }
  
  private void v()
  {
    c.a(as, m());
    F();
    if (!ap) {
      H();
    }
    a(EnumSet.noneOf(BusinessPageFragment.MessageAlertBoxNotification.class));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    startActivityForResult(ActivityLogin.a(getActivity(), paramInt2), paramInt1);
  }
  
  public void a(Intent paramIntent)
  {
    a(EventIri.BusinessPhotos);
    a(paramIntent.getIntExtra("extra.media_index", 0));
  }
  
  public void a(ReviewHighlight paramReviewHighlight)
  {
    startActivity(ActivityReviewsFilteredByHighlightPage.a(getActivity(), as, paramReviewHighlight));
  }
  
  public void a(Tip paramTip)
  {
    Intent localIntent = WriteTip.a(getActivity(), paramTip, as.getId());
    localIntent.putExtra("changed entry id", paramTip.getId());
    startActivityForResult(localIntent, 1057);
  }
  
  public void a(Tip paramTip, Checkable paramCheckable)
  {
    paramTip = SendCompliment.a(getActivity(), paramTip);
    startActivity(ActivityLogin.a(getActivity(), 2131166775, 2131166038, paramTip));
  }
  
  public void a(Tip paramTip, SpannedImageButton paramSpannedImageButton)
  {
    dc localdc = AppData.b().m();
    if (localdc.e())
    {
      new fq(paramTip.getId(), paramSpannedImageButton.isChecked()).execute(new Void[0]);
      if (paramSpannedImageButton.isChecked()) {
        paramTip.getFeedback().addPositiveFeedback();
      }
      for (;;)
      {
        paramTip = H;
        if (paramTip != null) {
          paramTip.notifyDataSetChanged();
        }
        return;
        paramTip.getFeedback().removePositiveFeedback();
      }
    }
    paramSpannedImageButton.toggle();
    if (localdc.c()) {}
    for (int i1 = 2131166777;; i1 = 2131166049)
    {
      paramSpannedImageButton.getContext().startActivity(ActivityLogin.a(paramSpannedImageButton.getContext(), i1));
      return;
    }
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    ActivityBusinessPage localActivityBusinessPage = (ActivityBusinessPage)getActivity();
    as = paramYelpBusiness;
    localActivityBusinessPage.updateOptionsMenu();
    aj();
    localActivityBusinessPage.a(as);
    Q();
  }
  
  public void a(ReviewSource paramReviewSource)
  {
    startActivity(ActivityReviewWrite.a(getActivity(), as, paramReviewSource));
  }
  
  public void a(File paramFile)
  {
    paramFile = (ActivityBusinessPage)getActivity();
    paramFile.hideLoadingDialog();
    cp.a(paramFile, getText(2131165338), getText(2131165772));
  }
  
  public boolean a(Bitmap paramBitmap, File paramFile, ImageInputHelper.ImageSource paramImageSource)
  {
    paramBitmap = (YelpActivity)getActivity();
    paramBitmap.hideLoadingDialog();
    paramBitmap.getHandler().post(new ba(this, paramBitmap));
    return true;
  }
  
  public void b(Intent paramIntent)
  {
    a(EnumSet.of(BusinessPageFragment.MessageAlertBoxNotification.MESSAGE_THE_BUSINESS_SUCCESS_NOTIFICATION.setData(paramIntent)));
    m().b(true);
  }
  
  public void b(Tip paramTip)
  {
    startActivity(ActivityUserProfile.a(getActivity(), paramTip.getUserId()));
  }
  
  public void c()
  {
    a(EventIri.BusinessPullOpenPhoto);
    if ((as.getBizOwnerVideo() != null) && (as.getPhotoCount() > 0))
    {
      a(1);
      return;
    }
    a(0);
  }
  
  public void c(Tip paramTip)
  {
    Intent localIntent = TipComplimentsLikes.a(getActivity(), paramTip, as.getDisplayName(), true);
    localIntent.putExtra("changed entry id", paramTip.getId());
    startActivityForResult(localIntent, 1057);
  }
  
  public void d()
  {
    startActivityForResult(PhotoTeaser.a(getActivity(), as), 1037);
  }
  
  public void e()
  {
    if (au.c())
    {
      if (au.e())
      {
        if (as.isBookmarked())
        {
          ay = new eg(as, aW);
          a(EventIri.BusinessRemoveBookmark);
          if (aK != null) {
            aK.a(true);
          }
        }
        for (;;)
        {
          S();
          ay.execute(new Void[0]);
          return;
          ay = new com.yelp.android.appdata.webrequests.d(as, aS);
          a(EventIri.BusinessAddBookmark);
          e.a("qqzv6y");
          if (aK != null) {
            aK.a(false);
          }
        }
      }
      if (!as.isBookmarked()) {
        break label214;
      }
    }
    label214:
    for (int i1 = 302;; i1 = 301)
    {
      ((ActivityBusinessPage)getActivity()).showDialog(i1);
      c.setBookmarkChecked(false);
      return;
      if (as.isBookmarked()) {}
      for (i1 = 1004;; i1 = 1003)
      {
        a(i1, 2131166036);
        c.setBookmarkChecked(false);
        return;
      }
    }
  }
  
  public void f()
  {
    startActivity(EditBusiness.a(getActivity(), as));
  }
  
  void g()
  {
    a(EventIri.BusinessRedeemDeal);
    YelpDeal localYelpDeal = (YelpDeal)as.getUserDeals().get(0);
    if ((j == null) || (!j.isFetching()))
    {
      j = new gn(new ca(this, localYelpDeal.getId()), as.getId());
      j.execute(new Void[0]);
      ((ActivityBusinessPage)getActivity()).showLoadingDialog(j);
    }
  }
  
  public void h()
  {
    if (au.c())
    {
      if (au.e())
      {
        startActivityForResult(WriteTip.a(getActivity(), as), 1055);
        return;
      }
      ((ActivityBusinessPage)getActivity()).showDialog(303);
      return;
    }
    a(1056, 2131166033);
  }
  
  public void h_()
  {
    a(EnumSet.of(BusinessPageFragment.MessageAlertBoxNotification.TIP_NOTIFICATION));
  }
  
  public void i()
  {
    if (au.c())
    {
      if (au.e())
      {
        d();
        return;
      }
      ((ActivityBusinessPage)getActivity()).showDialog(300);
      return;
    }
    a(1038, 2131166034);
  }
  
  public void k()
  {
    a(EnumSet.of(BusinessPageFragment.MessageAlertBoxNotification.VIDEO_UPLOAD_NOTIFICATION));
    m().b(true);
  }
  
  public void l()
  {
    if ((b != null) && (android.support.v4.view.as.a(b) != null))
    {
      android.support.v4.view.as.a(b).clearAnimation();
      android.support.v4.view.as.a(b, null);
      b.setVisible(false);
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    YelpActivity localYelpActivity = (YelpActivity)getActivity();
    localYelpActivity.setTitle(as.getDisplayName());
    if ("4kMBvIEWPxWkWKFN__8SxQ".equals(as.getId()))
    {
      if (a == null) {
        a = new com.yelp.android.ui.widgets.b();
      }
      localObject1 = (RelativeLayout)localYelpActivity.findViewById(2131493058);
      a.a(localYelpActivity, (RelativeLayout)localObject1);
    }
    Object localObject1 = m();
    ((ScrollToLoadListView)localObject1).setDivider(null);
    ((ScrollToLoadListView)localObject1).setFooterDividersEnabled(false);
    ((ScrollToLoadListView)localObject1).setItemsCanFocus(true);
    y = new com.yelp.android.ui.util.bs();
    c = new com.yelp.android.ui.panels.businesspage.b(getActivity(), this, (PullDownListView)localObject1);
    ((ScrollToLoadListView)localObject1).addHeaderView(c, "HEADER", false);
    c.findViewById(2131493351).setOnClickListener(new aa(this, EventIri.BusinessCheckIn, "button_bar"));
    if (getArguments().getParcelable("extra.check_in") != null)
    {
      localObject2 = (YelpCheckIn)getArguments().getParcelable("extra.check_in");
      c.a(true, (YelpCheckIn)localObject2);
    }
    c.findViewById(2131493354).setOnClickListener(new al(this));
    d = c.findViewById(2131493349);
    d.setOnClickListener(new aw(this, EventIri.BusinessAddPhoto, "button_bar"));
    registerForContextMenu(d);
    c.findViewById(2131493353).setOnClickListener(new bh(this, EventIri.BusinessToggleBookmark, "button_bar"));
    int i1 = getResources().getDimensionPixelSize(2131427431);
    if (ar != null)
    {
      localObject2 = new ArrayList();
      HashSet localHashSet = new HashSet();
      Iterator localIterator = ar.getSearchActions().iterator();
      while (localIterator.hasNext())
      {
        SearchAction localSearchAction = (SearchAction)localIterator.next();
        BusinessSearchResult.SearchActionType localSearchActionType = localSearchAction.getSearchActionType();
        if (!localHashSet.contains(localSearchActionType))
        {
          ((List)localObject2).add(localSearchAction.getBusinessListButton());
          localHashSet.add(localSearchActionType);
        }
      }
      e = new p((Collection)localObject2, as);
      y.a(2131492876, com.yelp.android.ui.util.bw.a(e).a(2131492893, i1, 0).a());
    }
    a(paramBundle);
    g = new cd(EnumSet.allOf(BusinessRedeemButton.class), localYelpActivity, as);
    y.a(2131492873, com.yelp.android.ui.util.bw.a(g).a());
    h = new p(EnumSet.allOf(BusinessDealsOffers.class), as);
    y.a(2131492874, com.yelp.android.ui.util.bw.a(h).a(2131492893, i1, 0).a());
    i = new p(EnumSet.allOf(BusinessBasicInfo.class), as);
    y.a(2131492871, com.yelp.android.ui.util.bw.a(i).a(2131492893, i1, 0).a());
    p = new com.yelp.android.ui.activities.reviewpage.ab(localYelpActivity, as);
    y.a(2131492870, com.yelp.android.ui.util.bw.a(getString(2131166919), p).a(2130772318).b(2131492893).a());
    t = new FromThisBusinessPanel(localYelpActivity, null);
    u = new com.yelp.android.ui.util.h(new View[] { t });
    paramBundle = com.yelp.android.ui.util.bw.a(getString(2131165875), u).a(2130772318);
    a(paramBundle);
    y.a(2131165875, paramBundle.a());
    w = new ConsumerAlertPanel(localYelpActivity, y, (ScrollToLoadListView)localObject1, at);
    y.a();
    Object localObject2 = getResources();
    aB = localYelpActivity.getLayoutInflater().inflate(2130903185, (ViewGroup)localObject1, false);
    aA = ((PublisherAdView)aB.findViewById(2131493460));
    paramBundle = new AdSize(((Resources)localObject2).getInteger(2131558412), ((Resources)localObject2).getInteger(2131558411));
    localObject2 = new AdSize(((Resources)localObject2).getInteger(2131558413), ((Resources)localObject2).getInteger(2131558411));
    aA.setAdSizes(new AdSize[] { paramBundle, localObject2 });
    aA.setFocusableInTouchMode(false);
    aC = new com.yelp.android.ui.util.h(new View[0]);
    y.a(2131492875, com.yelp.android.ui.util.bw.a(aC).a());
    J();
    I();
    M();
    K();
    N();
    q = new com.yelp.android.ui.activities.reviewpage.ab(localYelpActivity, as);
    y.a(2131492869, com.yelp.android.ui.util.bw.a(getString(2131166919), q).a(2130772318).b(2131492893).a());
    v = new com.yelp.android.ui.util.h(new View[0]);
    y.a(2131492882, v);
    ap();
    ((ScrollToLoadListView)localObject1).setOnItemClickListener(this);
    ((ScrollToLoadListView)localObject1).setOnItemLongClickListener(this);
    ((ScrollToLoadListView)localObject1).setAdapter(y);
    af();
    ag();
    ((ActionBarActivity)getActivity()).getSupportActionBar().a(new bq(this));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 == -1) && (paramInt1 == 1038)) {
      if (au.e()) {
        d();
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                if ((paramInt2 != -1) || (paramInt1 != 1003)) {
                  break;
                }
              } while (!au.e());
              e();
              return;
              if ((paramInt2 != -1) || (paramInt1 != 1004)) {
                break;
              }
            } while (!au.e());
            e();
            return;
            if ((paramInt2 != -1) || (paramInt1 != 1056)) {
              break;
            }
          } while (!au.e());
          h();
          return;
          if ((paramInt2 != -1) || (paramInt1 != 1007)) {
            break;
          }
        } while (!au.e());
        startActivityForResult(ActivityCheckIn.a(getActivity(), as), 1006);
        return;
        if ((paramInt2 != -1) || (paramInt1 != 1013)) {
          break;
        }
        paramIntent = ActivityDealRedemption.a(paramIntent);
      } while (((YelpDeal)first).countUsablePurchases() != 0);
      as.getUserDeals().remove(first);
      a(as);
      return;
      if ((paramInt2 == -1) && (paramInt1 == 1006))
      {
        paramIntent = (YelpCheckIn)BusinessContributionType.CHECK_IN.getContribution(paramIntent);
        av = paramIntent.getNotificationsList(getActivity());
        aw = paramIntent.isOfferAwarded();
        u();
        c.a(true, paramIntent);
        return;
      }
    } while (paramInt1 != 1008);
    if ((paramIntent != null) && (paramIntent.hasExtra("offer"))) {
      as.setCheckInOffer((Offer)paramIntent.getParcelableExtra("offer"));
    }
    if ((av != null) && (!av.isEmpty())) {
      av.remove(0);
    }
    u();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    aK = ((bv)paramActivity);
    aL = ((bw)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AppData.b().f().H();
    FragmentActivity localFragmentActivity = getActivity();
    Bundle localBundle = getArguments();
    as = ((YelpBusiness)localBundle.getParcelable("extra.business"));
    R = localBundle.getString("top_highlighted_review_id");
    AppData localAppData = AppData.b();
    at = localAppData.k();
    au = localAppData.m();
    k = new s();
    V = new CheckinRankAdapter(localFragmentActivity, CheckinRankAdapter.RankMode.BIZ);
    aI = new LinkedHashSet();
    aI.add(AppData.b().g().h());
    aJ = ((SearchRequest)localBundle.getParcelable("search_request"));
    ar = ((BusinessSearchResult)localBundle.getParcelable("business_search_result"));
    if (paramBundle != null)
    {
      av = paramBundle.getParcelableArrayList("mCheckInNotifications");
      if (paramBundle.containsKey("deal dialog")) {
        k.a((YelpDeal)paramBundle.getParcelable("deal dialog"), true);
      }
      if (paramBundle.containsKey("extra.multiple")) {
        Z = paramBundle.getParcelableArrayList("extra.multiple");
      }
    }
    u();
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(android.view.Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755011, paramMenu);
  }
  
  public void onDestroy()
  {
    aA.destroy();
    super.onDestroy();
    az.d();
    aA.setAdListener(null);
    b(o);
    b(B);
    b(E);
    b(L);
    b(S);
    b(Y);
    b(ay);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if ((paramAdapterView instanceof BusinessDealsOffers))
    {
      paramAdapterView = (BusinessDealsOffers)paramAdapterView;
      switch (bp.b[paramAdapterView.ordinal()])
      {
      }
    }
    do
    {
      do
      {
        return;
        U();
        return;
        a(EventIri.BusinessCheckInOffer, "button");
        ae();
        return;
        V();
        return;
        if ((paramAdapterView instanceof BusinessBasicInfo))
        {
          paramAdapterView = (BusinessBasicInfo)paramAdapterView;
          switch (bp.c[paramAdapterView.ordinal()])
          {
          default: 
            return;
          case 1: 
            a("button");
            return;
          case 2: 
            X();
            return;
          case 3: 
            Y();
            return;
          case 4: 
            Z();
            return;
          case 5: 
            aa();
            return;
          case 6: 
            b(false);
            return;
          case 7: 
            ab();
            return;
          }
          ac();
          return;
        }
        if ((paramAdapterView instanceof cf))
        {
          paramAdapterView = (cf)paramAdapterView;
          switch (bp.d[paramAdapterView.a().getSearchActionType().ordinal()])
          {
          default: 
            return;
          case 1: 
            aa();
            return;
          }
          b(true);
          return;
        }
        if ((paramAdapterView instanceof BusinessRedeemButton))
        {
          paramAdapterView = (BusinessRedeemButton)paramAdapterView;
          switch (bp.e[paramAdapterView.ordinal()])
          {
          default: 
            return;
          case 1: 
            g();
            return;
          }
          T();
          return;
        }
        if (!(paramAdapterView instanceof YelpBusinessReview)) {
          break;
        }
      } while (!(N instanceof com.yelp.android.ui.activities.reviewpage.bi));
      paramAdapterView = (YelpBusinessReview)paramAdapterView;
      paramView = new ArrayList(T);
      startActivity(ActivityReviewPager.a(getActivity(), as.getId(), as.getDisplayName(), as.getCountry(), paramView, paramView.indexOf(paramAdapterView), ai, aj, true));
      return;
    } while (!(paramAdapterView instanceof DisplayableAsUserBadge));
    paramAdapterView = (DisplayableAsUserBadge)paramAdapterView;
    startActivity(ActivityUserProfile.a(getActivity(), paramAdapterView.getUserId()));
  }
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if (((paramAdapterView instanceof BusinessBasicInfo)) && ((BusinessBasicInfo)paramAdapterView == BusinessBasicInfo.CALL))
    {
      k.b(paramView, getString(2131166298), as.getLocalizedPhone());
      return true;
    }
    return false;
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    az.e();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 2131494121: 
      g("menu");
      a(b(ReviewSource.BizPageMenu));
      return true;
    case 2131494122: 
      a(EventIri.BusinessAddPhoto, "menu");
      i();
      return true;
    case 2131494123: 
      a(EventIri.BusinessCheckIn, "menu");
      ae();
      return true;
    case 2131494124: 
      a(EventIri.BusinessAddTip, "menu");
      h();
      return true;
    case 2131493353: 
      a(EventIri.BusinessToggleBookmark, "menu");
      e();
      return true;
    case 2131494125: 
      a("menu");
      return true;
    case 2131494126: 
      a(EventIri.BusinessEditClicked, "menu");
      f();
      return true;
    case 2131494127: 
      W();
      return true;
    }
    a(EventIri.BusinessShare, "menu");
    ad();
    return true;
  }
  
  public void onPause()
  {
    aA.pause();
    super.onPause();
    az.b();
  }
  
  public void onPrepareOptionsMenu(android.view.Menu paramMenu)
  {
    int i2 = paramMenu.size();
    int i1 = 0;
    if (i1 < i2)
    {
      switch (paramMenu.getItem(i1).getItemId())
      {
      }
      for (;;)
      {
        if (!Features.video_capture.isEnabled()) {
          paramMenu.findItem(2131494122).setTitle(2131165338);
        }
        i1 += 1;
        break;
        paramMenu.getItem(i1).setEnabled(true);
      }
    }
    b = paramMenu.findItem(2131494120);
    Object localObject = (ActivityBusinessPage)getActivity();
    if (((ActivityBusinessPage)localObject).a()) {
      ((ActivityBusinessPage)localObject).getHandler().postDelayed(new az(this, paramMenu), 200L);
    }
    localObject = paramMenu.findItem(2131494123);
    MenuItem localMenuItem = paramMenu.findItem(2131493353);
    if ((localObject != null) && (localMenuItem != null))
    {
      Location localLocation = AppData.b().n().c();
      if (0.5D <= as.getDistance(localLocation)) {
        break label314;
      }
      android.support.v4.view.as.a((MenuItem)localObject, 1);
      android.support.v4.view.as.a(localMenuItem, 0);
    }
    for (;;)
    {
      paramMenu.findItem(2131494121).setTitle(getActivity().getString(as.getReviewState().getTextResourceForState()));
      return;
      label314:
      android.support.v4.view.as.a(localMenuItem, 1);
      i1 = 2130837561;
      if (as.isBookmarked()) {
        i1 = 2130837560;
      }
      localMenuItem.setIcon(i1);
      android.support.v4.view.as.a((MenuItem)localObject, 0);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    c.b(m());
    az.c();
    aA.resume();
    R();
    if (!ap) {
      Q();
    }
    aL.c();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("mCheckInNotifications", av);
    az.a(paramBundle);
    if ((Z != null) && (!Z.isEmpty()))
    {
      ArrayList localArrayList = (ArrayList)Z;
      if (localArrayList != null) {
        paramBundle.putParcelableArrayList("extra.multiple", localArrayList);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */