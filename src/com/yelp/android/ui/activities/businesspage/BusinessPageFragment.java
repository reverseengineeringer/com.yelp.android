package com.yelp.android.ui.activities.businesspage;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.LevelListDrawable;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.view.ViewPager;
import android.support.v4.view.q;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.l;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.analytics.adjust.AdjustManager.YelpAdjustEvent;
import com.yelp.android.analytics.g.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.experiment.ShareToolbarExperiment;
import com.yelp.android.appdata.experiment.ShareToolbarExperiment.Cohort;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.experiment.WriteReviewExperiment;
import com.yelp.android.appdata.experiment.WriteReviewExperiment.Cohort;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest.OfflineAttributionEventType;
import com.yelp.android.appdata.webrequests.ae;
import com.yelp.android.appdata.webrequests.av;
import com.yelp.android.appdata.webrequests.aw;
import com.yelp.android.appdata.webrequests.ck;
import com.yelp.android.appdata.webrequests.ck.a;
import com.yelp.android.appdata.webrequests.cl;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.dj;
import com.yelp.android.appdata.webrequests.dk;
import com.yelp.android.appdata.webrequests.dw;
import com.yelp.android.appdata.webrequests.dy;
import com.yelp.android.appdata.webrequests.dy.a;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.appdata.webrequests.fd;
import com.yelp.android.serializable.AndroidAppAnnotation;
import com.yelp.android.serializable.Attribution;
import com.yelp.android.serializable.Attribution.Type;
import com.yelp.android.serializable.BusinessClaimedResult;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.BusinessSearchResult.SearchActionType;
import com.yelp.android.serializable.CallToAction;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.ContinueLastOrderAvailability;
import com.yelp.android.serializable.ContinueLastOrderInfo;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.FromThisBusiness;
import com.yelp.android.serializable.HealthData;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.PlatformAction;
import com.yelp.android.serializable.PlatformSearchAction;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.serializable.ReservationSearchAction;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.android.serializable.SearchAction;
import com.yelp.android.serializable.SpecialHours;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpBusinessTiny;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpHoursPair;
import com.yelp.android.services.BusinessShareFormatter;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.services.f.a;
import com.yelp.android.ui.activities.ActivityCheckIn;
import com.yelp.android.ui.activities.ActivityConfirmAccount;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.businesspage.movies.a.b;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.deals.ActivityDealDetail;
import com.yelp.android.ui.activities.deals.ActivityDealRedemption;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter.RankMode;
import com.yelp.android.ui.activities.messaging.ActivityMessageTheBusiness;
import com.yelp.android.ui.activities.mutatebiz.EditBusiness;
import com.yelp.android.ui.activities.photoviewer.ActivityBusinessMediaViewer;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.reservations.ActivityReservationFlow;
import com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPager;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewsFilteredByHighlightPage;
import com.yelp.android.ui.activities.reviewpage.a.a;
import com.yelp.android.ui.activities.reviews.ActivityContextualLogin;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.activities.reviews.StarsView;
import com.yelp.android.ui.activities.support.PlatformWebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.ui.activities.tips.WriteTip;
import com.yelp.android.ui.dialogs.CheckInOfferDialog;
import com.yelp.android.ui.dialogs.YelpProgressDialogFragment;
import com.yelp.android.ui.map.MapSpannableLinearLayout;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.panels.businesspage.ConsumerAlertPanel;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.ImageInputHelper.c;
import com.yelp.android.ui.util.PullDownListView;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.widgets.InAppNotificationView;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.BizClaimUtil;
import com.yelp.android.util.BizClaimUtil.SourceButton;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
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
  implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, a.a, com.yelp.android.ui.activities.reviewpage.d.a, ImageInputHelper.c, com.yelp.android.ui.widgets.d.a
{
  private aj A;
  private com.yelp.android.ui.util.e B;
  private com.yelp.android.ui.util.e C;
  private BusinessMediaRequest D;
  private com.yelp.android.ui.util.z E;
  private com.yelp.android.ui.activities.reviewpage.a F;
  private dw G;
  private int H;
  private List<ReviewHighlight> I;
  private com.yelp.android.ui.activities.reviewpage.d J;
  private com.yelp.android.ui.util.e K;
  private com.yelp.android.ui.util.e L;
  private com.yelp.android.ui.util.e M;
  private ck N;
  private List<Tip> O;
  private com.yelp.android.ui.activities.reviewpage.e P;
  private com.yelp.android.ui.util.e Q;
  private com.yelp.android.ui.util.e R;
  private String S;
  private dy T;
  private List<YelpBusinessReview> U;
  private int V;
  private CheckinRankAdapter W;
  private com.yelp.android.ui.util.e X;
  private com.yelp.android.ui.util.e Y;
  private ae Z;
  private com.yelp.android.ui.widgets.a a;
  private View aA;
  private boolean aB;
  private d aC;
  private BusinessSearchResult aD;
  private YelpBusiness aE;
  private MetricsManager aF;
  private co aG;
  private ArrayList<Intent> aH;
  private String aI;
  private boolean aJ;
  private boolean aK;
  private com.yelp.android.ui.dialogs.e aL;
  private YelpProgressDialogFragment aM;
  private YelpProgressDialogFragment aN;
  private ApiRequest<Void, ?, ?> aO;
  private YelpMap<YelpBusiness> aP;
  private PublisherAdView aQ;
  private FrameLayout aR;
  private com.yelp.android.ui.util.e aS;
  private boolean aT = false;
  private View aU;
  private View aV;
  private LinkedHashMap<com.yelp.android.ui.activities.reviewpage.e, aj.b<com.yelp.android.ui.activities.reviewpage.e>> aW;
  private aj.b<com.yelp.android.ui.activities.reviewpage.e> aX;
  private LinkedHashSet<Locale> aY;
  private SearchRequest aZ;
  private ArrayList<Ranking> aa;
  private com.yelp.android.ui.util.e ab;
  private Boolean ac;
  private com.yelp.android.appdata.webrequests.z ad;
  private com.yelp.android.ui.panels.businesssearch.e ae;
  private dj af;
  private List<YelpBusinessTiny> ag;
  private com.yelp.android.appdata.webrequests.messaging.g ah;
  private com.yelp.android.ui.util.e ai;
  private boolean aj;
  private View ak;
  private TextView al;
  private boolean am = false;
  private boolean an = false;
  private boolean ao = false;
  private boolean ap = false;
  private boolean aq = false;
  private boolean ar = false;
  private boolean as = false;
  private boolean at = false;
  private Map<Locale, Integer> au = new com.yelp.android.g.a();
  private ArrayList<Locale> av;
  private String aw = null;
  private String ax = null;
  private String ay = null;
  private String az = null;
  private MenuItem b;
  private a ba;
  private b bb;
  private c bc;
  private GoogleApiClient bd;
  private aw be;
  private av bf;
  private boolean bg;
  private boolean bh;
  private final View.OnClickListener bi = new BusinessPageFragment.19(this);
  private final BusinessPageFragment.h bj = new BusinessPageFragment.20(this, EventIri.BusinessAddTip, "button");
  private final BusinessPageFragment.h bk = new BusinessPageFragment.21(this, EventIri.BusinessCheckIn, "button");
  private final ApiRequest.b<ArrayList<Ranking>> bl = new BusinessPageFragment.42(this);
  private final ApiRequest.b<BusinessClaimedResult> bm = new BusinessPageFragment.43(this);
  private final ApiRequest.b<List<YelpBusinessTiny>> bn = new BusinessPageFragment.44(this);
  private final ApiRequest.b<Boolean> bo = new BusinessPageFragment.46(this);
  private final com.google.android.gms.ads.a bp = new BusinessPageFragment.47(this);
  private final ApiRequest.b<MediaPayload> bq = new BusinessPageFragment.48(this);
  private final ApiRequest.b<YelpBookmark> br = new BusinessPageFragment.49(this);
  private final ApiRequest.b<List<LocalAd>> bs = new BusinessPageFragment.50(this);
  private final ApiRequest.b<ck.a> bt = new BusinessPageFragment.51(this);
  private final ApiRequest.b<dy.a> bu = new BusinessPageFragment.52(this);
  private final com.yelp.android.appdata.webrequests.core.c.a bv = new BusinessPageFragment.53(this);
  private final RecyclerView.l bw = new BusinessPageFragment.54(this);
  private final com.yelp.android.services.push.c.a bx = new BusinessPageFragment.55(this);
  private final ApiRequest.b<ContinueLastOrderInfo> by = new BusinessPageFragment.57(this);
  private final ApiRequest.b<ContinueLastOrderAvailability> bz = new BusinessPageFragment.58(this);
  private com.yelp.android.ui.panels.businesspage.b c;
  private View d;
  private StarsView e;
  private c f;
  private ClaimButtonAdapter g;
  private e i;
  private c j;
  private c k;
  private fd l;
  private com.yelp.android.ui.util.k m;
  private TextView n;
  private TextView o;
  private com.yelp.android.ui.util.e p;
  private cl q;
  private com.yelp.android.ui.activities.reviewpage.b r;
  private com.yelp.android.ui.activities.reviewpage.b s;
  private List<LocalAd> t;
  private List<LocalAd> u;
  private FromThisBusinessPanel v;
  private com.yelp.android.ui.util.e w;
  private com.yelp.android.ui.util.e x;
  private ConsumerAlertPanel y;
  private RecyclerView z;
  
  private void H()
  {
    String str1 = aE.k();
    String str2 = aE.l();
    if ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str2)))
    {
      p.clear();
      return;
    }
    if (!TextUtils.isEmpty(str1)) {
      n.setText(str1);
    }
    while (!TextUtils.isEmpty(str2))
    {
      o.setText(str2);
      return;
      n.setVisibility(8);
    }
    o.setVisibility(8);
  }
  
  private boolean I()
  {
    FromThisBusiness localFromThisBusiness = aE.aY();
    return (localFromThisBusiness != null) && (localFromThisBusiness.c());
  }
  
  private void J()
  {
    if (!I())
    {
      w.clear();
      return;
    }
    v.a(aE, al(), aE(), Boolean.TRUE.equals(ac), aE.aY());
    if (w.getCount() == 0) {
      w.b(v);
    }
    w.notifyDataSetChanged();
  }
  
  private boolean K()
  {
    return (aE.r()) && (aE.W());
  }
  
  private boolean L()
  {
    return (aE.r()) && (!aE.W()) && (!TextUtils.isEmpty(aE.ag()));
  }
  
  private void M()
  {
    Object localObject = new BusinessPageFragment.7(this, EventIri.BusinessOpenMoreHighlights);
    F = new com.yelp.android.ui.activities.reviewpage.a(2130903455, this);
    localObject = aj.c.a(getString(2131166518), F).b(2131690767).a(2130772428).a(a(getString(2131166172), (View.OnClickListener)localObject, false));
    A.a(2131689486, ((aj.c)localObject).b());
  }
  
  private void N()
  {
    boolean bool3 = true;
    z = new RecyclerView(getActivity());
    z.setLayoutParams(new ViewGroup.LayoutParams(-1, AppData.b().getResources().getDimensionPixelSize(2131362066) + n.b));
    z.a(bw);
    E = new com.yelp.android.ui.util.z(aE, aE.aa(), getActivity());
    z.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
    z.setAdapter(E);
    Object localObject = new Intent();
    ((Intent)localObject).setPackage(getContext().getPackageName());
    localObject = getActivity().createPendingResult(1044, (Intent)localObject, 268435456);
    E.a((PendingIntent)localObject, null);
    localObject = new BusinessPageFragment.8(this, EventIri.BusinessAddPhoto, "button");
    int i2 = aE.A();
    if (i2 != 0)
    {
      boolean bool2;
      label219:
      BusinessPageFragment.9 local9;
      int i1;
      if (aE.F() > 0)
      {
        bool1 = true;
        if (aE.I() <= 0) {
          break label400;
        }
        bool2 = true;
        local9 = new BusinessPageFragment.9(this, EventIri.BusinessMorePhotos, bool1, bool2);
        B = new com.yelp.android.ui.util.e(new View[0]);
        C = new com.yelp.android.ui.util.e(new View[0]);
        if ((!bool1) || (!bool2)) {
          break label406;
        }
        i1 = 2131166350;
        label278:
        localObject = null;
        if (i2 > 3)
        {
          localObject = String.format(getString(2131166526), new Object[] { Integer.valueOf(i2) });
          if (i2 <= 0) {
            break label433;
          }
        }
      }
      label400:
      label406:
      label433:
      for (boolean bool1 = bool3;; bool1 = false)
      {
        localObject = a((String)localObject, local9, bool1);
        A.a(2131166349, aj.c.a(getString(i1), B).a(2130772428).a((View)localObject).b());
        A.a(2131689488, aj.c.a(getString(i1), C).a(2130772428).b());
        return;
        bool1 = false;
        break;
        bool2 = false;
        break label219;
        if (bool1)
        {
          i1 = 2131166791;
          break label278;
        }
        an = true;
        au();
        i1 = 2131166349;
        break label278;
      }
    }
    an = true;
    A.a(2131166255, aj.c.a(getString(2131166255), new com.yelp.android.ui.util.e(new View[] { a(2131165464, 2130837967, (View.OnClickListener)localObject) })).a(2130772428).b());
  }
  
  private void O()
  {
    ae = new com.yelp.android.ui.panels.businesssearch.e(getActivity());
    A.a(2131166439, aj.c.a(getString(2131166439), ae).b(2131689530).a(2130772428).b());
  }
  
  private void P()
  {
    int i1 = aE.L();
    Object localObject = new BusinessPageFragment.10(this, EventIri.BusinessMoreTipsClicked);
    View localView = w();
    localObject = a(getString(2131166180), (View.OnClickListener)localObject, true);
    J = new com.yelp.android.ui.activities.reviewpage.d(AppData.b().q().a(), this);
    A.a(2131166523, aj.c.a(getString(2131166523), J).b(2131690807).b(localView).a((View)localObject).b());
    K = new com.yelp.android.ui.util.e(new View[0]);
    A.a(2131689490, aj.c.a(getString(2131166523), K).b(localView).a((View)localObject).b());
    L = new com.yelp.android.ui.util.e(new View[0]);
    A.a(2131166266, aj.c.a(getString(2131166266), L).b(localView).b());
    M = new com.yelp.android.ui.util.e(new View[0]);
    A.a(2131689501, aj.c.a(getString(2131166523), M).b(localView).b());
    if (i1 == 0) {
      aq = true;
    }
  }
  
  private ArrayList<String> Q()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = aW.keySet().iterator();
    while (localIterator.hasNext())
    {
      com.yelp.android.ui.activities.reviewpage.e locale = (com.yelp.android.ui.activities.reviewpage.e)localIterator.next();
      if ((locale.a().size() != 0) && (locale.b())) {
        localArrayList.add(locale.c().getLanguage());
      }
    }
    if ((P.a().size() != 0) && (P.b())) {
      localArrayList.add(P.c().getLanguage());
    }
    return localArrayList;
  }
  
  private void R()
  {
    Object localObject1 = aE.aX();
    if (localObject1 == null) {
      return;
    }
    int i1 = Math.min(3, ((HealthData)localObject1).d().size());
    Object localObject2 = ((HealthData)localObject1).d().subList(0, i1);
    f localf = new f();
    localf.a((List)localObject2);
    localObject2 = new BusinessPageFragment.11(this, (HealthData)localObject1);
    localObject1 = a(((HealthData)localObject1).b(), (View.OnClickListener)localObject2, true);
    ((TextView)((View)localObject1).findViewById(2131689641)).setTextAppearance(getContext(), 2131296462);
    A.a(2131689484, aj.c.a(localf).a().a(2130772428).a(getString(2131166514)).a((View)localObject1).b());
  }
  
  private void S()
  {
    Object localObject1 = new BusinessPageFragment.13(this, EventIri.BusinessMoreReviewsClicked);
    aU = a(getString(2131166178), (View.OnClickListener)localObject1, true);
    if (aD()) {
      A.a(2131165589, aj.c.a(getString(2131166425), new com.yelp.android.ui.util.e(new View[0])).a(2130772428).b());
    }
    aW = new LinkedHashMap();
    localObject1 = new SparseIntArray();
    ((SparseIntArray)localObject1).put(0, 2131689496);
    ((SparseIntArray)localObject1).put(1, 2131689497);
    ((SparseIntArray)localObject1).put(2, 2131689498);
    ((SparseIntArray)localObject1).put(3, 2131689499);
    int i1 = 0;
    while (i1 < 4)
    {
      Object localObject2 = T();
      com.yelp.android.ui.activities.reviewpage.e locale = new com.yelp.android.ui.activities.reviewpage.e();
      localObject2 = aj.c.a(getString(2131166425), locale).b(2131690551).b((View)localObject2).b();
      aW.put(locale, localObject2);
      A.a(((SparseIntArray)localObject1).get(i1), (aj.b)localObject2);
      i1 += 1;
    }
    localObject1 = T();
    P = new com.yelp.android.ui.activities.reviewpage.e();
    aX = aj.c.a(getString(2131166425), P).b(2131690551).b((View)localObject1).a(aU).b();
    A.a(2131166480, aX);
    Q = new com.yelp.android.ui.util.e(new View[0]);
    A.a(2131166260, aj.c.a(getString(2131166256), Q).b((View)localObject1).b());
    R = new com.yelp.android.ui.util.e(new View[0]);
    A.a(2131689500, aj.c.a(getString(2131166425), R).b((View)localObject1).b());
  }
  
  private View T()
  {
    if (U())
    {
      if (aE.w() == ReviewState.NOT_STARTED) {
        return a(getString(2131166625), 0);
      }
      if (aE.w() == ReviewState.DRAFTED) {
        return a(getString(2131165909), aE.H());
      }
    }
    View localView = a(getString(2131166625), 0);
    localView.findViewById(2131690062).setVisibility(8);
    return localView;
  }
  
  private boolean U()
  {
    return (aE.w() == ReviewState.NOT_STARTED) || (aE.w() == ReviewState.DRAFTED);
  }
  
  private void V()
  {
    int i2 = aE.K();
    BusinessPageFragment.14 local14 = new BusinessPageFragment.14(this, EventIri.BusinessMoreRegularsClicked, "button");
    int i1;
    aj localaj;
    aj.c localc;
    String str;
    if (i2 > 3)
    {
      i1 = i2 - 3;
      localaj = A;
      localc = aj.c.a(getString(2131165620), W).b(2131690708).a(2130772428);
      str = a(2131230743, 2131166177, i1);
      if (i1 <= 0) {
        break label222;
      }
    }
    label222:
    for (boolean bool = true;; bool = false)
    {
      localaj.a(2131165620, localc.a(a(str, local14, bool)).b());
      X = new com.yelp.android.ui.util.e(new View[0]);
      A.a(2131166237, aj.c.a(getString(2131166237), X).a(2130772428).b());
      Y = new com.yelp.android.ui.util.e(new View[0]);
      A.a(2131689495, aj.c.a(getString(2131165620), Y).a(2130772428).b());
      if (i2 == 0) {
        ar = true;
      }
      return;
      i1 = 0;
      break;
    }
  }
  
  private void W()
  {
    if (ab.getCount() > 0) {
      return;
    }
    View localView = getActivity().getLayoutInflater().inflate(2130903377, m(), false);
    localView.findViewById(2131690616).setOnClickListener(new BusinessPageFragment.15(this));
    ab.b(localView);
    g.a(aE, ac);
  }
  
  private void X()
  {
    if (aV == null) {
      aV = getActivity().getLayoutInflater().inflate(2130903437, m(), false);
    }
    ((TextView)aV.findViewById(2131689641)).setText(StringUtils.a(getActivity(), 2131230763, V, new Object[0]));
    aV.setOnClickListener(new BusinessPageFragment.16(this));
    x.clear();
    x.b(aV);
  }
  
  private void Y()
  {
    Object localObject = A.a(2131165589);
    if (localObject == null) {}
    do
    {
      return;
      localObject = (com.yelp.android.ui.util.e)a;
    } while (!((com.yelp.android.ui.util.e)localObject).isEmpty());
    View localView = LayoutInflater.from(getActivity()).inflate(2130903150, m(), false);
    localView.setOnClickListener(new BusinessPageFragment.17(this));
    localView.findViewById(2131690030).setOnClickListener(new BusinessPageFragment.18(this, (com.yelp.android.ui.util.e)localObject, localView));
    ((com.yelp.android.ui.util.e)localObject).b(localView);
  }
  
  private void Z()
  {
    x();
    y.a(aE);
    i.a(getActivity(), aE);
    j.a(aE);
    k.a(aE);
    if (f != null) {
      f.a(aE);
    }
    c.b(aE);
    c.setBookmarkChecked(aE.U());
    AppData.b().i().d().c(aE);
    int i1 = getActivity().getIntent().getIntExtra("extra.contributing", -1);
    if ((i1 >= 0) && (i1 < BusinessContributionType.values().length)) {
      switch (BusinessPageFragment.59.a[BusinessContributionType.values()[i1].ordinal()])
      {
      }
    }
    for (;;)
    {
      aB = true;
      return;
      h();
      continue;
      ao();
      continue;
      a(null);
    }
  }
  
  private View a(int paramInt1, int paramInt2, View.OnClickListener paramOnClickListener)
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903161, m(), false);
    localView.findViewById(2131690068).setOnClickListener(paramOnClickListener);
    paramOnClickListener = (TextView)localView.findViewById(2131690069);
    paramOnClickListener.setText(getString(paramInt1));
    paramOnClickListener.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(paramInt2), null, null, null);
    return localView;
  }
  
  private View a(String paramString, int paramInt)
  {
    View localView1 = getActivity().getLayoutInflater().inflate(2130903158, m(), false);
    WebImageView localWebImageView = (WebImageView)localView1.findViewById(2131690074);
    TextView localTextView1 = (TextView)localView1.findViewById(2131690065);
    localTextView1.setText(paramString);
    ((LevelListDrawable)localTextView1.getCompoundDrawables()[1]).setLevel(paramInt);
    localView1.findViewById(2131690062).setOnClickListener(new BusinessPageFragment.3(this));
    paramString = (TextView)localView1.findViewById(2131690076);
    localTextView1 = (TextView)localView1.findViewById(2131690064);
    TextView localTextView2 = (TextView)localView1.findViewById(2131690746);
    TextView localTextView3 = (TextView)localView1.findViewById(2131690747);
    TextView localTextView4 = (TextView)localView1.findViewById(2131690556);
    View localView2 = localView1.findViewById(2131690063);
    User localUser = AppData.b().q().p();
    if (localUser == null)
    {
      localWebImageView.setVisibility(8);
      paramString.setVisibility(8);
      localTextView1.setVisibility(8);
      localTextView2.setVisibility(8);
      localTextView3.setVisibility(8);
      localTextView4.setVisibility(8);
      localView2.setVisibility(8);
      return localView1;
    }
    localTextView1.setText(Integer.toString(localUser.k_()));
    localTextView2.setText(Integer.toString(localUser.j_()));
    localTextView3.setText(Integer.toString(localUser.n_()));
    if (localUser.h())
    {
      localTextView4.setVisibility(0);
      localTextView4.setText(android.text.format.DateFormat.format(getResources().getString(2131165825), User.j()));
    }
    for (;;)
    {
      localWebImageView.setImageUrl(localUser.c());
      paramString.setText(localUser.ad());
      return localView1;
      localTextView4.setVisibility(4);
    }
  }
  
  private View a(String paramString, View.OnClickListener paramOnClickListener)
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903157, m(), false);
    ((TextView)localView.findViewById(2131690058)).setText(paramString);
    localView.findViewById(2131690059).setOnClickListener(paramOnClickListener);
    return localView;
  }
  
  private View a(String paramString, View.OnClickListener paramOnClickListener, boolean paramBoolean)
  {
    View localView1 = getActivity().getLayoutInflater().inflate(2130903159, m(), false);
    View localView2 = localView1.findViewById(2131689503);
    if (!TextUtils.isEmpty(paramString))
    {
      a(localView1, paramBoolean, paramString);
      localView2.setOnClickListener(paramOnClickListener);
      localView2.setVisibility(0);
      return localView1;
    }
    localView2.setVisibility(8);
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
  
  public static BusinessPageFragment a(YelpBusiness paramYelpBusiness, String paramString, SearchRequest paramSearchRequest, BusinessSearchResult paramBusinessSearchResult, YelpCheckIn paramYelpCheckIn, Intent paramIntent)
  {
    paramYelpBusiness = a(paramYelpBusiness, paramString, paramSearchRequest, paramBusinessSearchResult, paramYelpCheckIn);
    if (paramIntent != null) {
      paramYelpBusiness.getArguments().putParcelable("message_the_business_notification", paramIntent);
    }
    return paramYelpBusiness;
  }
  
  private String a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 > 0) {
      return StringUtils.a(getActivity(), paramInt1, paramInt3, new Object[0]);
    }
    return getString(paramInt2);
  }
  
  private void a(Context paramContext, EventIri paramEventIri, String paramString)
  {
    paramEventIri = c(paramEventIri, paramString);
    com.yelp.android.analytics.h.a(paramContext, paramEventIri);
    aF.a(paramEventIri.a());
  }
  
  private void a(Bundle paramBundle)
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903156, m(), false);
    MapSpannableLinearLayout localMapSpannableLinearLayout = (MapSpannableLinearLayout)localView.findViewById(2131690016);
    aP = localMapSpannableLinearLayout.getYelpMap();
    if (!localMapSpannableLinearLayout.a(aE, new com.yelp.android.ui.map.b(getActivity()), aE.B(), paramBundle, com.yelp.android.util.f.a()))
    {
      localMapSpannableLinearLayout.a();
      paramBundle = (ImageView)localView.findViewById(2131690057);
      ImageView localImageView = (ImageView)localView.findViewById(2131690054);
      paramBundle.setVisibility(4);
      localImageView.setVisibility(0);
    }
    localMapSpannableLinearLayout.setOnClickListener(new BusinessPageFragment.6(this, EventIri.BusinessMap));
    aA = localView.findViewById(2131690053);
    com.yelp.android.ui.util.h.a(localMapSpannableLinearLayout, 2131165472, aE.m());
    n = ((TextView)aA.findViewById(2131690055));
    o = ((TextView)aA.findViewById(2131690056));
    p = new com.yelp.android.ui.util.e(new View[] { localView });
    A.a(2131689487, aj.c.a(p).b());
  }
  
  private void a(View paramView, String paramString)
  {
    ((TextView)paramView.findViewById(2131690061)).setText(paramString);
  }
  
  private void a(View paramView, boolean paramBoolean, String paramString)
  {
    paramView = (TextView)paramView.findViewById(2131689641);
    paramView.setText(paramString);
    paramView.setEnabled(paramBoolean);
    if (paramBoolean)
    {
      paramView.setTextColor(getResources().getColor(2131623980));
      return;
    }
    ((View)paramView.getParent()).setVisibility(8);
  }
  
  private void a(EventIri paramEventIri)
  {
    a(paramEventIri, null);
  }
  
  private void a(EventIri paramEventIri, String paramString)
  {
    aF.a(c(paramEventIri, paramString).a());
  }
  
  private void a(PlatformSearchAction paramPlatformSearchAction, String paramString)
  {
    PlatformAction localPlatformAction = aE.aH();
    String str1;
    String str2;
    if (localPlatformAction != null)
    {
      str1 = null;
      com.yelp.android.g.a locala = new com.yelp.android.g.a();
      if (aD != null) {
        str1 = aD.g();
      }
      if (!StringUtils.d(str1)) {
        locala.put("biz_dimension", str1);
      }
      locala.put("supported_vertical_types", localPlatformAction.b());
      locala.put("id", aE.aD());
      str2 = al();
      if (!StringUtils.d(str2)) {
        locala.put("search_request_id", str2);
      }
      if (paramPlatformSearchAction != null)
      {
        locala.put("source", "promoted");
        paramPlatformSearchAction = PlatformWebViewActivity.a(getActivity(), Uri.parse(paramPlatformSearchAction.o()), getString(2131166073), ViewIri.OpenURL, EnumSet.of(WebViewActivity.Feature.EVENTS), WebViewActivity.BackBehavior.FINISH_ON_UP, 2131166867, str1, paramPlatformSearchAction.m(), "source_business_page", aE.z(), str2, aE.aD(), paramPlatformSearchAction.k());
        AppData.a(EventIri.BusinessPlatformOpen, locala);
        startActivityForResult(paramPlatformSearchAction, 1047);
      }
    }
    else
    {
      return;
    }
    if (paramString != null) {}
    for (;;)
    {
      paramPlatformSearchAction = PlatformWebViewActivity.a(getActivity(), Uri.parse(paramString), getString(2131166073), ViewIri.OpenURL, EnumSet.of(WebViewActivity.Feature.EVENTS), WebViewActivity.BackBehavior.FINISH_ON_UP, 2131166867, str1, localPlatformAction.b(), "source_business_page", aE.z(), str2, aE.aD());
      break;
      paramString = localPlatformAction.f();
    }
  }
  
  private void a(com.yelp.android.ui.activities.reviewpage.b paramb, List<LocalAd> paramList, boolean paramBoolean)
  {
    Object localObject1 = aE.aY();
    if ((localObject1 != null) && (((FromThisBusiness)localObject1).c()))
    {
      paramb.clear();
      paramb.notifyDataSetChanged();
    }
    do
    {
      return;
      if ((paramList == null) || (paramList.isEmpty()))
      {
        if (paramBoolean)
        {
          aT = true;
          aa();
        }
        paramb.clear();
        paramb.notifyDataSetChanged();
        return;
      }
    } while (!paramb.isEmpty());
    localObject1 = aE.e();
    Object localObject2 = paramList.iterator();
    int i1 = 0;
    LocalAd localLocalAd;
    if (((Iterator)localObject2).hasNext())
    {
      localLocalAd = (LocalAd)((Iterator)localObject2).next();
      aF.a(EventIri.AdBusinessImpression, localLocalAd.a(aE, false));
      if (localLocalAd.a() != null)
      {
        Iterator localIterator = localLocalAd.a().aV().iterator();
        label158:
        if (localIterator.hasNext())
        {
          if (!((Category)localIterator.next()).a().equals(localObject1)) {
            break label361;
          }
          i1 += 1;
        }
      }
    }
    label346:
    label361:
    for (;;)
    {
      break label158;
      TrackOfflineAttributionRequest.a(localLocalAd.a(), TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_IMPRESSION);
      for (;;)
      {
        break;
        YelpLog.remoteError("AdsFix", "LocalAd has a null business. business id: " + aE.aD() + " ad type: " + localLocalAd.k() + "local ad business id: " + localLocalAd.m());
      }
      int i2;
      if (paramBoolean)
      {
        i2 = 2131689478;
        localObject2 = A.a(i2);
        if (i1 != paramList.size()) {
          break label346;
        }
        ((aj.b)localObject2).a(getString(2131166324, new Object[] { localObject1 }));
      }
      for (;;)
      {
        paramb.a(paramList);
        paramb.notifyDataSetChanged();
        return;
        i2 = 2131689477;
        break;
        ((aj.b)localObject2).a(getString(2131166870));
      }
    }
  }
  
  private void a(aj.b<com.yelp.android.ui.activities.reviewpage.e> paramb, String paramString)
  {
    if ((U()) && (e != null))
    {
      ((TextView)e.findViewById(2131690061)).setText(paramString);
      return;
    }
    paramb.a(paramString);
  }
  
  private void a(aj.c<com.yelp.android.ui.util.e> paramc)
  {
    SpannableStringBuilder localSpannableStringBuilder1 = null;
    ak = getActivity().getLayoutInflater().inflate(2130903148, m(), false);
    al = ((TextView)ak.findViewById(2131690018));
    Object localObject = aE.aW();
    if (!((List)localObject).isEmpty())
    {
      localObject = (Attribution)((List)localObject).get(0);
      if (((Attribution)localObject).a() == Attribution.Type.FOOTER)
      {
        localSpannableStringBuilder1 = new SpannableStringBuilder(((Attribution)localObject).c());
        paramc = null;
      }
    }
    for (;;)
    {
      if (TextUtils.isEmpty(localSpannableStringBuilder1))
      {
        al.setVisibility(8);
        return;
        if (((Attribution)localObject).a() == Attribution.Type.YP_ADS)
        {
          if (I())
          {
            localObject = getActivity().getLayoutInflater().inflate(2130903160, m(), false);
            SpannableStringBuilder localSpannableStringBuilder2 = new SpannableStringBuilder(getString(2131166398));
            StringUtils.a(localSpannableStringBuilder2, "%1$s", getResources().getDrawable(2130838993));
            ((TextView)((View)localObject).findViewById(2131690067)).setText(localSpannableStringBuilder2);
            paramc.b((View)localObject);
            paramc = null;
            continue;
          }
          localSpannableStringBuilder1 = new SpannableStringBuilder(getString(2131166382));
          StringUtils.a(localSpannableStringBuilder1, "%1$s", getResources().getDrawable(2130838993));
          paramc = getString(2131166072);
        }
      }
      else
      {
        al.setVisibility(0);
        al.setText(localSpannableStringBuilder1);
        al.setContentDescription(paramc);
        return;
      }
      paramc = null;
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    FromThisBusiness localFromThisBusiness = aE.aY();
    if ((localFromThisBusiness != null) && (localFromThisBusiness.c())) {
      bs.onError(null, null);
    }
    while ((q != null) && (q.u())) {
      return;
    }
    q = new cl(paramString1, paramString2, bs);
    q.f(new Void[0]);
  }
  
  private void a(EnumSet<BusinessPageFragment.MessageAlertBoxNotification> paramEnumSet)
  {
    FragmentActivity localFragmentActivity = getActivity();
    aC = new d();
    c.getAlertsPager().setAdapter(aC);
    Object localObject = localFragmentActivity.getIntent();
    boolean bool = ((Intent)localObject).getBooleanExtra("com.yelp.android.webview_done", false);
    if (aE.aF() != null) {
      aC.a(localFragmentActivity, aE);
    }
    for (;;)
    {
      localObject = aE.ba();
      if ((localObject != null) && (!bool) && (!((ContinueLastOrderInfo)localObject).a()) && (Features.continue_last_order.isEnabled())) {
        aC.a(localFragmentActivity, aE.ba(), aE.aD()).setOnClickListener(new BusinessPageFragment.5(this));
      }
      paramEnumSet = paramEnumSet.iterator();
      while (paramEnumSet.hasNext())
      {
        localObject = (BusinessPageFragment.MessageAlertBoxNotification)paramEnumSet.next();
        ((BusinessPageFragment.MessageAlertBoxNotification)localObject).addNotification(localFragmentActivity, aC, ((BusinessPageFragment.MessageAlertBoxNotification)localObject).getData());
      }
      if (((Intent)localObject).hasExtra("extra.show_logged_out_user_reservation_notification")) {
        aC.b(localFragmentActivity);
      } else if (bool) {
        aC.a(localFragmentActivity, aE, ((Intent)localObject).getStringExtra("com.yelp.android.webview_title"), ((Intent)localObject).getStringExtra("com.yelp.android.webview_subtitle"), ((Intent)localObject).getBooleanExtra("com.yelp.android.webview_has_details", false));
      }
    }
    paramEnumSet = aE.q();
    localObject = aE.ag();
    String str = aE.af();
    int i2;
    if (K())
    {
      aC.b(localFragmentActivity, (String)localObject);
      if (aE.J() != 0) {
        aC.b(localFragmentActivity, aE);
      }
      if (!aE.aS().isEmpty())
      {
        i2 = Calendar.getInstance().get(6);
        localObject = aE.aM();
        paramEnumSet = aE.d();
        localObject = (YelpHoursPair[])((List)localObject).toArray(new YelpHoursPair[((List)localObject).size()]);
        if (!TextUtils.isEmpty(com.yelp.android.services.f.a(getContext(), (YelpHoursPair[])localObject, paramEnumSet).b())) {
          paramEnumSet = aE.aS().iterator();
        }
      }
    }
    else
    {
      label417:
      label611:
      for (;;)
      {
        if (!paramEnumSet.hasNext()) {
          break label613;
        }
        localObject = ((SpecialHours)paramEnumSet.next()).b();
        int i1 = 0;
        for (;;)
        {
          if (i1 >= localObject.length) {
            break label611;
          }
          if (localObject[i1] == i2 - 1)
          {
            aC.d(localFragmentActivity, aE.ao());
            break label417;
            if (L())
            {
              aC.c(localFragmentActivity, (String)localObject);
              break;
            }
            if (aE.r())
            {
              if (paramEnumSet != null)
              {
                aC.a(localFragmentActivity, android.text.format.DateFormat.getLongDateFormat(localFragmentActivity).format(paramEnumSet));
                break;
              }
              aC.c(localFragmentActivity);
              break;
            }
            if (TextUtils.isEmpty(str)) {
              break;
            }
            if (aE.V())
            {
              aC.a(localFragmentActivity, str, aE.aq());
              break;
            }
            aC.b(localFragmentActivity, str, aE.aq());
            break;
          }
          i1 += 1;
        }
      }
    }
    label613:
    aC.c();
    if (aC.b() != 0)
    {
      c.getAlertsPager().setVisibility(0);
      return;
    }
    c.getAlertsPager().setVisibility(8);
  }
  
  private void a(EnumSet<BusinessPageFragment.MessageAlertBoxNotification> paramEnumSet, int paramInt)
  {
    Iterator localIterator = paramEnumSet.iterator();
    while (localIterator.hasNext()) {
      ((BusinessPageFragment.MessageAlertBoxNotification)localIterator.next()).setData(new Intent().putExtra("extra.multiple_media", paramInt));
    }
    a(paramEnumSet);
  }
  
  private void a(List<ReviewHighlight> paramList, int paramInt)
  {
    I = paramList;
    H = paramInt;
    ao = true;
    aA();
  }
  
  private void aA()
  {
    if (at)
    {
      aB();
      if (am)
      {
        a(r, t, true);
        if (an)
        {
          au();
          if (ao)
          {
            av();
            if (ap)
            {
              aw();
              if (aq)
              {
                ax();
                if (ar)
                {
                  ay();
                  az();
                  a(s, u, false);
                  bc.e();
                }
              }
              if (V > 0) {
                X();
              }
              if ((ac != null) && (ac.booleanValue())) {
                W();
              }
            }
          }
        }
      }
    }
    A.notifyDataSetChanged();
  }
  
  private void aB()
  {
    if ((!aj) || (ai.getCount() > 0)) {
      return;
    }
    View localView = getActivity().getLayoutInflater().inflate(2130903283, m(), false);
    localView.findViewById(2131690360).setOnClickListener(new BusinessPageFragment.41(this));
    ai.b(localView);
    AppData.a(EventIri.BusinessMessageTheBusinessShown, Collections.singletonMap("source", "unclaimed_widget"));
  }
  
  private void aC()
  {
    if (q.a(b) == null)
    {
      Animation localAnimation = AnimationUtils.loadAnimation(getActivity(), 2130968605);
      q.b(b, 2130903066);
      q.a(b).startAnimation(localAnimation);
      b.setVisible(true);
    }
  }
  
  private boolean aD()
  {
    com.yelp.android.appdata.c localc = AppData.b().f();
    boolean bool = localc.I();
    int i1;
    if (System.currentTimeMillis() > localc.L() + 7776000000L)
    {
      i1 = 1;
      if (localc.K() <= 60) {
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
  
  private String aE()
  {
    if (aD != null) {
      return aD.g();
    }
    return null;
  }
  
  private void aa()
  {
    if ((!aT) || (aE.v() == null))
    {
      aQ.setVisibility(8);
      return;
    }
    if (aQ.getVisibility() == 0) {
      aQ.setVisibility(4);
    }
    try
    {
      JSONObject localJSONObject = aE.v();
      AppData.a(EventIri.DFPWillRequest);
      aQ.setAdListener(bp);
      aQ.a(AppData.b().n().a(localJSONObject));
      return;
    }
    catch (JSONException localJSONException)
    {
      Log.e("DFP", "Problems parsing ad param set");
    }
  }
  
  private void ab()
  {
    if ((aO instanceof dk))
    {
      ((dk)aO).a(bv);
      f(2131166446);
    }
    while (!(aO instanceof com.yelp.android.appdata.webrequests.h)) {
      return;
    }
    ((com.yelp.android.appdata.webrequests.h)aO).a(br);
    f(2131165470);
  }
  
  private void ac()
  {
    a(EventIri.BusinessRedeemCheckInOffer);
    CheckInOfferDialog.a(aE.aJ(), aE).show(getActivity().getSupportFragmentManager(), "");
  }
  
  private void ad()
  {
    a(EventIri.BusinessDealClicked);
    YelpDeal localYelpDeal = aE.X();
    if (localYelpDeal == null) {
      return;
    }
    startActivity(ActivityDealDetail.a(getActivity(), aE, localYelpDeal.x()));
  }
  
  private void ae()
  {
    Object localObject = new TreeMap();
    ((Map)localObject).put("business_id", aE.aD());
    ((Map)localObject).put("call_to_action_id", aE.bb().e());
    aF.a(EventIri.CallToActionBusinessClick, (Map)localObject);
    localObject = Uri.parse(aE.bb().d());
    if (("http".equals(((Uri)localObject).getScheme())) || ("https".equals(((Uri)localObject).getScheme()))) {
      startActivity(WebViewActivity.getWebIntent(getActivity(), (Uri)localObject, aE.z(), ViewIri.CallToActionWebView, EnumSet.noneOf(WebViewActivity.Feature.class), WebViewActivity.BackBehavior.NONE));
    }
    while (!"tel".equals(((Uri)localObject).getScheme())) {
      return;
    }
    startActivity(com.yelp.android.util.k.a((Uri)localObject));
  }
  
  private void af()
  {
    AppData.a(EventIri.BusinessAddedToContacts, "business_id", aE.aD());
    a.a(getActivity(), aE);
  }
  
  private void ag()
  {
    b(EventIri.DirectionsToBusiness);
    com.yelp.android.util.k.a(getActivity(), aE);
  }
  
  private void ah()
  {
    AppData.a(EventIri.BusinessMessageTheBusinessOpen);
    startActivityForResult(ActivityMessageTheBusiness.a(getActivity(), aE), 1034);
  }
  
  private void ai()
  {
    a(EventIri.BusinessOpenYelpMenu);
    FragmentActivity localFragmentActivity = getActivity();
    YelpBusiness localYelpBusiness = aE;
    if (aD != null) {}
    for (String str = aD.g();; str = null)
    {
      startActivity(ActivityMenuWebView.a(localFragmentActivity, localYelpBusiness, str, al()));
      return;
    }
  }
  
  private void aj()
  {
    Object localObject = ReservationSearchAction.a(aD, aE);
    ((Map)localObject).put("source", "promoted");
    AppData.a(EventIri.BusinessReservationOpen, (Map)localObject);
    FragmentActivity localFragmentActivity = getActivity();
    YelpBusiness localYelpBusiness = aE;
    if (aD == null) {}
    for (localObject = null;; localObject = aD.g())
    {
      startActivity(ActivityReservationFlow.a(localFragmentActivity, localYelpBusiness, (String)localObject, "source_business_page"));
      return;
    }
  }
  
  private void ak()
  {
    a(null, null);
  }
  
  private String al()
  {
    String str = null;
    if (aZ != null) {
      str = aZ.i_();
    }
    return str;
  }
  
  private void am()
  {
    startActivity(a.b.a(getActivity(), aE.bc(), aE.aD(), aE.ad()));
  }
  
  private void an()
  {
    a(EventIri.BusinessMoreInfoClicked);
    startActivity(ActivityMoreInfoPage.a(getActivity(), aE, al(), aE(), Boolean.TRUE.equals(ac), true, bh));
  }
  
  private void ao()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (!aG.b())
    {
      startActivity(ActivityContextualLogin.a(localFragmentActivity));
      return;
    }
    if (!aG.d())
    {
      startActivityForResult(ActivityLogin.a(localFragmentActivity, 2131165698, 2131166097), 1013);
      return;
    }
    startActivityForResult(ActivityCheckIn.a(localFragmentActivity, aE, aI), 1012);
  }
  
  private void ap()
  {
    String str = aE.aD();
    if (!at) {
      j(str);
    }
    if (!am) {
      a(str, aE.n());
    }
    if (!an) {
      d(str);
    }
    if (!ao) {
      f(str);
    }
    if (!ap) {
      g(str);
    }
    if (!aq) {
      c(str);
    }
    if (!ar) {
      h(str);
    }
    if (ac == null) {
      e(str);
    }
    if (!as) {
      i(str);
    }
  }
  
  private void aq()
  {
    b("com.yelp.android.reservation.update", new BusinessPageFragment.22(this));
    b("com.yelp.android.tips.add", new BusinessPageFragment.24(this));
    b("com.yelp.android.tips.update", new BusinessPageFragment.25(this));
    b("com.yelp.android.tips.delete", new BusinessPageFragment.26(this));
    b("com.yelp.android.review.update", new BusinessPageFragment.27(this));
    b("com.yelp.android.review.state.update", new BusinessPageFragment.28(this));
    b("com.yelp.android.media.add", new BusinessPageFragment.29(this));
    b("com.yelp.android.media.update", new BusinessPageFragment.30(this));
    b("com.yelp.android.media.delete", new BusinessPageFragment.31(this));
    b("com.yelp.android.review.translate", new BusinessPageFragment.32(this));
    a("com.yelp.android.offer_redeemed", new BusinessPageFragment.33(this));
  }
  
  private String ar()
  {
    if (I == null) {}
    for (int i1 = 0; (aE.aO().size() > 0) && (i1 > 0); i1 = I.size()) {
      return getString(2131166518);
    }
    if (i1 == 0) {
      return getString(2131166519);
    }
    return getString(2131166517);
  }
  
  private Locale as()
  {
    Iterator localIterator1;
    if (U != null) {
      localIterator1 = aY.iterator();
    }
    for (;;)
    {
      Locale localLocale;
      if (localIterator1.hasNext())
      {
        localLocale = (Locale)localIterator1.next();
        Iterator localIterator2 = U.iterator();
        do
        {
          if (!localIterator2.hasNext()) {
            break;
          }
        } while (!((YelpBusinessReview)localIterator2.next()).o().equals(localLocale));
      }
      for (int i1 = 1; i1 == 0; i1 = 0)
      {
        return localLocale;
        return null;
      }
    }
  }
  
  private void at()
  {
    AppData.b().i().d().a(aE);
    new ObjectDirtyEvent(aE, "com.yelp.android.business.update").a(getActivity());
  }
  
  private void au()
  {
    if (!TextUtils.isEmpty(az))
    {
      B.clear();
      if (C.isEmpty()) {
        C.b(a(az, new BusinessPageFragment.37(this)));
      }
    }
    do
    {
      do
      {
        return;
      } while (aE.A() == 0);
      C.clear();
    } while (!B.isEmpty());
    B.b(z);
  }
  
  private void av()
  {
    Object localObject = A.a(2131689486);
    ((aj.b)localObject).a(ar());
    ArrayList localArrayList = new ArrayList();
    List localList = aE.aO();
    if (localList != null) {
      localArrayList.addAll(localList);
    }
    int i1;
    if ((H > 0) && (I != null) && (!I.isEmpty()))
    {
      localArrayList.addAll(I);
      i1 = H - I.size();
      if (i1 > 0)
      {
        localObject = ((aj.b)localObject).b();
        if (i1 <= 0) {
          break label144;
        }
      }
    }
    label144:
    for (boolean bool = true;; bool = false)
    {
      a((View)localObject, bool, a(2131230742, 2131166172, i1));
      F.a(localArrayList);
      return;
    }
  }
  
  private void aw()
  {
    if (!TextUtils.isEmpty(aw))
    {
      P.clear();
      Q.clear();
      if (R.isEmpty()) {
        R.b(a(aw, new BusinessPageFragment.38(this)));
      }
    }
    label197:
    label814:
    label924:
    label927:
    label931:
    for (;;)
    {
      return;
      Object localObject1;
      int i1;
      if (aE.N() != 0)
      {
        Q.clear();
        R.clear();
        b(A.a(2131166480).a(), getString(2131166480));
        if ((U == null) || (U.isEmpty())) {
          break label927;
        }
        Object localObject3 = AppData.b().g().h();
        Iterator localIterator1 = aY.iterator();
        Object localObject2 = (Locale)localIterator1.next();
        localObject1 = getString(2131166425);
        if (((Locale)localObject2).equals(localObject3)) {
          break label924;
        }
        localObject1 = getString(2131166520, new Object[] { ((Locale)localObject2).getDisplayLanguage() });
        if (au.containsKey(localObject2)) {}
        Object localObject4;
        for (i1 = ((Integer)au.get(localObject2)).intValue();; i1 = 0)
        {
          localObject3 = new ArrayList();
          localIterator2 = U.iterator();
          while (localIterator2.hasNext())
          {
            localObject4 = (YelpBusinessReview)localIterator2.next();
            if (((YelpBusinessReview)localObject4).o().equals(localObject2)) {
              ((ArrayList)localObject3).add(localObject4);
            }
          }
        }
        Iterator localIterator2 = aW.entrySet().iterator();
        int i2 = 0;
        localObject2 = localObject1;
        localObject1 = localObject3;
        while ((i1 < 5) && (localIterator2.hasNext()) && (localIterator1.hasNext()))
        {
          localObject3 = (Map.Entry)localIterator2.next();
          localObject4 = (aj.b)((Map.Entry)localObject3).getValue();
          a((aj.b)localObject4, (String)localObject2);
          if (i2 != 0) {
            e.findViewById(2131690062).setVisibility(8);
          }
          for (;;)
          {
            ((com.yelp.android.ui.activities.reviewpage.e)((Map.Entry)localObject3).getKey()).a((List)localObject1);
            localObject3 = (Locale)localIterator1.next();
            localObject2 = getString(2131166520, new Object[] { ((Locale)localObject3).getDisplayLanguage() });
            localObject1 = new ArrayList();
            localObject4 = U.iterator();
            while (((Iterator)localObject4).hasNext())
            {
              YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)((Iterator)localObject4).next();
              if (localYelpBusinessReview.o().equals(localObject3)) {
                ((ArrayList)localObject1).add(localYelpBusinessReview);
              }
            }
            i2 = 1;
          }
          i1 = ((ArrayList)localObject1).size() + i1;
        }
        while (localIterator2.hasNext())
        {
          localObject3 = (Map.Entry)localIterator2.next();
          ((aj.b)((Map.Entry)localObject3).getValue()).a("");
          ((com.yelp.android.ui.activities.reviewpage.e)((Map.Entry)localObject3).getKey()).clear();
        }
        a(aX, (String)localObject2);
        P.a((List)localObject1);
        if (i2 != 0) {
          aX.e.findViewById(2131690062).setVisibility(8);
        }
        if (aD())
        {
          localObject3 = A.a(2131165589);
          localObject2 = (aj.b)aW.values().iterator().next();
          localObject1 = localObject2;
          if (TextUtils.isEmpty(b)) {
            localObject1 = aX;
          }
          if (!TextUtils.isEmpty(b))
          {
            ((aj.b)localObject3).a(b);
            ((aj.b)localObject1).a("");
            ((aj.b)localObject1).a().findViewById(2131690061).setVisibility(8);
          }
        }
        localObject1 = A.a(2131166480).b();
        Y();
      }
      for (;;)
      {
        if (localObject1 == null) {
          break label931;
        }
        if (U == null)
        {
          i1 = 0;
          i1 = aE.N() - i1;
          if (i1 <= 0) {
            break label814;
          }
        }
        for (boolean bool = true;; bool = false)
        {
          a((View)localObject1, bool, a(2131230744, 2131166178, i1));
          return;
          i1 = U.size();
          break;
        }
        if (!Q.isEmpty()) {
          break;
        }
        P.clear();
        R.clear();
        if (U()) {
          Q.b(new View(getActivity()));
        }
        for (;;)
        {
          b(A.a(2131689500).a(), getString(2131166256));
          return;
          Q.b(a(aE.w().getTextResourceForState(), 2130837971, bi));
        }
        break label197;
        localObject1 = null;
      }
    }
  }
  
  private void ax()
  {
    boolean bool = false;
    if (!TextUtils.isEmpty(ax))
    {
      J.clear();
      L.clear();
      K.clear();
      if (M.isEmpty()) {
        M.b(a(ax, new BusinessPageFragment.39(this)));
      }
    }
    label449:
    label452:
    for (;;)
    {
      return;
      Object localObject;
      if (aE.L() != 0)
      {
        L.clear();
        M.clear();
        if ((O != null) && (!O.isEmpty()))
        {
          J.a(O);
          localObject = A.a(2131166523).b();
          K.clear();
        }
      }
      for (;;)
      {
        if (localObject == null) {
          break label452;
        }
        if (O == null) {}
        for (int i1 = 0;; i1 = O.size())
        {
          i1 = aE.L() - i1;
          if (i1 > 0) {
            bool = true;
          }
          a((View)localObject, bool, a(2131230746, 2131166180, i1));
          return;
          if (!K.isEmpty()) {
            break label449;
          }
          localObject = AppData.b().g().h().getDisplayLanguage();
          if (U())
          {
            K.b(new View(getActivity()));
            a(A.a(2131689490).a(), getString(2131166265, new Object[] { localObject }));
          }
          for (;;)
          {
            localObject = A.a(2131689490).b();
            break;
            TextView localTextView = (TextView)getActivity().getLayoutInflater().inflate(2130903162, m(), false).findViewById(2131690070);
            localTextView.setText(getString(2131166265, new Object[] { localObject }));
            K.b(localTextView);
          }
        }
        if (!L.isEmpty()) {
          break;
        }
        M.clear();
        if (U())
        {
          L.b(new View(getActivity()));
          a(A.a(2131689501).a(), getString(2131166266));
          return;
        }
        L.b(a(2131165467, 2130837979, bj));
        return;
        localObject = null;
      }
    }
  }
  
  private void ay()
  {
    if (!TextUtils.isEmpty(ay))
    {
      W.clear();
      X.clear();
      if (Y.isEmpty()) {
        Y.b(a(ay, new BusinessPageFragment.40(this)));
      }
    }
    for (;;)
    {
      ScrollToLoadListView localScrollToLoadListView = m();
      if (!localScrollToLoadListView.g())
      {
        localScrollToLoadListView.f();
        localScrollToLoadListView.addFooterView(ak);
      }
      return;
      if ((aa != null) && (!aa.isEmpty()))
      {
        Y.clear();
        X.clear();
        W.a(aa);
      }
      else if (W.isEmpty())
      {
        Y.clear();
        X.clear();
        X.b(a(2131165423, 2130837965, bk));
      }
    }
  }
  
  private void az()
  {
    if ((as) && (!ag.isEmpty())) {
      ae.a(ag);
    }
  }
  
  private ReviewSource b(ReviewSource paramReviewSource)
  {
    ReviewState localReviewState = aE.w();
    if (ReviewState.FINISHED_RECENTLY.equals(localReviewState)) {
      paramReviewSource = ReviewSource.BizPageReviewsListEdit;
    }
    while (!ReviewState.FINISHED_NOT_RECENTLY.equals(localReviewState)) {
      return paramReviewSource;
    }
    return ReviewSource.BizPageReviewsListUpdate;
  }
  
  private void b(View paramView, String paramString)
  {
    if (U())
    {
      a(paramView, paramString);
      paramView.findViewById(2131690062).setVisibility(0);
      paramString = (TextView)paramView.findViewById(2131690065);
      if (aE.w() == ReviewState.DRAFTED) {}
      for (paramView = getString(2131165909);; paramView = getString(2131166625))
      {
        paramString.setText(paramView);
        ((LevelListDrawable)paramString.getCompoundDrawables()[1]).setLevel(aE.H());
        return;
      }
    }
    paramView.findViewById(2131690062).setVisibility(8);
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
    Intent localIntent = com.yelp.android.util.k.a(aE.ao());
    paramString = c(EventIri.CallBusiness, paramString).a(null).a("scheme", localIntent.getData().getScheme());
    com.yelp.android.analytics.h.a(getActivity(), paramString);
    aF.a(paramString.a());
    try
    {
      startActivity(localIntent);
      return;
    }
    catch (Exception paramString)
    {
      Log.e("BusinessPageFragment", "Error launching dialer intent: " + paramString.toString(), paramString);
      ((ActivityBusinessPage)getActivity()).a(2131165581, getText(2131165853));
    }
  }
  
  private g.a c(EventIri paramEventIri, String paramString)
  {
    paramEventIri = new g.a().a(paramEventIri).a(aE.n()).a("id", aE.aD());
    if (!TextUtils.isEmpty(paramString)) {
      paramEventIri.a("source", paramString);
    }
    return paramEventIri;
  }
  
  private void c(ReviewSource paramReviewSource)
  {
    com.yelp.android.g.a locala = new com.yelp.android.g.a(2);
    locala.put("id", aE.aD());
    locala.put("source", paramReviewSource.getIriSourceParameter());
    AppData.a(EventIri.BusinessReviewWrite, locala);
  }
  
  private void c(String paramString)
  {
    if ((N != null) && (N.u())) {
      return;
    }
    N = new ck(paramString, 0, 5, AppData.b().g().h(), false, bt);
    N.f(new String[0]);
  }
  
  private void d(String paramString)
  {
    if ((D != null) && (D.u())) {
      return;
    }
    D = new BusinessMediaRequest(paramString, 3, bq);
    D.f(new Void[0]);
  }
  
  private void e(int paramInt)
  {
    List localList = E.d();
    startActivity(ActivityBusinessMediaViewer.a(getActivity(), aE, E.d(), new BusinessMediaRequest(aE.aD(), localList.size(), 42), paramInt, aE.A()));
  }
  
  private void e(String paramString)
  {
    if ((ad != null) && (ad.u())) {
      return;
    }
    ad = new com.yelp.android.appdata.webrequests.z(paramString, bm);
    ad.f(new Void[0]);
  }
  
  private void f(int paramInt)
  {
    if (aL == null)
    {
      aL = new com.yelp.android.ui.dialogs.e(getActivity());
      aL.setCancelable(false);
    }
    aL.setMessage(getString(paramInt));
    aL.show();
  }
  
  private void f(String paramString)
  {
    if ((G != null) && (G.u())) {
      return;
    }
    G = new dw(paramString, 0, 3, aZ, new BusinessPageFragment.g(this, bc));
    G.f(new String[0]);
  }
  
  private void g(String paramString)
  {
    if ((T != null) && (T.u())) {
      return;
    }
    if (U == null) {}
    for (int i1 = 0; i1 >= 5; i1 = U.size())
    {
      ap = true;
      aA();
      return;
    }
    Object localObject = AppData.b().g().h();
    Locale localLocale = as();
    if (localLocale != null) {
      localObject = localLocale;
    }
    for (;;)
    {
      T = new dy(paramString, 0, 5 - i1, S, (Locale)localObject, bu);
      T.f(new Void[0]);
      return;
    }
  }
  
  private void h(String paramString)
  {
    if ((Z != null) && (Z.u())) {
      return;
    }
    Z = new ae(paramString, 0, 3, bl);
    Z.f(new Void[0]);
  }
  
  private void i(String paramString)
  {
    if ((af != null) && (af.u())) {
      return;
    }
    af = new dj(paramString, bn);
    af.f(new Void[0]);
  }
  
  private void j(String paramString)
  {
    if ((ah != null) && (ah.u())) {
      return;
    }
    if (!Features.message_other_biz.isEnabled())
    {
      at = true;
      aj = false;
      return;
    }
    ah = new com.yelp.android.appdata.webrequests.messaging.g(paramString, bo);
    ah.f(new Void[0]);
  }
  
  private void k(String paramString)
  {
    com.yelp.android.g.a locala = new com.yelp.android.g.a();
    locala.put("id", aE.aD());
    locala.put("source", paramString);
    AppData.a(EventIri.BusinessAddTip, locala);
  }
  
  private boolean t()
  {
    return (K()) || (L()) || (aE.g());
  }
  
  private void u()
  {
    Object localObject1 = null;
    ArrayList localArrayList1 = new ArrayList();
    Object localObject2 = aD.c();
    ArrayList localArrayList2 = new ArrayList();
    HashSet localHashSet = new HashSet();
    Iterator localIterator = ((List)localObject2).iterator();
    int i1 = 0;
    Object localObject3 = null;
    if (localIterator.hasNext())
    {
      SearchAction localSearchAction = (SearchAction)localIterator.next();
      BusinessSearchResult.SearchActionType localSearchActionType = localSearchAction.a();
      localHashSet.add(localSearchActionType);
      localObject2 = localObject3;
      if (localSearchActionType.equals(BusinessSearchResult.SearchActionType.Platform))
      {
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = localObject3;
          if (!localSearchAction.b())
          {
            localObject2 = localSearchAction.n();
            localArrayList1.add(localObject2);
          }
        }
      }
      if (!localSearchActionType.equals(BusinessSearchResult.SearchActionType.Reservation)) {
        break label352;
      }
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        localObject3 = localObject1;
        if (!localSearchAction.b()) {
          localObject3 = (h)localSearchAction.n();
        }
      }
      localArrayList2.add((ReservationSearchAction)localSearchAction);
      if ((i1 != 0) || (!localSearchAction.b()))
      {
        i1 = 1;
        localObject1 = localObject3;
      }
    }
    label352:
    for (;;)
    {
      localObject3 = localObject2;
      break;
      i1 = 0;
      localObject1 = localObject3;
      continue;
      if (i1 != 0)
      {
        localObject2 = localArrayList2.iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((h)localObject1).a((ReservationSearchAction)((Iterator)localObject2).next());
        }
        ((h)localObject1).a(aD);
        localArrayList1.add(localObject1);
      }
      if (!localHashSet.contains(BusinessSearchResult.SearchActionType.Reservation)) {
        localArrayList1.add(BusinessBasicInfo.MAKE_RESERVATION);
      }
      if (!localHashSet.contains(BusinessSearchResult.SearchActionType.Platform)) {
        localArrayList1.add(BusinessBasicInfo.ORDER);
      }
      f = new c(localArrayList1, aE);
      return;
    }
  }
  
  private void v()
  {
    Handler localHandler = ((ActivityBusinessPage)getActivity()).getHandler();
    if ((aH != null) && (!aH.isEmpty()) && (aH.get(0) != null)) {
      localHandler.postDelayed(new BusinessPageFragment.62(this), 100L);
    }
    while (!aJ) {
      return;
    }
    aJ = false;
    localHandler.postDelayed(new BusinessPageFragment.2(this, CheckInOfferDialog.a(aE.aJ(), aE, false)), 100L);
  }
  
  private View w()
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903163, m(), false);
    WebImageView localWebImageView = (WebImageView)localView.findViewById(2131690074);
    TextView localTextView = (TextView)localView.findViewById(2131690076);
    localView.findViewById(2131690072).setOnClickListener(new BusinessPageFragment.4(this));
    User localUser = AppData.b().q().p();
    if (localUser == null)
    {
      localWebImageView.setVisibility(8);
      localTextView.setVisibility(8);
      localView.findViewById(2131690075).setVisibility(0);
      return localView;
    }
    localWebImageView.setImageUrl(localUser.c());
    localTextView.setText(localUser.ad());
    return localView;
  }
  
  private void x()
  {
    c.a(aE, m());
    H();
    if (!aB) {
      J();
    }
    a(EnumSet.noneOf(BusinessPageFragment.MessageAlertBoxNotification.class));
  }
  
  public void a(int paramInt)
  {
    a(EnumSet.of(BusinessPageFragment.MessageAlertBoxNotification.MEDIA_NOTIFICATION), paramInt);
    m().b(true);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    startActivityForResult(ActivityLogin.a(getActivity(), paramInt2), paramInt1);
  }
  
  public void a(Intent paramIntent)
  {
    a(EventIri.BusinessPhotos);
    e(paramIntent.getIntExtra("extra.media_index", 0));
  }
  
  public void a(ReviewHighlight paramReviewHighlight)
  {
    startActivity(ActivityReviewsFilteredByHighlightPage.a(getActivity(), aE, paramReviewHighlight));
  }
  
  public void a(Tip paramTip)
  {
    startActivityForResult(WriteTip.a(getActivity(), paramTip, aE.aD()), 1067);
  }
  
  public void a(Tip paramTip, Checkable paramCheckable)
  {
    paramTip = SendCompliment.a(getActivity(), paramTip);
    startActivity(ActivityLogin.a(getActivity(), 2131165707, 2131166098, paramTip));
  }
  
  public void a(Tip paramTip, SpannedImageButton paramSpannedImageButton)
  {
    if (AppData.b().q().d())
    {
      new em(paramTip.a(), paramSpannedImageButton.isChecked()).f(new Void[0]);
      if (paramSpannedImageButton.isChecked()) {
        paramTip.g().a();
      }
      for (;;)
      {
        paramTip = J;
        if (paramTip != null) {
          paramTip.notifyDataSetChanged();
        }
        return;
        paramTip.g().b();
      }
    }
    paramSpannedImageButton.toggle();
    paramSpannedImageButton.getContext().startActivity(ActivityLogin.a(getActivity(), 2131165697, 2131166108));
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    ActivityBusinessPage localActivityBusinessPage = (ActivityBusinessPage)getActivity();
    aE = paramYelpBusiness;
    localActivityBusinessPage.updateOptionsMenu();
    at();
    localActivityBusinessPage.a(aE);
    Z();
  }
  
  public void a(ReviewSource paramReviewSource)
  {
    c(paramReviewSource);
    if ((!com.yelp.android.appdata.experiment.e.o.a(WriteReviewExperiment.Cohort.status_quo)) && (e != null))
    {
      startActivity(ActivityReviewWrite.a(getActivity(), aE, e.getNumStars(), paramReviewSource));
      return;
    }
    startActivity(ActivityReviewWrite.a(getActivity(), aE, paramReviewSource));
  }
  
  public void a(File paramFile)
  {
    paramFile = (ActivityBusinessPage)getActivity();
    paramFile.hideLoadingDialog();
    ar.a(paramFile, getText(2131165464), getText(2131165858));
  }
  
  public void a(String paramString)
  {
    if (aG.b())
    {
      if (aG.d())
      {
        startActivityForResult(WriteTip.a(getActivity(), aE.aD(), paramString), 1064);
        return;
      }
      startActivityForResult(ActivityConfirmAccount.a(getActivity(), 2131165696), 1066);
      return;
    }
    a(1065, 2131166093);
  }
  
  public boolean a(Bitmap paramBitmap, File paramFile, ImageInputHelper.ImageSource paramImageSource)
  {
    paramBitmap = (YelpActivity)getActivity();
    paramBitmap.hideLoadingDialog();
    paramBitmap.getHandler().post(new BusinessPageFragment.36(this, paramBitmap));
    return true;
  }
  
  public void b(Intent paramIntent)
  {
    if (paramIntent != null) {
      a(EnumSet.of(BusinessPageFragment.MessageAlertBoxNotification.MESSAGE_THE_BUSINESS_SUCCESS_NOTIFICATION.setData(paramIntent)));
    }
    m().b(true);
  }
  
  public void b(Tip paramTip)
  {
    startActivity(ActivityUserProfile.a(getActivity(), paramTip.b()));
  }
  
  public void c()
  {
    a(EventIri.BusinessPullOpenPhoto);
    List localList = E.d();
    Photo localPhoto = (Photo)aE.aT().get(0);
    localList.remove(localPhoto);
    localList.add(0, localPhoto);
    startActivity(ActivityBusinessMediaViewer.a(getActivity(), aE, localList, new BusinessMediaRequest(aE.aD(), localList.size(), 42), 0, aE.A()));
  }
  
  public void c(Tip paramTip)
  {
    startActivityForResult(TipComplimentsLikes.a(getActivity(), paramTip, aE.z(), true), 1067);
  }
  
  public void d()
  {
    startActivityForResult(PhotoTeaser.a(getActivity(), aE), 1041);
    getActivity().finish();
  }
  
  public void f()
  {
    startActivity(EditBusiness.a(getActivity(), aE, Boolean.TRUE.equals(ac)));
  }
  
  void g()
  {
    a(EventIri.BusinessRedeemDeal);
    YelpDeal localYelpDeal = (YelpDeal)aE.aN().get(0);
    if ((l == null) || (!l.u()))
    {
      l = new fd(new BusinessPageFragment.f(this, localYelpDeal.x()), aE.aD());
      l.f(new Void[0]);
      ((ActivityBusinessPage)getActivity()).showLoadingDialog(l);
    }
  }
  
  public void h()
  {
    if (aG.b())
    {
      if (aG.d())
      {
        d();
        return;
      }
      startActivityForResult(ActivityConfirmAccount.a(getActivity(), 2131165695), 1043);
      return;
    }
    startActivity(ActivityContextualLogin.b(getActivity()));
  }
  
  public void i()
  {
    a(EnumSet.of(BusinessPageFragment.MessageAlertBoxNotification.TIP_NOTIFICATION));
    m().b(true);
  }
  
  public void j()
  {
    a(EnumSet.of(BusinessPageFragment.MessageAlertBoxNotification.ACCOUNT_UNCONFIRMED));
    AppData.a(ViewIri.ConfirmEmailBanner, "source", "biz_page");
  }
  
  public void k()
  {
    if ((b != null) && (q.a(b) != null))
    {
      q.a(b).clearAnimation();
      q.a(b, null);
      b.setVisible(false);
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    Object localObject2 = (YelpActivity)getActivity();
    ((YelpActivity)localObject2).setTitle(aE.z());
    bg = t();
    bh = aE.g();
    if ("4kMBvIEWPxWkWKFN__8SxQ".equals(aE.aD()))
    {
      if (a == null) {
        a = new com.yelp.android.ui.widgets.a();
      }
      localObject1 = (RelativeLayout)((YelpActivity)localObject2).findViewById(2131689742);
      a.a((Activity)localObject2, (RelativeLayout)localObject1);
    }
    Object localObject1 = m();
    ((ScrollToLoadListView)localObject1).setDivider(null);
    ((ScrollToLoadListView)localObject1).setFooterDividersEnabled(false);
    ((ScrollToLoadListView)localObject1).setItemsCanFocus(true);
    ((ScrollToLoadListView)localObject1).setSelector(new ColorDrawable(getResources().getColor(17170445)));
    A = new aj();
    c = new com.yelp.android.ui.panels.businesspage.b(getActivity(), this, (PullDownListView)localObject1);
    ((ScrollToLoadListView)localObject1).addHeaderView(c, "HEADER", true);
    View localView = c.findViewById(2131690022);
    localView.setOnClickListener(new BusinessPageFragment.1(this, EventIri.BusinessCheckIn, "button_bar"));
    if (getArguments().getParcelable("extra.check_in") != null)
    {
      localObject3 = (YelpCheckIn)getArguments().getParcelable("extra.check_in");
      c.a(true, (YelpCheckIn)localObject3);
    }
    Object localObject3 = (LeftDrawableButton)c.findViewById(2131690026);
    ((LeftDrawableButton)localObject3).setOnClickListener(new BusinessPageFragment.12(this));
    if ((!com.yelp.android.appdata.experiment.e.o.a(WriteReviewExperiment.Cohort.status_quo)) && (!bg))
    {
      c.findViewById(2131690027).setOnClickListener(new BusinessPageFragment.23(this));
      e = ((StarsView)c.findViewById(2131690028));
      e.setOnStarsClicked(new BusinessPageFragment.34(this));
      e.setOnActionDown(new BusinessPageFragment.45(this));
    }
    d = c.findViewById(2131690020);
    d.setOnClickListener(new BusinessPageFragment.56(this, EventIri.BusinessAddPhoto, "button_bar"));
    registerForContextMenu(d);
    c.findViewById(2131690024).setOnClickListener(new BusinessPageFragment.60(this, EventIri.BusinessToggleBookmark, "button_bar"));
    int i1 = getResources().getDimensionPixelSize(2131361958);
    if (aD != null) {
      u();
    }
    for (;;)
    {
      A.a(2131689485, aj.c.a(f).a(2131689503, i1, 0).b());
      if (bg)
      {
        ((LeftDrawableButton)localObject3).setEnabled(false);
        localView.setEnabled(false);
        d.setEnabled(false);
      }
      g = new ClaimButtonAdapter(aE);
      A.a(2131689494, aj.c.a(g).a(2131689503, i1, 0).b());
      a(paramBundle);
      i = new e(EnumSet.allOf(BusinessRedeemButton.class), (Context)localObject2, aE);
      A.a(2131689481, aj.c.a(i).b());
      j = new c(EnumSet.allOf(BusinessDealsOffers.class), aE);
      A.a(2131689482, aj.c.a(j).a(2131689503, i1, 0).b());
      k = new c(EnumSet.of(BusinessBasicInfo.DIRECTIONS, new BusinessBasicInfo[] { BusinessBasicInfo.CALL, BusinessBasicInfo.MENU, BusinessBasicInfo.MESSAGE_THE_BUSINESS, BusinessBasicInfo.MOVIES, BusinessBasicInfo.MORE_INFO }), aE);
      A.a(2131689479, aj.c.a(k).a(2131689503, i1, 0).b());
      ai = new com.yelp.android.ui.util.e(new View[0]);
      A.a(2131690359, aj.c.a(getString(2131166458), ai).a(2130772428).b());
      r = new com.yelp.android.ui.activities.reviewpage.b(aE, getActivity());
      A.a(2131689478, aj.c.a(getString(2131166870), r).a(2130772428).b(2131689503).b());
      v = new FromThisBusinessPanel((Context)localObject2, null);
      w = new com.yelp.android.ui.util.e(new View[] { v });
      paramBundle = aj.c.a(getString(2131165952), w).a(2130772428);
      a(paramBundle);
      A.a(2131165952, paramBundle.b());
      y = new ConsumerAlertPanel((Context)localObject2, A, (ScrollToLoadListView)localObject1, aF);
      A.a();
      paramBundle = getResources();
      aR = new FrameLayout(getActivity());
      aR.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      localObject2 = new FrameLayout.LayoutParams(-1, -2);
      topMargin = paramBundle.getDimensionPixelSize(2131361958);
      aQ = new PublisherAdView(getActivity());
      aQ.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      aQ.setFocusableInTouchMode(false);
      aR.addView(aQ);
      localObject2 = new com.google.android.gms.ads.d(paramBundle.getInteger(2131492883), paramBundle.getInteger(2131492882));
      paramBundle = new com.google.android.gms.ads.d(paramBundle.getInteger(2131492884), paramBundle.getInteger(2131492882));
      aQ.setAdSizes(new com.google.android.gms.ads.d[] { localObject2, paramBundle });
      paramBundle = getString(2131166939, new Object[] { AppData.b().f().ae() });
      aQ.setAdUnitId(paramBundle);
      aS = new com.yelp.android.ui.util.e(new View[0]);
      A.a(2131689483, aj.c.a(aS).b());
      N();
      M();
      R();
      S();
      P();
      V();
      O();
      s = new com.yelp.android.ui.activities.reviewpage.b(aE, getActivity());
      A.a(2131689477, aj.c.a(getString(2131166870), s).a(2130772428).b(2131689503).b());
      ab = new com.yelp.android.ui.util.e(new View[0]);
      A.a(2131166020, aj.c.a("", ab).a(2130772428).b());
      x = new com.yelp.android.ui.util.e(new View[0]);
      A.a(2131689491, x);
      aA();
      ((ScrollToLoadListView)localObject1).setOnItemClickListener(this);
      ((ScrollToLoadListView)localObject1).setOnItemLongClickListener(this);
      ((ScrollToLoadListView)localObject1).setAdapter(A);
      ap();
      aq();
      ((ActionBarActivity)getActivity()).getSupportActionBar().a(new BusinessPageFragment.61(this));
      ((YelpActivity)getActivity()).setupInAppNotification(getClass(), getContext(), (InAppNotificationView)getActivity().findViewById(2131689513), bx);
      return;
      f = new c(EnumSet.of(BusinessBasicInfo.MAKE_RESERVATION, BusinessBasicInfo.ORDER), aE);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
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
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        return;
                      } while (!aG.d());
                      d();
                      return;
                    } while (!aG.d());
                    x_();
                    return;
                  } while (!aG.d());
                  x_();
                  return;
                } while (!aG.d());
                a(null);
                return;
              } while (!aG.d());
              startActivityForResult(ActivityCheckIn.a(getActivity(), aE), 1012);
              return;
            } while (paramInt2 != -1);
            paramIntent = ActivityDealRedemption.a(paramIntent);
          } while (((YelpDeal)first).c() != 0);
          aE.aN().remove(first);
          a(aE);
          return;
          if (paramInt2 == -1)
          {
            aI = null;
            paramIntent = (YelpCheckIn)BusinessContributionType.CHECK_IN.getContribution(paramIntent);
            aH = paramIntent.a(getActivity());
            if ((aH.isEmpty()) && (paramIntent.o() != null) && (!paramIntent.o().isEmpty())) {
              getActivity().startService(ShareService.a(getActivity(), ShareService.ShareObjectType.CHECKIN, paramIntent.z(), paramIntent.o(), false));
            }
            aJ = paramIntent.q();
            v();
            c.a(true, paramIntent);
            return;
          }
          aI = ActivityCheckIn.a(paramIntent);
          return;
          if ((paramIntent != null) && (paramIntent.hasExtra("offer"))) {
            aE.a((Offer)paramIntent.getParcelableExtra("offer"));
          }
          if ((aH != null) && (!aH.isEmpty())) {
            aH.remove(0);
          }
          v();
          return;
        } while (paramInt2 != 1052);
        YelpBusinessReview localYelpBusinessReview = ActivityAbstractReviewPager.a(paramIntent);
        paramIntent = ActivityAbstractReviewPager.b(paramIntent);
        P.c(localYelpBusinessReview);
        U.remove(localYelpBusinessReview);
        if (paramIntent != null)
        {
          P.b(paramIntent);
          U.add(0, paramIntent);
          aY.add(paramIntent.o());
          aE.a(ReviewState.FINISHED_NOT_RECENTLY);
          aE.a(paramIntent.C());
        }
        for (;;)
        {
          P.notifyDataSetChanged();
          c.b(aE);
          at();
          aA();
          return;
          aE.u();
          aE.a(ReviewState.NOT_STARTED);
          aE.a(0);
        }
      } while ((paramInt2 == -1) || (paramIntent == null) || (!paramIntent.getBooleanExtra("extra.has_reached_menu", false)));
      be = new aw(aE.aD(), by);
      be.f(new Void[0]);
      aM = YelpProgressDialogFragment.a(2131166493);
      aM.show(getActivity().getSupportFragmentManager(), "continue_last_order_info_fragment");
      return;
    } while (paramInt2 != -1);
    b(paramIntent);
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    ba = ((a)getActivity());
    bb = ((b)getActivity());
    bc = ((c)getActivity());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AppData.b().f().J();
    FragmentActivity localFragmentActivity = getActivity();
    Bundle localBundle = getArguments();
    aE = ((YelpBusiness)localBundle.getParcelable("extra.business"));
    S = localBundle.getString("top_highlighted_review_id");
    AppData localAppData = AppData.b();
    aF = localAppData.k();
    aG = localAppData.q();
    m = new com.yelp.android.ui.util.k();
    W = new CheckinRankAdapter(localFragmentActivity, CheckinRankAdapter.RankMode.BIZ);
    aY = new LinkedHashSet();
    aY.add(AppData.b().g().h());
    aZ = ((SearchRequest)localBundle.getParcelable("search_request"));
    aD = ((BusinessSearchResult)localBundle.getParcelable("business_search_result"));
    bd = new GoogleApiClient.Builder(localFragmentActivity).addApi(com.yelp.android.bh.b.b).build();
    if (paramBundle != null)
    {
      aH = paramBundle.getParcelableArrayList("mCheckInNotifications");
      if (paramBundle.containsKey("deal dialog")) {
        m.a((YelpDeal)paramBundle.getParcelable("deal dialog"), true);
      }
      if (paramBundle.containsKey("extra.multiple")) {
        aa = paramBundle.getParcelableArrayList("extra.multiple");
      }
      aI = paramBundle.getString("comment_text", "");
      aK = paramBundle.getBoolean("has_tracked_offline_attribution");
      aj = paramBundle.getBoolean("show_message_other_biz");
    }
    v();
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755013, paramMenu);
  }
  
  public void onDestroy()
  {
    aQ.a();
    super.onDestroy();
    aP.d();
    aQ.setAdListener(null);
    c(q);
    c(D);
    c(G);
    c(N);
    c(T);
    c(Z);
    c(aO);
    c(ad);
    c(af);
    c(ah);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if ((paramAdapterView instanceof BusinessDealsOffers))
    {
      paramAdapterView = (BusinessDealsOffers)paramAdapterView;
      switch (BusinessPageFragment.59.b[paramAdapterView.ordinal()])
      {
      }
    }
    do
    {
      return;
      ad();
      return;
      a(EventIri.BusinessCheckInOffer, "button");
      ao();
      return;
      ae();
      return;
      if ((paramAdapterView instanceof ClaimButtonAdapter.ClaimButton))
      {
        paramAdapterView = (ClaimButtonAdapter.ClaimButton)paramAdapterView;
        switch (BusinessPageFragment.59.c[paramAdapterView.ordinal()])
        {
        default: 
          return;
        }
        BizClaimUtil.a(getActivity(), aE, BizClaimUtil.SourceButton.BIZPAGE_TOP_TEASER);
        return;
      }
      if ((paramAdapterView instanceof BusinessBasicInfo))
      {
        paramAdapterView = (BusinessBasicInfo)paramAdapterView;
        switch (BusinessPageFragment.59.d[paramAdapterView.ordinal()])
        {
        default: 
          return;
        case 1: 
          b("button");
          return;
        case 2: 
          ag();
          return;
        case 3: 
          ah();
          return;
        case 4: 
          ai();
          return;
        case 5: 
          aj();
          return;
        case 6: 
          ak();
          return;
        case 7: 
          am();
          return;
        }
        an();
        return;
      }
      if ((paramAdapterView instanceof g))
      {
        paramAdapterView = (g)paramAdapterView;
        switch (BusinessPageFragment.59.e[paramAdapterView.a().a().ordinal()])
        {
        default: 
          return;
        case 1: 
          aj();
          return;
        }
        a((PlatformSearchAction)paramAdapterView.a(), null);
        return;
      }
      if ((paramAdapterView instanceof BusinessRedeemButton))
      {
        paramAdapterView = (BusinessRedeemButton)paramAdapterView;
        switch (BusinessPageFragment.59.f[paramAdapterView.ordinal()])
        {
        default: 
          return;
        case 1: 
          g();
          return;
        }
        ac();
        return;
      }
      if ((paramAdapterView instanceof YelpBusinessReview))
      {
        paramAdapterView = (YelpBusinessReview)paramAdapterView;
        paramView = new ArrayList(U);
        startActivityForResult(ActivityReviewPager.a(getActivity(), aE.aD(), aE.z(), aE.aw(), paramView, paramView.indexOf(paramAdapterView), au, av, true), 1053);
        return;
      }
    } while (!(paramAdapterView instanceof DisplayableAsUserBadge));
    paramAdapterView = (DisplayableAsUserBadge)paramAdapterView;
    startActivity(ActivityUserProfile.a(getActivity(), paramAdapterView.i()));
  }
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if (((paramAdapterView instanceof BusinessBasicInfo)) && ((BusinessBasicInfo)paramAdapterView == BusinessBasicInfo.CALL))
    {
      com.yelp.android.ui.util.h.a(getString(2131166334), aE.as());
      return true;
    }
    return false;
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    aP.e();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 2131690995: 
      a(b(ReviewSource.BizPageMenu));
      return true;
    case 2131690996: 
      a(EventIri.BusinessAddPhoto, "menu");
      h();
      return true;
    case 2131690997: 
      a(EventIri.BusinessCheckIn, "menu");
      ao();
      return true;
    case 2131690998: 
      k("menu");
      a("menu");
      return true;
    case 2131690024: 
      a(EventIri.BusinessToggleBookmark, "menu");
      x_();
      return true;
    case 2131690999: 
      b("menu");
      return true;
    case 2131691000: 
      a(EventIri.BusinessEditClicked, "menu");
      f();
      return true;
    case 2131691001: 
      af();
      return true;
    }
    a(EventIri.BusinessShare, "menu");
    a(new BusinessShareFormatter(aE));
    return true;
  }
  
  public void onPause()
  {
    aQ.b();
    super.onPause();
    aP.b();
    a("continue_last_order_info_request", be);
    a("continue_last_order_check_availability_request", bf);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
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
          paramMenu.findItem(2131690996).setTitle(2131165464);
        }
        i1 += 1;
        break;
        localObject = paramMenu.getItem(i1);
        if (!bg) {}
        for (boolean bool = true;; bool = false)
        {
          ((MenuItem)localObject).setEnabled(bool);
          break;
        }
        localObject = paramMenu.getItem(i1);
        if (!bh) {}
        for (bool = true;; bool = false)
        {
          ((MenuItem)localObject).setEnabled(bool);
          break;
        }
        paramMenu.getItem(i1).setEnabled(true);
      }
    }
    b = paramMenu.findItem(2131690994);
    Object localObject = (ActivityBusinessPage)getActivity();
    if ((localObject != null) && (((ActivityBusinessPage)localObject).a())) {
      ((ActivityBusinessPage)localObject).getHandler().postDelayed(new BusinessPageFragment.35(this), 200L);
    }
    if (com.yelp.android.appdata.experiment.e.f.a(ShareToolbarExperiment.Cohort.share_toolbar_enabled)) {
      q.a(paramMenu.findItem(2131691002), 1);
    }
    for (;;)
    {
      if (getActivity() != null) {
        paramMenu.findItem(2131690995).setTitle(getString(aE.w().getTextResourceForState()));
      }
      return;
      localObject = paramMenu.findItem(2131690997);
      MenuItem localMenuItem = paramMenu.findItem(2131690024);
      if ((localObject != null) && (localMenuItem != null))
      {
        Location localLocation = AppData.b().r().c();
        if (0.5D > aE.a(localLocation))
        {
          q.a((MenuItem)localObject, 1);
          q.a(localMenuItem, 0);
        }
        else
        {
          q.a(localMenuItem, 1);
          i1 = 2130837568;
          if (aE.U()) {
            i1 = 2130837567;
          }
          localMenuItem.setIcon(i1);
          q.a((MenuItem)localObject, 0);
        }
      }
    }
  }
  
  public void onResume()
  {
    super.onResume();
    c.b(m());
    aP.c();
    aQ.c();
    aa();
    if (aB) {
      c.b(aE);
    }
    for (;;)
    {
      c.a(aE);
      bb.b();
      if (aM == null) {
        aM = ((YelpProgressDialogFragment)getActivity().getSupportFragmentManager().a("continue_last_order_info_fragment"));
      }
      if (aN == null) {
        aN = ((YelpProgressDialogFragment)getActivity().getSupportFragmentManager().a("continue_last_order_check_availability_fragment"));
      }
      be = ((aw)a("continue_last_order_info_request", be, by));
      bf = ((av)a("continue_last_order_check_availability_request", bf, bz));
      if ((AppData.b().q().b()) && (!AppData.b().q().d()) && (com.yelp.android.appdata.experiment.e.t.a(TwoBucketExperiment.Cohort.enabled))) {
        j();
      }
      Intent localIntent = (Intent)getArguments().getParcelable("message_the_business_notification");
      if (localIntent != null) {
        b(localIntent);
      }
      return;
      Z();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("mCheckInNotifications", aH);
    aP.a(paramBundle);
    if ((aa != null) && (!aa.isEmpty())) {
      paramBundle.putParcelableArrayList("extra.multiple", aa);
    }
    paramBundle.putString("comment_text", aI);
    paramBundle.putBoolean("has_tracked_offline_attribution", aK);
    paramBundle.putBoolean("show_message_other_biz", aj);
  }
  
  public void onStart()
  {
    super.onStart();
    if (aE.T()) {
      AppData.a(EventIri.BusinessMessageTheBusinessShown);
    }
    if (!aK)
    {
      TrackOfflineAttributionRequest.a(aE, TrackOfflineAttributionRequest.OfflineAttributionEventType.PAGE_VIEW);
      aK = true;
    }
    AndroidAppAnnotation localAndroidAppAnnotation = aE.bd();
    if ((localAndroidAppAnnotation == null) || (!localAndroidAppAnnotation.a())) {
      return;
    }
    bd.connect();
    com.yelp.android.bh.b.c.a(bd, getActivity(), localAndroidAppAnnotation.b(), localAndroidAppAnnotation.g(), localAndroidAppAnnotation.c(), null);
  }
  
  public void onStop()
  {
    super.onStop();
    AndroidAppAnnotation localAndroidAppAnnotation = aE.bd();
    if ((localAndroidAppAnnotation == null) || (!localAndroidAppAnnotation.a())) {
      return;
    }
    com.yelp.android.bh.b.c.a(bd, getActivity(), localAndroidAppAnnotation.b());
    bd.disconnect();
  }
  
  public void x_()
  {
    if (aG.b())
    {
      if (aG.d())
      {
        if (aE.U())
        {
          aO = new dk(aE, bv);
          a(EventIri.BusinessRemoveBookmark);
          if (ba != null) {
            ba.a(true);
          }
        }
        for (;;)
        {
          ab();
          aO.f(new Void[0]);
          return;
          aO = new com.yelp.android.appdata.webrequests.h(aE, br);
          a(EventIri.BusinessAddBookmark);
          AppData.b().l().a(AdjustManager.YelpAdjustEvent.ADD_BOOKMARK);
          if (ba != null) {
            ba.a(false);
          }
        }
      }
      if (aE.U()) {
        startActivityForResult(ActivityConfirmAccount.a(getActivity(), 2131165699), 1009);
      }
      for (;;)
      {
        c.setBookmarkChecked(false);
        return;
        startActivityForResult(ActivityConfirmAccount.a(getActivity(), 2131165693), 1007);
      }
    }
    startActivity(ActivityContextualLogin.a(getActivity(), aE.aq()));
  }
  
  public static abstract interface a
  {
    public abstract void a(boolean paramBoolean);
  }
  
  public static abstract interface b
  {
    public abstract void b();
  }
  
  public static abstract interface c
  {
    public abstract void a(ApiRequest paramApiRequest);
    
    public abstract void e();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */