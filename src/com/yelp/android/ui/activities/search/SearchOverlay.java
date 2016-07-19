package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.l;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView<*>;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.GADimensions;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.database.g;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.serializable.PlatformRSSTermMap;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.PlatformSearchDialogFragment;
import com.yelp.android.ui.dialogs.PlatformSearchDialogFragment.a;
import com.yelp.android.ui.util.SuggestionFilter;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import com.yelp.android.ui.util.SuggestionFilter.b;
import com.yelp.android.ui.util.af;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.y;
import com.yelp.android.util.BasicBroadcastReceiver;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;

public class SearchOverlay
  extends YelpActivity
  implements e
{
  View.OnFocusChangeListener a = new View.OnFocusChangeListener()
  {
    public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
    {
      SearchOverlay.a(SearchOverlay.this, (ImageView)findViewById(2131690086));
      if (!paramAnonymousBoolean) {}
      do
      {
        return;
        if (paramAnonymousView == SearchOverlay.a(SearchOverlay.this))
        {
          SearchOverlay.j(SearchOverlay.this).setAdapter(SearchOverlay.i(SearchOverlay.this));
          SearchOverlay.j(SearchOverlay.this).setOnItemClickListener(e);
          if (SearchOverlay.k(SearchOverlay.this).equals(getString(2131165745)))
          {
            paramAnonymousView = AppData.b().r().c();
            SearchOverlay.b(SearchOverlay.this).setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(2130838687), null, null, null);
            SearchOverlay.l(SearchOverlay.this).a(paramAnonymousView);
            SearchOverlay.l(SearchOverlay.this).a(SearchOverlay.b(SearchOverlay.this).getText().toString());
            SearchOverlay.l(SearchOverlay.this).filter(SearchOverlay.a(SearchOverlay.this).getText().toString());
          }
        }
        while (TextUtils.isEmpty(SearchOverlay.b(SearchOverlay.this).getText())) {
          if (SearchOverlay.b(SearchOverlay.this).hasFocus())
          {
            SearchOverlay.b(SearchOverlay.this).setHint("");
            return;
            SearchOverlay.b(SearchOverlay.this).setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(2130838686), null, null, null);
            if (SearchOverlay.m(SearchOverlay.this) != null) {
              SearchOverlay.m(SearchOverlay.this).cancel(true);
            }
            SearchOverlay.a(SearchOverlay.this, new SearchOverlay.a(SearchOverlay.this, new Geocoder(SearchOverlay.this)));
            SearchOverlay.m(SearchOverlay.this).execute(new String[] { SearchOverlay.b(SearchOverlay.this).getText().toString() });
            continue;
            if (paramAnonymousView == SearchOverlay.b(SearchOverlay.this))
            {
              SearchOverlay.n(SearchOverlay.this).setVisibility(8);
              SearchOverlay.b(SearchOverlay.this).setNextFocusDownId(2131690894);
              SearchOverlay.j(SearchOverlay.this).setAdapter(SearchOverlay.h(SearchOverlay.this));
              SearchOverlay.j(SearchOverlay.this).setOnItemClickListener(f);
            }
          }
          else
          {
            if (k.b(c(), PermissionGroup.LOCATION))
            {
              SearchOverlay.b(SearchOverlay.this).setHint(getString(2131165846));
              return;
            }
            SearchOverlay.b(SearchOverlay.this).setHint(getString(2131165745));
            return;
          }
        }
      } while ((SearchOverlay.b(SearchOverlay.this).hasFocus()) || (!SearchOverlay.c(SearchOverlay.this).contains(SearchOverlay.b(SearchOverlay.this).getText().toString())));
      SearchOverlay.b(SearchOverlay.this).setHint(SearchOverlay.b(SearchOverlay.this).getText());
      SearchOverlay.b(SearchOverlay.this).setText("");
    }
  };
  TextView.OnEditorActionListener b = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if ((paramAnonymousInt == 0) || (paramAnonymousInt == 3))
      {
        AppData.a(EventIri.SearchButtonKeyboard);
        SearchOverlay.a(SearchOverlay.this, EventIri.SearchButtonKeyboard.getIriName());
        return true;
      }
      return false;
    }
  };
  View.OnClickListener c = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      AppData.a(EventIri.SearchButtonUi);
      SearchOverlay.a(SearchOverlay.this, EventIri.SearchButtonUi.getIriName());
    }
  };
  TextWatcher d = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      if (SearchOverlay.a(SearchOverlay.this).isFocused())
      {
        if (!TextUtils.isEmpty(paramAnonymousCharSequence))
        {
          SearchOverlay.l(SearchOverlay.this).filter(SearchOverlay.a(SearchOverlay.this).getText().toString());
          SearchOverlay.n(SearchOverlay.this).setVisibility(0);
          return;
        }
        SearchOverlay.n(SearchOverlay.this).setVisibility(8);
        SearchOverlay.f(SearchOverlay.this).a(new ArrayList());
        SearchOverlay.f(SearchOverlay.this).notifyDataSetChanged();
        SearchOverlay.d(SearchOverlay.this).a(SearchOverlay.e(SearchOverlay.this));
        SearchOverlay.d(SearchOverlay.this).notifyDataSetChanged();
        SearchOverlay.l(SearchOverlay.this).filter(SearchOverlay.a(SearchOverlay.this).getText().toString());
        return;
      }
      SearchOverlay.b(SearchOverlay.this).setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(2130838686), null, null, null);
      SearchOverlay.a(SearchOverlay.this, paramAnonymousCharSequence);
    }
  };
  AdapterView.OnItemClickListener e = new AdapterView.OnItemClickListener()
  {
    private void a(RichSearchSuggestion paramAnonymousRichSearchSuggestion)
    {
      BusinessContributionType localBusinessContributionType = (BusinessContributionType)getIntent().getSerializableExtra("extra.contribution.type");
      switch (SearchOverlay.7.b[localBusinessContributionType.ordinal()])
      {
      default: 
        startActivity(localBusinessContributionType.getAddIntent(SearchOverlay.this, paramAnonymousRichSearchSuggestion.g()));
        return;
      }
      startActivityForResult(PhotoTeaser.a(SearchOverlay.this, paramAnonymousRichSearchSuggestion.g(), localBusinessContributionType, (Uri)getIntent().getParcelableExtra("extra.contribution")), 1041);
    }
    
    private void a(String paramAnonymousString)
    {
      StringUtils.a(d, SearchOverlay.a(SearchOverlay.this), paramAnonymousString);
      SearchOverlay.g(SearchOverlay.this);
      SearchOverlay.a(SearchOverlay.this, paramAnonymousString, SearchOverlay.k(SearchOverlay.this), null);
    }
    
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      Object localObject1 = null;
      String str = ((TextView)paramAnonymousView.findViewById(2131690786)).getText().toString();
      Object localObject2 = paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
      paramAnonymousAdapterView = SearchOverlay.a(SearchOverlay.this).getText().toString();
      if ((localObject2 instanceof RichSearchSuggestion))
      {
        localObject2 = (RichSearchSuggestion)localObject2;
        SuggestionFilter.a(SearchOverlay.this, SearchOverlay.l(SearchOverlay.this), ((RichSearchSuggestion)localObject2).a().toString(), ((RichSearchSuggestion)localObject2).h(), paramAnonymousAdapterView, paramAnonymousInt);
        switch (SearchOverlay.7.a[localObject2.a().ordinal()])
        {
        default: 
          a(str);
          return;
        case 1: 
          if (SearchOverlay.o(SearchOverlay.this) == SuggestionFilter.SuggestionType.CONTRIBUTION)
          {
            a((RichSearchSuggestion)localObject2);
            return;
          }
          startActivity(ActivityBusinessPage.b(paramAnonymousView.getContext(), ((RichSearchSuggestion)localObject2).g().aD()));
          return;
        case 2: 
          paramAnonymousAdapterView = ((RichSearchSuggestion)localObject2).o();
          AppData.a(EventIri.SearchBarPlatformOpen);
          paramAnonymousAdapterView = PlatformSearchDialogFragment.a(((RichSearchSuggestion)localObject2).h(), ((RichSearchSuggestion)localObject2).n(), SearchOverlay.b(SearchOverlay.this).getText().toString(), paramAnonymousAdapterView, "search_bar");
          paramAnonymousAdapterView.a(SearchOverlay.p(SearchOverlay.this));
          paramAnonymousAdapterView.show(getSupportFragmentManager(), "PLATFORM_DIALOG");
          return;
        case 3: 
          paramAnonymousView = new PlatformFilter("delivery_current_location", null);
          if (!TextUtils.isEmpty(((RichSearchSuggestion)localObject2).m())) {
            paramAnonymousAdapterView = ((RichSearchSuggestion)localObject2).m();
          }
          break;
        }
      }
      for (;;)
      {
        MOBILE_VERTICAL_SEARCH_ENTRYvalue = "search_bar_suggest";
        MOBILE_VERTICAL_SEARCH_TYPEvalue = "delivery";
        startActivity(SearchBusinessesByList.a(c(), paramAnonymousView, paramAnonymousAdapterView, null));
        return;
        if (((RichSearchSuggestion)localObject2).n() != null)
        {
          paramAnonymousAdapterView = ((RichSearchSuggestion)localObject2).n().c();
          continue;
          MOBILE_VERTICAL_SEARCH_ENTRYvalue = "search_bar_suggest";
          MOBILE_VERTICAL_SEARCH_TYPEvalue = "reservation";
          paramAnonymousAdapterView = SearchOverlay.k(SearchOverlay.this);
          if (l().contains(paramAnonymousAdapterView)) {
            paramAnonymousAdapterView = (AdapterView<?>)localObject1;
          }
          for (;;)
          {
            startActivity(SearchBusinessesByList.a(SearchOverlay.this, com.yelp.android.ui.activities.reservations.c.a(), true, ((RichSearchSuggestion)localObject2).m(), paramAnonymousAdapterView));
            return;
            SuggestionFilter.a(SearchOverlay.this, SearchOverlay.l(SearchOverlay.this), RichSearchSuggestion.RichSearchSuggestionType.COMMON.toString(), str, paramAnonymousAdapterView, paramAnonymousInt);
            a(str);
            return;
          }
        }
        else
        {
          paramAnonymousAdapterView = null;
        }
      }
    }
  };
  AdapterView.OnItemClickListener f = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = SearchOverlay.b(SearchOverlay.this).getText().toString();
      paramAnonymousView = ((TextView)paramAnonymousView.findViewById(2131690786)).getText().toString();
      if (l().contains(paramAnonymousView))
      {
        SearchOverlay.b(SearchOverlay.this).setHint(paramAnonymousView);
        StringUtils.a(d, SearchOverlay.b(SearchOverlay.this), "");
      }
      for (;;)
      {
        SearchOverlay.g(SearchOverlay.this);
        SearchOverlay.a(SearchOverlay.this).requestFocus();
        SuggestionFilter.a(SearchOverlay.this, SearchOverlay.q(SearchOverlay.this), null, paramAnonymousView, paramAnonymousAdapterView, paramAnonymousInt);
        return;
        StringUtils.a(d, SearchOverlay.b(SearchOverlay.this), paramAnonymousView);
      }
    }
  };
  private EditText g;
  private EditText h;
  private ListView i;
  private a j;
  private a k;
  private b l;
  private c m;
  private aj n;
  private af<RichSearchSuggestion> o;
  private y<CharSequence> p;
  private ArrayList<CharSequence> q;
  private List<CharSequence> r;
  private IriSource s;
  private SuggestionFilter.SuggestionType t;
  private ImageView u;
  private final PlatformSearchDialogFragment.a v = new PlatformSearchDialogFragment.a()
  {
    public void a(PlatformFilter paramAnonymousPlatformFilter, String paramAnonymousString1, String paramAnonymousString2)
    {
      StringUtils.a(d, SearchOverlay.a(SearchOverlay.this), paramAnonymousString1);
      StringUtils.a(d, SearchOverlay.b(SearchOverlay.this), paramAnonymousString2);
      SearchOverlay.g(SearchOverlay.this);
      startActivity(SearchBusinessesByList.a(c(), paramAnonymousPlatformFilter, paramAnonymousString1, paramAnonymousString2));
      MOBILE_VERTICAL_SEARCH_ENTRYvalue = "search_bar_suggest";
      MOBILE_VERTICAL_SEARCH_TYPEvalue = paramAnonymousPlatformFilter.a();
    }
  };
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, SuggestionFilter.SuggestionType paramSuggestionType, IriSource paramIriSource)
  {
    return a(paramContext, paramList, paramString1, paramString2, true, null, EnumSet.allOf(SearchDisplayFeatures.class), paramSuggestionType, paramIriSource);
  }
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, boolean paramBoolean, BusinessContributionType paramBusinessContributionType, SuggestionFilter.SuggestionType paramSuggestionType)
  {
    return a(paramContext, paramList, paramString1, paramString2, paramBoolean, paramBusinessContributionType, paramSuggestionType, EnumSet.allOf(SearchDisplayFeatures.class));
  }
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, boolean paramBoolean, BusinessContributionType paramBusinessContributionType, SuggestionFilter.SuggestionType paramSuggestionType, EnumSet<SearchDisplayFeatures> paramEnumSet)
  {
    return a(paramContext, paramList, paramString1, paramString2, paramBoolean, paramBusinessContributionType, paramEnumSet, paramSuggestionType, null);
  }
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, boolean paramBoolean1, BusinessContributionType paramBusinessContributionType, SuggestionFilter.SuggestionType paramSuggestionType, boolean paramBoolean2)
  {
    paramContext = a(paramContext, paramList, paramString1, paramString2, paramBoolean1, paramBusinessContributionType, paramSuggestionType, EnumSet.allOf(SearchDisplayFeatures.class));
    paramContext.putExtra("extra.focus_on_location_box", paramBoolean2);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, boolean paramBoolean, BusinessContributionType paramBusinessContributionType, EnumSet<SearchDisplayFeatures> paramEnumSet, SuggestionFilter.SuggestionType paramSuggestionType, IriSource paramIriSource)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, SearchOverlay.class);
    localIntent.addFlags(536870912);
    localIntent.addFlags(67108864);
    localIntent.putStringArrayListExtra("extra.locations_keyword", new ArrayList(paramList));
    localIntent.putExtra("extra.search_text", paramString1);
    localIntent.putExtra("extra.location", paramString2);
    localIntent.putExtra("extra.kickoff_search", paramBoolean);
    if (!paramBoolean) {
      localIntent.putExtra("extra.contribution.type", paramBusinessContributionType);
    }
    localIntent.putExtra("extra.display_features", paramEnumSet);
    localIntent.putExtra("extra.suggestion.type", paramSuggestionType);
    localIntent.putExtra("extra.source", paramIriSource);
    return localIntent;
  }
  
  public static void a(Intent paramIntent, Uri paramUri)
  {
    paramIntent.putExtra("extra.contribution", paramUri);
  }
  
  private void a(CharSequence paramCharSequence)
  {
    String str = getResources().getString(2131165745);
    if ((!TextUtils.isEmpty(paramCharSequence)) && (!TextUtils.equals(paramCharSequence, str))) {
      p.filter(paramCharSequence);
    }
  }
  
  private void a(String paramString)
  {
    a(g.getText().toString(), d(), paramString);
  }
  
  private void a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1.startsWith("yelp sucks"))
    {
      as.a("The club can't even handle me right now.", 0);
      getHandler().postDelayed(new Runnable()
      {
        public void run()
        {
          throw new RuntimeException();
        }
      }, 1000L);
    }
    do
    {
      return;
      getIntent().putExtra("extra.search_text", paramString1);
      getIntent().putExtra("extra.location", paramString2);
      getIntent().putExtra("extra.search.launch_method", paramString3);
      setResult(-1, getIntent());
      finish();
      overridePendingTransition(2130968599, 2130968600);
      Intent localIntent = new Intent("com.yelp.android.search");
      localIntent.putExtra("extra.search_text", paramString1);
      localIntent.putExtra("extra.location", paramString2);
      localIntent.setPackage(getPackageName());
      sendBroadcast(localIntent);
    } while ((t != SuggestionFilter.SuggestionType.SEARCH) || (!getIntent().getBooleanExtra("extra.kickoff_search", false)));
    d.a(getIntent(), this, paramString3);
  }
  
  private String d()
  {
    String str2 = h.getText().toString();
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = h.getHint().toString();
    }
    return str1;
  }
  
  private void e()
  {
    Intent localIntent = new Intent("com.yelp.android.search_text_changed");
    localIntent.putExtra("extra.search_text", g.getText().toString());
    localIntent.putExtra("extra.location", h.getText().toString());
    sendBroadcast(localIntent);
  }
  
  public void a()
  {
    Object localObject = AppData.b().i();
    r = new ArrayList(((g)localObject).b().b());
    n = new aj();
    l = new b();
    k = new a(r);
    n.a(2131166481, aj.c.a(k).b());
    n.a(2131166422, aj.c.a(l).b());
    t = ((SuggestionFilter.SuggestionType)getIntent().getSerializableExtra("extra.suggestion.type"));
    o = new af(r, new ArrayList(), new ArrayList(), true, t, new SuggestionFilter.b()
    {
      public void a()
      {
        SearchOverlay.f(SearchOverlay.this).notifyDataSetInvalidated();
        SearchOverlay.g(SearchOverlay.this);
      }
      
      public void a(List<RichSearchSuggestion> paramAnonymousList)
      {
        if (!TextUtils.isEmpty(SearchOverlay.a(SearchOverlay.this).getText().toString())) {
          SearchOverlay.d(SearchOverlay.this).clear();
        }
        for (;;)
        {
          SearchOverlay.f(SearchOverlay.this).a(paramAnonymousList);
          SearchOverlay.d(SearchOverlay.this).notifyDataSetChanged();
          SearchOverlay.g(SearchOverlay.this);
          return;
          SearchOverlay.d(SearchOverlay.this).a(SearchOverlay.e(SearchOverlay.this));
        }
      }
    });
    localObject = new ArrayList(((g)localObject).c().b());
    Collections.reverse((List)localObject);
    q = new ArrayList();
    q.addAll(getIntent().getStringArrayListExtra("extra.locations_keyword"));
    m = new c();
    m.a(new ArrayList(l()), true);
    p = new y((List)localObject, (ArrayList)localObject, q, true, t, new SuggestionFilter.b()
    {
      public void a()
      {
        SearchOverlay.h(SearchOverlay.this).notifyDataSetInvalidated();
        SearchOverlay.g(SearchOverlay.this);
      }
      
      public void a(List<CharSequence> paramAnonymousList)
      {
        SearchOverlay.h(SearchOverlay.this).a(paramAnonymousList);
        SearchOverlay.g(SearchOverlay.this);
      }
    });
    a(h.getText().toString());
    localObject = (BusinessContributionType)getIntent().getSerializableExtra("extra.contribution.type");
    if ((localObject != null) && (((BusinessContributionType)localObject).isMedia()))
    {
      o.a(IriSource.AddPhotoPage);
      p.a(IriSource.AddPhotoPage);
    }
    do
    {
      return;
      if (localObject == BusinessContributionType.REVIEW)
      {
        o.a(IriSource.AddReviewPage);
        p.a(IriSource.AddReviewPage);
        return;
      }
    } while (localObject != BusinessContributionType.CHECK_IN);
    o.a(IriSource.CheckInPage);
    p.a(IriSource.CheckInPage);
  }
  
  public void a(eo parameo, String paramString)
  {
    startActivity(SearchBusinessesByList.a(this, parameo.a(), s, paramString));
  }
  
  public void b()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("extra.search_text", g.getText().toString());
    localIntent.putExtra("extra.location", h.getText().toString());
    setResult(0, localIntent);
    super.onBackPressed();
    overridePendingTransition(2130968599, 2130968600);
  }
  
  public Context c()
  {
    return this;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SearchOverlay;
  }
  
  public List<String> l()
  {
    String str = getResources().getString(2131165745);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str);
    return localArrayList;
  }
  
  public double[] n()
  {
    return null;
  }
  
  public int o()
  {
    return 1000;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1041) && (paramInt2 == -1))
    {
      setResult(2);
      finish();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    b();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    overridePendingTransition(2130968599, 2130968600);
    setContentView(2130903122);
    findViewById(2131690307).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        b();
      }
    });
    s = ((IriSource)getIntent().getSerializableExtra("extra.source"));
    i = ((ListView)findViewById(2131690894));
    i.setOnItemClickListener(e);
    i.setOverScrollMode(2);
    g = ((EditText)findViewById(2131690893));
    h = ((EditText)findViewById(2131690895));
    ((ImageView)findViewById(2131690086)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (!SearchOverlay.a(SearchOverlay.this).getText().toString().matches("")) {
          SearchOverlay.a(SearchOverlay.this).setText("");
        }
      }
    });
    if (paramBundle == null)
    {
      g.setText(getIntent().getStringExtra("extra.search_text"));
      h.setText(getIntent().getStringExtra("extra.location"));
      paramBundle = (EnumSet)getIntent().getExtras().get("extra.display_features");
      if ((paramBundle == null) || (!paramBundle.contains(SearchDisplayFeatures.NAME))) {
        break label413;
      }
      g.setOnFocusChangeListener(a);
      g.addTextChangedListener(d);
      g.setOnEditorActionListener(b);
      label237:
      if ((paramBundle == null) || (!paramBundle.contains(SearchDisplayFeatures.LOCATION))) {
        break label425;
      }
      h.setOnFocusChangeListener(a);
      h.addTextChangedListener(d);
      h.setOnEditorActionListener(b);
      h.setOnKeyListener(new View.OnKeyListener()
      {
        public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (SearchOverlay.c(SearchOverlay.this).contains(SearchOverlay.b(SearchOverlay.this).getText().toString()))
          {
            SearchOverlay.b(SearchOverlay.this).setHint("");
            SearchOverlay.b(SearchOverlay.this).setText("");
          }
          return false;
        }
      });
      label299:
      findViewById(2131689666).setOnClickListener(c);
      a();
      if (!getIntent().getBooleanExtra("extra.focus_on_location_box", false)) {
        break label437;
      }
      h.requestFocus();
    }
    for (;;)
    {
      g.postDelayed(new Runnable()
      {
        public void run()
        {
          ((InputMethodManager)getSystemService("input_method")).showSoftInput(SearchOverlay.a(SearchOverlay.this), 0);
        }
      }, 100L);
      paramBundle = (PlatformSearchDialogFragment)getSupportFragmentManager().a("PLATFORM_DIALOG");
      if (paramBundle != null) {
        paramBundle.a(v);
      }
      return;
      g.setText(paramBundle.getString("extra.search_text"));
      h.setText(paramBundle.getString("extra.location"));
      break;
      label413:
      g.setVisibility(8);
      break label237;
      label425:
      h.setVisibility(8);
      break label299;
      label437:
      g.requestFocus();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("extra.search_text", g.getText().toString());
    paramBundle.putString("extra.location", h.getText().toString());
  }
  
  public boolean onSearchRequested()
  {
    a(g.getText().toString(), d(), null);
    return super.onSearchRequested();
  }
  
  public static class OverlayTermsBroadcastReceiver
    extends BasicBroadcastReceiver
  {
    private final CharSequence a;
    private final CharSequence b;
    private final SearchOverlay.OverlayTermsBroadcastReceiver.a c;
    private CharSequence d;
    private CharSequence e;
    
    public OverlayTermsBroadcastReceiver(SearchOverlay.OverlayTermsBroadcastReceiver.a parama, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
    {
      super();
      e = paramCharSequence1;
      a = paramCharSequence1;
      d = paramCharSequence2;
      b = paramCharSequence2;
      c = parama;
    }
    
    public CharSequence a()
    {
      return d;
    }
    
    public CharSequence b()
    {
      return e;
    }
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      e = paramIntent.getCharSequenceExtra("extra.search_text");
      d = paramIntent.getCharSequenceExtra("extra.location");
      c.a();
    }
  }
  
  public static enum SearchDisplayFeatures
  {
    LOCATION,  NAME;
    
    private SearchDisplayFeatures() {}
  }
  
  private class a
    extends AsyncTask<String, Void, Location>
  {
    private final Geocoder b;
    
    public a(Geocoder paramGeocoder)
    {
      b = paramGeocoder;
    }
    
    protected Location a(String... paramVarArgs)
    {
      if ((paramVarArgs != null) && (paramVarArgs.length != 0)) {
        try
        {
          paramVarArgs = b.getFromLocationName(paramVarArgs[0], 1);
          if ((paramVarArgs != null) && (paramVarArgs.size() > 0))
          {
            paramVarArgs = (Address)paramVarArgs.get(0);
            if (paramVarArgs != null)
            {
              Location localLocation = new Location("Geocoder");
              localLocation.setLatitude(paramVarArgs.getLatitude());
              localLocation.setLongitude(paramVarArgs.getLongitude());
              return localLocation;
            }
          }
        }
        catch (IOException paramVarArgs)
        {
          YelpLog.w("SearchOverlay", "The network is unavailable for Geocoder.");
        }
      }
      return null;
    }
    
    protected void a(Location paramLocation)
    {
      if (paramLocation != null)
      {
        SearchOverlay.l(SearchOverlay.this).a(paramLocation);
        if (SearchOverlay.a(SearchOverlay.this) != null) {
          SearchOverlay.l(SearchOverlay.this).filter(SearchOverlay.a(SearchOverlay.this).getText().toString());
        }
      }
      if (SearchOverlay.a(SearchOverlay.this) != null)
      {
        SearchOverlay.l(SearchOverlay.this).a(SearchOverlay.b(SearchOverlay.this).getText().toString());
        SearchOverlay.l(SearchOverlay.this).filter(SearchOverlay.a(SearchOverlay.this).getText().toString());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */