package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.location.Address;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.l;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.BusinessSearchResponse;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse.Foldability;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest.OfflineAttributionEventType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.aw;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.dk;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.appdata.webrequests.h;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.database.g;
import com.yelp.android.serializable.AndroidAppAnnotation;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.BusinessSearchResult.SearchActionType;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.ContinueLastOrderInfo;
import com.yelp.android.serializable.DisplayGenericSearchFilter;
import com.yelp.android.serializable.DisplayGenericSearchFilterParameters;
import com.yelp.android.serializable.Distance;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.GenericSearchFilter;
import com.yelp.android.serializable.GenericSearchFilter.FilterType;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.LocalAdPlacement;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import com.yelp.android.serializable.OpenNowGenericSearchFilter;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.serializable.PlatformGenericSearchFilter;
import com.yelp.android.serializable.PlatformRSSTermMap;
import com.yelp.android.serializable.PlatformSearchAction;
import com.yelp.android.serializable.ReservationFilter;
import com.yelp.android.serializable.ReservationGenericSearchFilter;
import com.yelp.android.serializable.SearchAction;
import com.yelp.android.serializable.SearchLocation;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.serializable.Sort;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityConfirmAccount;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.AddNewBizDialog;
import com.yelp.android.ui.activities.AddNewBizDialog.a;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.mutatebiz.AddBusiness;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.dialogs.FiltersDialog;
import com.yelp.android.ui.dialogs.FiltersDialog.a;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.dialogs.ListDialogFragment.a;
import com.yelp.android.ui.dialogs.PlatformSearchDialogFragment;
import com.yelp.android.ui.dialogs.PlatformSearchDialogFragment.a;
import com.yelp.android.ui.dialogs.ReservationSearchDialogFragment;
import com.yelp.android.ui.dialogs.ReservationSearchDialogFragment.a;
import com.yelp.android.ui.dialogs.SimpleListDialogFragment;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.YelpLoadingSpinner;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.panels.businesssearch.SpellingSuggestPanel;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.ae;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.AutoResizeTextView;
import com.yelp.android.util.BasicBroadcastReceiver;
import com.yelp.android.util.BizClaimUtil;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SearchBusinessesByList
  extends YelpListActivity
  implements AddNewBizDialog.a, d.a, e, b.e, FiltersDialog.a, PanelError.a
{
  private static List<SearchResultLocalAd> q;
  private final View.OnClickListener A = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      SearchBusinessesByList.a(SearchBusinessesByList.this, SearchBusinessesByList.this, SearchBusinessesByList.c(SearchBusinessesByList.this));
    }
  };
  private final ApiRequest.b<ContinueLastOrderInfo> B = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ContinueLastOrderInfo paramAnonymousContinueLastOrderInfo)
    {
      d.a((aw)paramAnonymousApiRequest, paramAnonymousContinueLastOrderInfo, a);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException) {}
  };
  private final BasicBroadcastReceiver C = new BasicBroadcastReceiver(new IntentFilter[] { ObjectDirtyEvent.a("com.yelp.android.business.update") })
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = (YelpBusiness)ObjectDirtyEvent.a(paramAnonymousIntent);
      if ((paramAnonymousContext != null) && (a != null) && (a.k() != null)) {
        SearchBusinessesByList.b(SearchBusinessesByList.this, paramAnonymousContext);
      }
    }
  };
  private final c.a D = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      if (SearchBusinessesByList.d(SearchBusinessesByList.this) != null) {
        SearchBusinessesByList.d(SearchBusinessesByList.this).dismiss();
      }
      paramAnonymousApiRequest = ((dk)paramAnonymousApiRequest).b();
      paramAnonymousApiRequest.a(false);
      SearchBusinessesByList.b(SearchBusinessesByList.this, paramAnonymousApiRequest);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      if (SearchBusinessesByList.d(SearchBusinessesByList.this) != null) {
        SearchBusinessesByList.d(SearchBusinessesByList.this).dismiss();
      }
      as.a(2131165849, 1);
    }
  };
  private final ApiRequest.b<YelpBookmark> E = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpBookmark paramAnonymousYelpBookmark)
    {
      if (SearchBusinessesByList.d(SearchBusinessesByList.this) != null) {
        SearchBusinessesByList.d(SearchBusinessesByList.this).dismiss();
      }
      paramAnonymousApiRequest = ((h)paramAnonymousApiRequest).b();
      paramAnonymousApiRequest.a(true);
      SearchBusinessesByList.b(SearchBusinessesByList.this, paramAnonymousApiRequest);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      if (SearchBusinessesByList.d(SearchBusinessesByList.this) != null) {
        SearchBusinessesByList.d(SearchBusinessesByList.this).dismiss();
      }
      as.a(2131165848, 1);
    }
  };
  o a;
  private aj b;
  private com.yelp.android.ui.panels.businesssearch.d c;
  private com.yelp.android.ui.panels.businesssearch.d d;
  private f e;
  private com.yelp.android.ui.panels.f f;
  private com.yelp.android.ui.util.e g;
  private com.yelp.android.ui.util.e h;
  private com.yelp.android.ui.util.e i;
  private com.yelp.android.ui.util.e j;
  private SpellingSuggestPanel k;
  private String l;
  private a m;
  private View n;
  private SpellingSuggestPanel o;
  private View p;
  private u r;
  private aw s;
  private com.yelp.android.ui.dialogs.e t;
  private h u;
  private dk v;
  private final AdapterView.OnItemClickListener w = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      if ((SearchBusinessesByList.a(SearchBusinessesByList.this) == null) || (SearchBusinessesByList.a(SearchBusinessesByList.this).isEmpty())) {}
      Object localObject;
      do
      {
        return;
        paramAnonymousView = paramAnonymousView.getContext();
        localObject = paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
        if (a == null) {}
        for (paramAnonymousAdapterView = null; (localObject instanceof BusinessSearchResult); paramAnonymousAdapterView = a.o())
        {
          localObject = (BusinessSearchResult)localObject;
          startActivityForResult(ActivityBusinessPage.a(paramAnonymousView, (BusinessSearchResult)localObject, paramAnonymousAdapterView), 1010);
          return;
        }
        if ((localObject instanceof SearchResultLocalAd))
        {
          localObject = (SearchResultLocalAd)localObject;
          AppData.a(EventIri.AdSearchListClick, ((SearchResultLocalAd)localObject).a(false));
          TrackOfflineAttributionRequest.a(((SearchResultLocalAd)localObject).a(), TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_CLICK);
          startActivityForResult(ActivityBusinessPage.a(paramAnonymousView, ((SearchResultLocalAd)localObject).e(), paramAnonymousAdapterView), 1010);
          return;
        }
        if ("spelling suggestion".equals(localObject))
        {
          SearchBusinessesByList.a(SearchBusinessesByList.this, paramAnonymousView, SearchBusinessesByList.b(SearchBusinessesByList.this));
          return;
        }
        if ((localObject instanceof Intent))
        {
          startActivity((Intent)localObject);
          return;
        }
      } while ((localObject instanceof BusinessSearchResult));
    }
  };
  private final k.b<Void> x = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      YelpLog.d("Debug", "onSuccess from mLocationRequestCallback getting called");
    }
    
    public boolean a()
    {
      onProvidersRequired(SearchBusinessesByList.this, true, 0);
      populateError(ErrorType.NO_LOCATION);
      return false;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      paramAnonymousApiRequest = AppData.b().r();
      if (k.b(SearchBusinessesByList.this, PermissionGroup.LOCATION)) {
        d.a(SearchBusinessesByList.this);
      }
      if ((paramAnonymousApiRequest.a()) && (!paramAnonymousApiRequest.b()) && (paramAnonymousYelpException.getMessageResource() == 2131165389)) {
        onProvidersRequired(null, false, 2131166224);
      }
      if ((!p().b()) && (SearchBusinessesByList.a(SearchBusinessesByList.this).isEmpty())) {
        populateError(paramAnonymousYelpException);
      }
    }
  };
  private final BasicBroadcastReceiver y = new BasicBroadcastReceiver(new IntentFilter[] { new IntentFilter("com.yelp.android.offer_redeemed") })
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = paramAnonymousIntent.getStringExtra("business_id");
      paramAnonymousIntent = (Offer)paramAnonymousIntent.getParcelableExtra("offer");
      if (((paramAnonymousIntent == null) || (paramAnonymousIntent.l() == Offer.OfferState.USED)) && (paramAnonymousContext != null) && (a.k() != null))
      {
        Iterator localIterator = a.k().b().iterator();
        while (localIterator.hasNext())
        {
          YelpBusiness localYelpBusiness = ((BusinessSearchResult)localIterator.next()).a();
          if (localYelpBusiness.aD().equals(paramAnonymousContext)) {
            localYelpBusiness.a(paramAnonymousIntent);
          }
        }
      }
    }
  };
  private final View.OnClickListener z = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      AppData.a(EventIri.SearchAddBusiness);
      com.yelp.android.g.a locala = new com.yelp.android.g.a();
      locala.put("claim_popup_add_business_biz_search_page_experiment", ((TwoBucketExperiment.Cohort)com.yelp.android.appdata.experiment.e.r.b()).name());
      AppData.a(EventIri.SearchViewPopupAddBusiness, locala);
      if (TwoBucketExperiment.Cohort.enabled.equals(com.yelp.android.appdata.experiment.e.r.b()))
      {
        AddNewBizDialog.a().show(getSupportFragmentManager(), null);
        return;
      }
      a(paramAnonymousView.getContext());
    }
  };
  
  public static Intent a(Context paramContext, Intent paramIntent)
  {
    paramIntent.setClass(paramContext, SearchBusinessesByList.class);
    paramIntent.setFlags(536870912);
    paramIntent.addFlags(67108864);
    return paramIntent;
  }
  
  public static Intent a(Context paramContext, SearchRequest paramSearchRequest)
  {
    return a(paramContext, paramSearchRequest, null, null);
  }
  
  public static Intent a(Context paramContext, SearchRequest paramSearchRequest, IriSource paramIriSource, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.SEARCH");
    localIntent.setClass(paramContext, SearchBusinessesByList.class);
    paramContext = EnumSet.of(BusinessAdapter.DisplayFeature.CHECKINS);
    if ((paramSearchRequest.D() == BusinessSearchRequest.SearchMode.NEARBY) || (TextUtils.isEmpty(paramSearchRequest.F()))) {
      paramContext.add(BusinessAdapter.DisplayFeature.DISTANCE);
    }
    localIntent.putExtra("extra.source", paramIriSource);
    localIntent.putExtra("extra.search_launch_method", paramString);
    localIntent.putExtra("extra.displayFeatures", paramContext);
    localIntent.addFlags(536870912);
    localIntent.addFlags(67108864);
    o.a(paramSearchRequest, localIntent, paramIriSource, paramString);
    return localIntent;
  }
  
  public static Intent a(Context paramContext, PlatformFilter paramPlatformFilter, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new PlatformGenericSearchFilter(paramPlatformFilter, true));
    return a(paramContext, new eo().a(new Filter(null, Sort.Default, localArrayList)).b(paramString1).a(paramString2).a(), null, null);
  }
  
  public static Intent a(Context paramContext, ReservationFilter paramReservationFilter, boolean paramBoolean, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ReservationGenericSearchFilter(paramReservationFilter, paramBoolean));
    return a(paramContext, new eo().a(new Filter(null, Sort.Default, localArrayList)).b(paramString1).a(paramString2).a(), null, null);
  }
  
  private final void a(Context paramContext, SpellingSuggestPanel paramSpellingSuggestPanel)
  {
    d.a(paramContext, a);
    getAppData().i().b().d();
    paramSpellingSuggestPanel = String.valueOf(paramSpellingSuggestPanel.getSuggestion());
    startActivity(a(paramContext, a.h().b(paramSpellingSuggestPanel).a()));
  }
  
  private void a(YelpBusiness paramYelpBusiness)
  {
    if (paramYelpBusiness.U())
    {
      v = new dk(paramYelpBusiness, D);
      v.f(new Void[0]);
      AppData.a(EventIri.SearchContextRemoveBookmark, "id", paramYelpBusiness.aD());
      if (!paramYelpBusiness.U()) {
        break label110;
      }
    }
    label110:
    for (int i1 = 2131166446;; i1 = 2131165470)
    {
      t = com.yelp.android.ui.dialogs.e.a(this, "", getString(i1), false, false, null);
      return;
      u = new h(paramYelpBusiness, E);
      u.f(new Void[0]);
      break;
    }
  }
  
  private void a(YelpBusiness paramYelpBusiness, Intent paramIntent)
  {
    int i1;
    if (paramYelpBusiness.U())
    {
      i1 = 1009;
      if (!paramYelpBusiness.U()) {
        break label44;
      }
    }
    label44:
    for (int i2 = 2131165699;; i2 = 2131165693)
    {
      startActivityForResult(ActivityConfirmAccount.a(this, i2, null, paramIntent), i1);
      return;
      i1 = 1007;
      break;
    }
  }
  
  private boolean a(String paramString, Object paramObject)
    throws JSONException
  {
    String str = a.n().c();
    if (str == null) {}
    com.yelp.android.ca.a locala;
    JSONObject localJSONObject;
    do
    {
      return false;
      locala = a.n();
      localJSONObject = new JSONObject(locala.a(str));
    } while (!localJSONObject.has(paramString));
    localJSONObject.put(paramString, paramObject);
    locala.a(str, localJSONObject.toString());
    return true;
  }
  
  private void b(YelpBusiness paramYelpBusiness)
  {
    co localco = AppData.b().q();
    Intent localIntent = new Intent();
    localIntent.putExtra("extra.business", paramYelpBusiness);
    if (localco.d())
    {
      a(paramYelpBusiness);
      return;
    }
    if (localco.b())
    {
      a(paramYelpBusiness, localIntent);
      return;
    }
    b(paramYelpBusiness, localIntent);
  }
  
  private void b(YelpBusiness paramYelpBusiness, Intent paramIntent)
  {
    if (paramYelpBusiness.U()) {}
    for (int i1 = 1008;; i1 = 1006)
    {
      startActivityForResult(ActivityLogin.a(this, getString(2131166096), paramIntent), i1);
      return;
    }
  }
  
  private void b(List<DisplayGenericSearchFilter> paramList)
  {
    boolean bool = true;
    if (a == null)
    {
      YelpLog.remoteError(this, "mSearchSession null in showFiltersDialog");
      return;
    }
    int i1;
    label29:
    List localList;
    label62:
    Filter localFilter;
    if (a.k() != null)
    {
      i1 = 1;
      if ((i1 == 0) || (a.k().l() == null)) {
        break label123;
      }
      localList = a.k().l();
      if (getSupportFragmentManager().a("filters_dialog") != null) {
        break label129;
      }
      localFilter = a.j();
      if (i1 != 0) {
        break label131;
      }
    }
    for (;;)
    {
      FiltersDialog.a(localFilter, bool, paramList, localList, SearchLocation.a(a.o())).show(getSupportFragmentManager(), "filters_dialog");
      return;
      i1 = 0;
      break label29;
      label123:
      localList = Collections.EMPTY_LIST;
      break label62;
      label129:
      break;
      label131:
      bool = false;
    }
  }
  
  public static Intent c(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.SEARCH");
    localIntent.setClass(paramContext, SearchBusinessesByList.class);
    return localIntent;
  }
  
  private void c(YelpBusiness paramYelpBusiness)
  {
    BusinessSearchResult.a(a.k().b(), paramYelpBusiness);
    if (e != null) {
      e.a(a.k());
    }
    w();
  }
  
  public static Intent d(Context paramContext)
  {
    paramContext = c(paramContext);
    paramContext.putExtra("extra.emptySearch", true);
    return paramContext;
  }
  
  private void u()
  {
    b(Collections.emptyList());
  }
  
  private void v()
  {
    int i1 = 0;
    View localView = r().getChildAt(0);
    if (localView == null) {}
    for (;;)
    {
      int i2 = r().getFirstVisiblePosition();
      AppData.b().f().a(i2, i1);
      return;
      i1 = localView.getTop() - r().getPaddingTop();
    }
  }
  
  private void w()
  {
    try
    {
      if (a.k().b() != null)
      {
        JSONArray localJSONArray = BusinessSearchResult.a(a.k().b());
        if (!a("business_search_results", localJSONArray)) {
          a("suggested_business_search_results", localJSONArray);
        }
      }
      if (a.k().k() != null) {
        a("ad_business_search_results", BusinessSearchResult.a(a.k().k()));
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      YelpLog.remoteError(this, m().getResources().getString(YelpException.YPErrorInvalidData));
    }
  }
  
  public void a(Context paramContext)
  {
    Category localCategory = a.h().a().G();
    if (a.k() != null) {}
    for (String str = a.k().c().getCountryCode();; str = null)
    {
      List localList = Collections.emptyList();
      if (localCategory != null) {
        localList = Arrays.asList(new Category[] { localCategory });
      }
      paramContext.startActivity(AddBusiness.a(paramContext, localList, str));
      return;
    }
  }
  
  void a(Intent paramIntent)
  {
    a.i();
    e.clear();
    e.b(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.DISTANCE });
    if (!a.a(paramIntent))
    {
      YelpLog.remoteError(this, "Error initializing search intent " + paramIntent);
      finish();
      return;
    }
    paramIntent = (Set)paramIntent.getSerializableExtra("extra.displayFeatures");
    if (paramIntent != null)
    {
      e.a(paramIntent);
      c.c(paramIntent);
      d.c(paramIntent);
    }
    if (a.k() == null)
    {
      enableLoading();
      a.a();
    }
    for (;;)
    {
      if (C.c()) {
        C.b(this);
      }
      C.a(this);
      return;
      if (m != null) {
        m.onChanged();
      }
    }
  }
  
  public void a(eo parameo, String paramString)
  {
    startActivity(a(this, parameo.a(), null, paramString));
  }
  
  public void a(Filter paramFilter, SearchLocation paramSearchLocation)
  {
    eo localeo = a.h();
    localeo.a(paramFilter);
    if (paramSearchLocation != null) {
      paramSearchLocation.a(localeo);
    }
    paramFilter = a(this, localeo.a());
    paramFilter.addFlags(65536);
    a(paramFilter);
  }
  
  public void a(boolean paramBoolean)
  {
    populateError(ErrorType.NO_LOCATION);
    if (paramBoolean) {
      d.a(this, true);
    }
  }
  
  public void b()
  {
    a(getIntent());
  }
  
  public void b(Context paramContext)
  {
    BizClaimUtil.a(paramContext);
  }
  
  public void clearError()
  {
    super.clearError();
    if (n != null)
    {
      removeStatusView(n);
      n = null;
    }
    if (o != null)
    {
      removeStatusView(o);
      o = null;
    }
  }
  
  public void enableLoading()
  {
    super.enableLoading();
    getLoadingPanel().setSpinner(YelpLoadingSpinner.FINDING_PLACES);
  }
  
  public o f()
  {
    return a;
  }
  
  public o g()
  {
    return (o)super.getLastCustomNonConfigurationInstance();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SearchList;
  }
  
  public void i()
  {
    if (!com.yelp.android.ui.map.f.a(this, 1026)) {
      return;
    }
    Intent localIntent = new Intent(getIntent().getAction());
    SearchBusinessesByMap.a(this, localIntent);
    a.b(localIntent);
    startActivity(localIntent);
    a.i();
  }
  
  public void j()
  {
    u();
  }
  
  public String k()
  {
    if (a.k() == null) {
      return null;
    }
    return a.k().i();
  }
  
  public List<String> l()
  {
    String str = getResources().getString(2131165745);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str);
    if ((a != null) && (a.o() != null) && (a.m() != null)) {
      localArrayList.add(getResources().getString(2131165746));
    }
    return localArrayList;
  }
  
  public Context m()
  {
    return this;
  }
  
  public double[] n()
  {
    if ((getString(2131165746).equals(l)) && (a != null)) {
      return a.m();
    }
    return null;
  }
  
  public int o()
  {
    return 1055;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((paramIntent != null) && (paramIntent.hasExtra("extra.business")))
      {
        a.a((YelpBusiness)paramIntent.getParcelableExtra("extra.business"));
        continue;
        if (paramInt2 == -1)
        {
          l = paramIntent.getStringExtra("extra.location");
          d.a(paramIntent, this, paramIntent.getStringExtra("extra.search.launch_method"));
        }
        else
        {
          updateOptionsMenu();
          continue;
          if ((paramIntent != null) && (paramIntent.hasExtra("extra.business")))
          {
            b((YelpBusiness)paramIntent.getParcelableExtra("extra.business"));
            continue;
            if ((paramInt2 != -1) && (paramIntent != null) && (paramIntent.getBooleanExtra("extra.has_reached_menu", false)))
            {
              s = new aw(paramIntent.getStringExtra("extra.business_id"), B);
              s.f(new Void[0]);
            }
          }
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    for (;;)
    {
      boolean bool2;
      boolean bool1;
      Object localObject;
      try
      {
        ae.a(getIntent()).a("android.intent.action.SEARCH", null, null).a("com.google.android.gms.actions.SEARCH_ACTION", null, null).a("android.intent.action.MAIN", null, null).a();
        setContentView(2130903568);
        if (paramBundle != null) {
          e = new f(this, paramBundle);
        }
        a = g();
        if ((a != null) && (a.b())) {
          enableLoading();
        }
        if ((a != null) && (paramBundle != null)) {
          a.a(x);
        }
        r = new u(this);
        b = new aj();
        g = new com.yelp.android.ui.util.e(new View[0]);
        b.a(2131689537, g);
        h = new com.yelp.android.ui.util.e(new View[0]);
        b.a(2131689541, h);
        f = com.yelp.android.ui.panels.f.a(this, (RelativeLayout)findViewById(16908331), r(), h, g);
        paramBundle = new HashSet(Arrays.asList(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ALTERNATE_NAMES, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.PRICE, BusinessAdapter.DisplayFeature.ADDRESS, BusinessAdapter.DisplayFeature.BOOKMARK, BusinessAdapter.DisplayFeature.AD }));
        c = new com.yelp.android.ui.panels.businesssearch.d(this);
        c.c(paramBundle);
        b.a(2131689539, aj.c.a(c).b());
        i = new com.yelp.android.ui.util.e(new View[0]);
        b.a(2131689536, i);
        d = new com.yelp.android.ui.panels.businesssearch.d(this);
        k = new SpellingSuggestPanel(m());
        p = LayoutInflater.from(this).inflate(2130903362, r(), false);
        p.setLayoutParams(new AbsListView.LayoutParams(r().getLayoutParams()));
        bool2 = false;
        if (e != null)
        {
          bool1 = bool2;
          if (a != null) {}
        }
        else
        {
          e = new f(this);
          e.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ALTERNATE_NAMES, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.PRICE, BusinessAdapter.DisplayFeature.NUMBERED, BusinessAdapter.DisplayFeature.BOOKMARK, BusinessAdapter.DisplayFeature.ADDRESS });
          a = new o(x, getDatabase().e());
          if (getIntent().getParcelableExtra("extra.query") == null) {
            break label928;
          }
          i1 = 1;
          localObject = d.a();
          String str = getIntent().getStringExtra("query");
          if (str != null)
          {
            eo localeo = new eo();
            localeo.a(BusinessSearchRequest.SearchMode.DEFAULT);
            localeo.b(str);
            getIntent().putExtra("extra.query", localeo.a());
            getIntent().putExtra("extra.source", IriSource.GoogleVoiceSearch);
            i1 = 1;
          }
          if (i1 == 0) {
            break label933;
          }
          a(getIntent());
          bool1 = bool2;
        }
        b.a(2131689540, aj.c.a(e).b());
        j = new com.yelp.android.ui.util.e(new View[0]);
        b.a(2131689535, j);
        d.c(paramBundle);
        b.a(2131689538, aj.c.a(d).b());
        r().setItemsCanFocus(true);
        r().setDividerHeight(0);
        r().setOnItemClickListener(w);
        r().addHeaderView(k, "spelling suggestion", true);
        r().addFooterView(p, null, false);
        r().f();
        ((TextView)p.findViewById(2131690517)).setOnClickListener(z);
        r().setAdapter(b);
        registerForContextMenu(r());
        paramBundle = (TextView)p.findViewById(2131690549);
        localObject = (TextView)p.findViewById(2131690550);
        m = new a(paramBundle, p, a, e, this, (TextView)localObject, k, c, d, b, i, j, f, h, r, bool1);
        y.a(this);
        return;
      }
      catch (SecurityException paramBundle)
      {
        YelpLog.remoteError(paramBundle);
        finish();
        return;
      }
      label928:
      int i1 = 0;
      continue;
      label933:
      if ((localObject != null) && (!getIntent().getBooleanExtra("extra.emptySearch", false)))
      {
        getIntent().putExtra("extra.query", (Parcelable)localObject);
        getIntent().putExtra("extra.offset", ((BusinessSearchRequest)localObject).C());
        bool1 = true;
        a(getIntent());
      }
      else
      {
        populateError(ErrorType.NO_PREV_SEARCH);
        d.a(this);
        overridePendingTransition(0, 0);
        bool1 = bool2;
      }
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, final ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i1 = position;
    paramView = ((ListView)paramView).getItemAtPosition(i1);
    if (paramView == null) {
      return;
    }
    if ((paramView instanceof SearchResultLocalAd))
    {
      paramContextMenuInfo = (SearchResultLocalAd)paramView;
      paramView = paramContextMenuInfo.e();
      AppData.a(EventIri.AdSearchListClick, paramContextMenuInfo.a(false));
      TrackOfflineAttributionRequest.a(paramContextMenuInfo.a(), TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_CLICK);
      label63:
      paramContextMenuInfo = paramView.a();
      paramContextMenu.setHeaderTitle(paramView.a().z());
      paramContextMenu.setHeaderIcon(2130837646);
      ab.a(this, paramContextMenu, paramView);
      if (!paramView.a().U()) {
        break label152;
      }
    }
    label152:
    for (i1 = 2131166443;; i1 = 2131165446)
    {
      paramContextMenu.add(i1).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
      {
        public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
        {
          SearchBusinessesByList.a(SearchBusinessesByList.this, paramContextMenuInfo);
          return true;
        }
      });
      return;
      if (!(paramView instanceof BusinessSearchResult)) {
        break;
      }
      paramView = (BusinessSearchResult)paramView;
      break label63;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    d.a(this, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    v();
    y.b(this);
    C.b(this);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("query");
    IriSource localIriSource = (IriSource)paramIntent.getSerializableExtra("extra.source");
    String str2 = paramIntent.getStringExtra("extra.search_launch_method");
    if (!TextUtils.isEmpty(str1))
    {
      paramIntent = a(this, a.h().b(str1).a(), localIriSource, str2);
      d.a(this, paramIntent);
    }
    setIntent(paramIntent);
    a(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!d.a(this, paramMenuItem)) {
      return super.onOptionsItemSelected(paramMenuItem);
    }
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    a.unregisterObserver(m);
    v();
    AppData.b().y().b();
    freezeRequest("add_bookmark_request", u);
    freezeRequest("remove_bookmark_request", v);
    freezeRequest("continue_last_order_info_request", s);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    d.a(this, paramMenu);
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onResume()
  {
    super.onResume();
    a.registerObserver(m);
    AppData.b().y().a();
    setSearchHotButtonSelected(true);
    u = ((h)thawRequest("add_bookmark_request", u, E));
    v = ((dk)thawRequest("remove_bookmark_request", v, D));
    s = ((aw)thawRequest("continue_last_order_info_request", s, B));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    e.a(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    r.a();
  }
  
  public void onStop()
  {
    super.onStop();
    r.b();
  }
  
  public o p()
  {
    return a;
  }
  
  public void populateError(ErrorType paramErrorType)
  {
    super.populateError(paramErrorType);
    k.setVisibility(8);
    p.setVisibility(8);
    b.a(true);
    if (paramErrorType == ErrorType.NO_RESULTS)
    {
      getErrorPanel().b();
      if (o == null)
      {
        paramErrorType = a.k();
        if (paramErrorType != null) {
          break label212;
        }
        paramErrorType = null;
        if (!TextUtils.isEmpty(paramErrorType))
        {
          o = new SpellingSuggestPanel(this);
          localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
          o.setLayoutParams(localLayoutParams);
          o.setOnClickListener(A);
          o.setSuggestion(paramErrorType);
          addStatusView(o);
        }
      }
      if (n == null)
      {
        n = LayoutInflater.from(this).inflate(2130903355, r(), false);
        paramErrorType = new FrameLayout.LayoutParams(-1, -2);
        gravity = 80;
        n.setLayoutParams(paramErrorType);
        ar.a(n, 2130838702);
        n.setOnClickListener(z);
        addStatusView(n);
      }
    }
    label212:
    while (paramErrorType != ErrorType.NO_PREV_SEARCH) {
      for (;;)
      {
        FrameLayout.LayoutParams localLayoutParams;
        return;
        paramErrorType = paramErrorType.d();
      }
    }
    getErrorPanel().b();
  }
  
  public void q_()
  {
    enableLoading();
    a.c();
  }
  
  protected void setHotButtonListeners()
  {
    super.setHotButtonListeners();
    findViewById(2131690376).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(EventIri.HotButtonSearch);
        d.a(SearchBusinessesByList.this);
      }
    });
  }
  
  private static final class a
    extends DataSetObserver
  {
    private final View a;
    private final TextView b;
    private final o c;
    private final f d;
    private final WeakReference<SearchBusinessesByList> e;
    private final TextView f;
    private final SpellingSuggestPanel g;
    private final com.yelp.android.ui.panels.businesssearch.d h;
    private final com.yelp.android.ui.panels.businesssearch.d i;
    private final aj j;
    private final com.yelp.android.ui.panels.f k;
    private final com.yelp.android.ui.util.e l;
    private final com.yelp.android.ui.util.e m;
    private final com.yelp.android.ui.util.e n;
    private final PagingPanel o;
    private final u p;
    private boolean q;
    private final PlatformSearchDialogFragment.a r = new SearchBusinessesByList.a.10(this);
    private final ReservationSearchDialogFragment.a s = new SearchBusinessesByList.a.11(this);
    private final View.OnClickListener t = new SearchBusinessesByList.a.2(this);
    private final ListDialogFragment.a u = new SearchBusinessesByList.a.3(this);
    
    public a(TextView paramTextView1, View paramView, o paramo, f paramf, SearchBusinessesByList paramSearchBusinessesByList, TextView paramTextView2, SpellingSuggestPanel paramSpellingSuggestPanel, com.yelp.android.ui.panels.businesssearch.d paramd1, com.yelp.android.ui.panels.businesssearch.d paramd2, aj paramaj, com.yelp.android.ui.util.e parame1, com.yelp.android.ui.util.e parame2, com.yelp.android.ui.panels.f paramf1, com.yelp.android.ui.util.e parame3, u paramu, boolean paramBoolean)
    {
      a = paramView;
      o = ((PagingPanel)a.findViewById(2131690548));
      c = paramo;
      d = paramf;
      e = new WeakReference(paramSearchBusinessesByList);
      b = paramTextView1;
      f = paramTextView2;
      g = paramSpellingSuggestPanel;
      h = paramd1;
      i = paramd2;
      j = paramaj;
      k = paramf1;
      l = parame3;
      m = parame1;
      n = parame2;
      p = paramu;
      q = paramBoolean;
      onChanged();
    }
    
    private void a()
    {
      a(m, h);
      a(n, i);
    }
    
    private void a(ToggleButton paramToggleButton)
    {
      ((SearchBusinessesByList)e.get()).getHandler().postDelayed(new SearchBusinessesByList.a.8(this, paramToggleButton), 200L);
    }
    
    private void a(SearchRequest.SearchResponse paramSearchResponse)
    {
      SearchBusinessesByList localSearchBusinessesByList = (SearchBusinessesByList)e.get();
      paramSearchResponse = paramSearchResponse.d();
      if ((localSearchBusinessesByList == null) || (!c.f()) || (TextUtils.isEmpty(paramSearchResponse)))
      {
        g.setVisibility(8);
        return;
      }
      g.setSuggestion(paramSearchResponse);
      g.setVisibility(0);
    }
    
    private void a(DisplayGenericSearchFilter paramDisplayGenericSearchFilter, ToggleButton paramToggleButton)
    {
      boolean bool2 = paramToggleButton.isChecked();
      Filter localFilter = c.j();
      if (localFilter == null) {
        localFilter = new Filter();
      }
      for (;;)
      {
        GenericSearchFilter.FilterType localFilterType = paramDisplayGenericSearchFilter.c();
        eo localeo = c.h();
        boolean bool1;
        switch (SearchBusinessesByList.4.a[localFilterType.ordinal()])
        {
        default: 
          localFilter.a(GenericSearchFilter.a(paramDisplayGenericSearchFilter.h(), bool2));
          bool1 = true;
        }
        for (;;)
        {
          if (bool1)
          {
            paramToggleButton = new HashMap();
            paramToggleButton.put("requestId", c.k().i());
            paramToggleButton.put("from_toggle", Boolean.valueOf(true));
            paramToggleButton.put("alias", paramDisplayGenericSearchFilter.a());
            paramToggleButton.put("toggle_on", Boolean.valueOf(bool2));
            AppData.a(EventIri.SearchPromotedFilterToggle, paramToggleButton);
            paramDisplayGenericSearchFilter = SearchBusinessesByList.a((Context)e.get(), localeo.a(localFilter).a());
            paramDisplayGenericSearchFilter.addFlags(65536);
            ((SearchBusinessesByList)e.get()).a(paramDisplayGenericSearchFilter);
          }
          return;
          localFilter.a(OpenNowGenericSearchFilter.a((OpenNowGenericSearchFilter)paramDisplayGenericSearchFilter.h(), null, bool2));
          bool1 = true;
          continue;
          bool1 = a(localFilter, paramToggleButton, paramDisplayGenericSearchFilter);
          continue;
          bool1 = a(paramDisplayGenericSearchFilter, localFilter, paramToggleButton, localeo);
        }
      }
    }
    
    private void a(Filter paramFilter)
    {
      Object localObject = c.k();
      Distance localDistance;
      if (paramFilter == null)
      {
        localDistance = null;
        if (paramFilter != null) {
          break label52;
        }
        paramFilter = null;
        label20:
        if (localObject != null) {
          break label60;
        }
      }
      label52:
      label60:
      for (localObject = Collections.EMPTY_LIST;; localObject = ((SearchRequest.SearchResponse)localObject).l())
      {
        paramFilter = d.a(localDistance, paramFilter, (List)localObject);
        k.setNonPromotedFilterText(paramFilter);
        return;
        localDistance = paramFilter.d();
        break;
        paramFilter = paramFilter.b();
        break label20;
      }
    }
    
    private void a(com.yelp.android.ui.util.e parame, com.yelp.android.ui.panels.businesssearch.d paramd)
    {
      parame.clear();
      if ((d.isEmpty()) || (paramd.isEmpty())) {
        return;
      }
      paramd = new TextView((Context)e.get(), null, 2130772426);
      paramd.setHeight(n.h);
      parame.b(paramd);
    }
    
    private void a(Integer paramInteger)
    {
      String str = null;
      DisplayGenericSearchFilter localDisplayGenericSearchFilter = d.a(c.k().l(), GenericSearchFilter.FilterType.Platform);
      Object localObject = str;
      if (localDisplayGenericSearchFilter != null)
      {
        localObject = str;
        if (localDisplayGenericSearchFilter.i() != null) {
          localObject = localDisplayGenericSearchFilter.i().e();
        }
      }
      str = c();
      paramInteger = PlatformSearchDialogFragment.a("", new PlatformRSSTermMap(str, str), c.l(), (PlatformDisambiguatedAddress)localObject, "promoted_filter", paramInteger);
      paramInteger.a(r);
      paramInteger.show(((SearchBusinessesByList)e.get()).getSupportFragmentManager(), "platform_search_dialog");
      AppData.a(EventIri.SearchPromotedFilterDeliveryOpen);
    }
    
    private void a(List<DisplayGenericSearchFilter> paramList)
    {
      DisplayGenericSearchFilter localDisplayGenericSearchFilter = d.a(paramList);
      l.clear();
      k.a();
      if ((localDisplayGenericSearchFilter == null) || (!localDisplayGenericSearchFilter.b())) {
        return;
      }
      Object localObject1 = c.j();
      boolean bool = localDisplayGenericSearchFilter.h().c();
      Object localObject2 = ViewIri.SearchPromotedFilterShown;
      AutoResizeTextView localAutoResizeTextView;
      if (bool)
      {
        paramList = Boolean.TRUE;
        AppData.a((com.yelp.android.analytics.iris.a)localObject2, "toggle_on", paramList);
        if ((bool) && (localObject1 != null)) {
          ((Filter)localObject1).a(GenericSearchFilter.a(localDisplayGenericSearchFilter.h()));
        }
        paramList = (ListView)((SearchBusinessesByList)e.get()).findViewById(16908298);
        paramList = LayoutInflater.from((Context)e.get()).inflate(2130903452, paramList, false);
        l.b(paramList);
        localObject1 = localDisplayGenericSearchFilter.i();
        localObject2 = Html.fromHtml(((DisplayGenericSearchFilterParameters)localObject1).d());
        localAutoResizeTextView = (AutoResizeTextView)paramList.findViewById(2131690764);
        if (!bool) {
          break label248;
        }
        localAutoResizeTextView.setText(StringUtils.a((Spanned)localObject2, ((DisplayGenericSearchFilterParameters)localObject1).a()));
      }
      for (;;)
      {
        if (bool) {
          k.setPromotedFilterText(localObject2.toString());
        }
        paramList.setOnClickListener(t);
        paramList = (ToggleButton)paramList.findViewById(2131690236);
        paramList.setChecked(bool);
        paramList.setOnClickListener(new SearchBusinessesByList.a.7(this, localDisplayGenericSearchFilter));
        return;
        paramList = Boolean.FALSE;
        break;
        label248:
        localAutoResizeTextView.setText((CharSequence)localObject2);
      }
    }
    
    private boolean a(DisplayGenericSearchFilter paramDisplayGenericSearchFilter, Filter paramFilter, ToggleButton paramToggleButton, eo parameo)
    {
      PlatformGenericSearchFilter localPlatformGenericSearchFilter = (PlatformGenericSearchFilter)paramDisplayGenericSearchFilter.h();
      if (paramToggleButton.isChecked())
      {
        PlatformFilter localPlatformFilter = localPlatformGenericSearchFilter.f();
        if ((localPlatformFilter != null) && (localPlatformFilter.b()))
        {
          localPlatformFilter.a(c.o());
          if ((paramDisplayGenericSearchFilter.i() != null) && (paramDisplayGenericSearchFilter.i().e() != null)) {
            parameo.a(paramDisplayGenericSearchFilter.i().e().b());
          }
          paramFilter.a(PlatformGenericSearchFilter.a(localPlatformGenericSearchFilter, true));
          return true;
        }
        b(paramToggleButton);
        return false;
      }
      if (localPlatformGenericSearchFilter.f() != null)
      {
        paramDisplayGenericSearchFilter = localPlatformGenericSearchFilter.f().e();
        if (paramDisplayGenericSearchFilter != null) {
          paramDisplayGenericSearchFilter.a(parameo);
        }
      }
      paramFilter.a(GenericSearchFilter.a(localPlatformGenericSearchFilter, false));
      return true;
    }
    
    private boolean a(Filter paramFilter, ToggleButton paramToggleButton, DisplayGenericSearchFilter paramDisplayGenericSearchFilter)
    {
      paramDisplayGenericSearchFilter = (ReservationGenericSearchFilter)paramDisplayGenericSearchFilter.h();
      if (paramToggleButton.isChecked())
      {
        ReservationFilter localReservationFilter = paramDisplayGenericSearchFilter.f();
        if ((localReservationFilter != null) && (localReservationFilter.b())) {
          paramFilter.a(ReservationGenericSearchFilter.a(paramDisplayGenericSearchFilter, paramDisplayGenericSearchFilter.f(), true));
        }
      }
      for (;;)
      {
        return true;
        a(paramToggleButton);
        return false;
        paramFilter.a(ReservationGenericSearchFilter.a(paramDisplayGenericSearchFilter, paramDisplayGenericSearchFilter.f(), false));
      }
    }
    
    private void b()
    {
      ReservationSearchDialogFragment localReservationSearchDialogFragment = ReservationSearchDialogFragment.a(EventIri.SearchPromotedFilterReservationCancel);
      localReservationSearchDialogFragment.a(s);
      localReservationSearchDialogFragment.a(c());
      localReservationSearchDialogFragment.show(((SearchBusinessesByList)e.get()).getSupportFragmentManager(), "reservation_search_dialog");
      AppData.a(EventIri.SearchPromotedFilterReservationOpen);
    }
    
    private void b(ToggleButton paramToggleButton)
    {
      ((SearchBusinessesByList)e.get()).getHandler().postDelayed(new SearchBusinessesByList.a.9(this, paramToggleButton), 200L);
    }
    
    private void b(SearchRequest.SearchResponse paramSearchResponse)
    {
      if (paramSearchResponse.a().isEmpty()) {
        return;
      }
      ListDialogFragment localListDialogFragment = (ListDialogFragment)((SearchBusinessesByList)e.get()).getSupportFragmentManager().a("search_location_dialog");
      Object localObject = localListDialogFragment;
      if (localListDialogFragment == null)
      {
        localObject = new ArrayList();
        paramSearchResponse = paramSearchResponse.a().iterator();
        while (paramSearchResponse.hasNext()) {
          ((ArrayList)localObject).add(Pair.create(((Address)paramSearchResponse.next()).getFeatureName(), (Parcelable)null));
        }
        localObject = SimpleListDialogFragment.b(2131165777, (List)localObject);
        ((ListDialogFragment)localObject).show(((SearchBusinessesByList)e.get()).getSupportFragmentManager(), "search_location_dialog");
      }
      ((ListDialogFragment)localObject).a(u);
    }
    
    private boolean b(List<BusinessSearchResult> paramList)
    {
      if ((paramList == null) || (!Features.platform_attributes.isEnabled())) {
        return false;
      }
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)paramList.next();
        Iterator localIterator = localBusinessSearchResult.c().iterator();
        while (localIterator.hasNext())
        {
          SearchAction localSearchAction = (SearchAction)localIterator.next();
          if ((localSearchAction.a() == BusinessSearchResult.SearchActionType.Platform) && (!((PlatformSearchAction)localSearchAction).q().isEmpty())) {
            return true;
          }
        }
        if (!localBusinessSearchResult.d().isEmpty()) {
          return true;
        }
      }
      return false;
    }
    
    private String c()
    {
      String str = c.o().E();
      Object localObject = str;
      if (TextUtils.isEmpty(str))
      {
        localObject = c.o().G();
        if (localObject == null) {
          localObject = null;
        }
      }
      else
      {
        return (String)localObject;
      }
      return ((Category)localObject).a();
    }
    
    private boolean c(SearchRequest.SearchResponse paramSearchResponse)
    {
      paramSearchResponse = paramSearchResponse.e();
      if (paramSearchResponse == SearchRequest.SearchResponse.Foldability.UNFOLDABLE)
      {
        b.setVisibility(8);
        b.setOnClickListener(null);
        return false;
      }
      b.setVisibility(0);
      b.setOnClickListener(new SearchBusinessesByList.a.6(this, paramSearchResponse));
      if (paramSearchResponse == SearchRequest.SearchResponse.Foldability.FOLDED) {}
      for (int i1 = 2131166583;; i1 = 2131165985)
      {
        b.setText(i1);
        return true;
      }
    }
    
    public void onChanged()
    {
      super.onChanged();
      SearchBusinessesByList localSearchBusinessesByList = (SearchBusinessesByList)e.get();
      if (localSearchBusinessesByList == null) {
        return;
      }
      SearchRequest.SearchResponse localSearchResponse = c.k();
      Object localObject1;
      Object localObject2;
      if (localSearchResponse != null)
      {
        localObject1 = (FiltersDialog)localSearchBusinessesByList.getSupportFragmentManager().a("filters_dialog");
        if (localObject1 != null) {
          ((FiltersDialog)localObject1).a(localSearchResponse.l());
        }
        localSearchBusinessesByList.disableLoading();
        localSearchBusinessesByList.clearError();
        boolean bool1 = b(localSearchResponse.b());
        d.a(bool1);
        d.a(localSearchResponse.g());
        d.a(c.a(localSearchBusinessesByList), c.l());
        d.a(localSearchResponse);
        boolean bool2 = c(localSearchResponse);
        b(localSearchResponse);
        a.setVisibility(0);
        j.a(false);
        if ((d.isEmpty()) && (!bool2)) {
          localSearchBusinessesByList.populateError(ErrorType.NO_RESULTS);
        }
        localObject1 = localSearchResponse.h();
        Iterator localIterator;
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          f.setVisibility(0);
          f.setText((CharSequence)localObject1);
          a.setPadding(0, 0, 0, 0);
          SearchBusinessesByList.a(localSearchResponse.j());
          localObject1 = new ArrayList();
          localObject2 = new ArrayList();
          if (!SearchBusinessesByList.q().isEmpty()) {
            localIterator = SearchBusinessesByList.q().iterator();
          }
        }
        else
        {
          for (;;)
          {
            label293:
            if (!localIterator.hasNext()) {
              break label454;
            }
            LocalAd localLocalAd = (LocalAd)localIterator.next();
            AppData.a(EventIri.AdSearchListImpression, localLocalAd.a(true));
            if (localLocalAd.c() == LocalAdPlacement.ABOVE_SEARCH) {
              ((List)localObject1).add(localLocalAd);
            }
            for (;;)
            {
              if (localLocalAd.a() == null) {
                break label407;
              }
              TrackOfflineAttributionRequest.a(localLocalAd.a(), TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_IMPRESSION);
              break label293;
              f.setVisibility(8);
              break;
              if (localLocalAd.c() == LocalAdPlacement.BELOW_SEARCH) {
                ((List)localObject2).add(localLocalAd);
              }
            }
            label407:
            YelpLog.remoteError("AdsFix", "LocalAd has a null business ad type: " + localLocalAd.k() + "local ad business id: " + localLocalAd.m());
          }
        }
        label454:
        h.a(bool1);
        h.a(localSearchResponse.i());
        h.a((List)localObject1);
        i.a(bool1);
        i.a(localSearchResponse.i());
        i.a((List)localObject2);
        localObject1 = localSearchResponse.l();
        if (localObject1 != null)
        {
          localIterator = ((List)localObject1).iterator();
          localObject1 = null;
          label542:
          localObject2 = localObject1;
          if (!localIterator.hasNext()) {
            break label597;
          }
          localObject2 = (DisplayGenericSearchFilter)localIterator.next();
          if ((((DisplayGenericSearchFilter)localObject2).c() != GenericSearchFilter.FilterType.OpenNow) || (!((DisplayGenericSearchFilter)localObject2).d())) {
            break label975;
          }
          localObject1 = localObject2;
        }
      }
      label597:
      label619:
      label741:
      label775:
      label945:
      label957:
      label969:
      label975:
      for (;;)
      {
        break label542;
        localObject2 = null;
        if (localObject2 != null)
        {
          d.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.CLOSES_IN });
          a(localSearchResponse);
          a(localSearchResponse.l());
          if (q)
          {
            localObject1 = AppData.b().f();
            i1 = ((c)localObject1).S();
            int i2 = ((c)localObject1).T();
            localSearchBusinessesByList.r().post(new SearchBusinessesByList.a.1(this, localSearchBusinessesByList, i1, i2));
            q = false;
          }
          d.a((BusinessSearchRequest)c.o(), c.n().c());
          if ((localSearchResponse instanceof BusinessSearchRequest.BusinessSearchResponse))
          {
            localObject1 = ((BusinessSearchRequest.BusinessSearchResponse)localSearchResponse).n();
            p.a(localSearchBusinessesByList, (AndroidAppAnnotation)localObject1);
          }
          localSearchBusinessesByList.updateOptionsMenu();
          if (c.f()) {
            break label945;
          }
          o.b(new SearchBusinessesByList.a.4(this, localSearchBusinessesByList), 20);
          if (c.e()) {
            break label957;
          }
          if (localSearchResponse == null) {
            break label969;
          }
        }
        for (int i1 = localSearchResponse.f() - (localSearchResponse.g() + 20);; i1 = 20)
        {
          o.a(new SearchBusinessesByList.a.5(this, localSearchBusinessesByList), Math.min(20, i1));
          for (;;)
          {
            o.b();
            a(c.j());
            a();
            localObject1 = (PlatformSearchDialogFragment)localSearchBusinessesByList.getSupportFragmentManager().a("platform_search_dialog");
            if (localObject1 != null) {
              ((PlatformSearchDialogFragment)localObject1).a(r);
            }
            localObject1 = (ReservationSearchDialogFragment)localSearchBusinessesByList.getSupportFragmentManager().a("reservation_search_dialog");
            if (localObject1 == null) {
              break;
            }
            ((ReservationSearchDialogFragment)localObject1).a(s);
            return;
            d.b(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.CLOSES_IN });
            break label619;
            d.clear();
            break label741;
            o.b(null, 0);
            break label775;
            o.a(null, 0);
          }
        }
      }
    }
    
    public void onInvalidated()
    {
      super.onInvalidated();
      o.a(null, 0);
      o.b(null, 0);
      o.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */