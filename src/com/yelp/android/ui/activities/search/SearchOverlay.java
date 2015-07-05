package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.database.j;
import com.yelp.android.database.l;
import com.yelp.android.database.q;
import com.yelp.android.database.savedsearch.k;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.aw;
import com.yelp.android.ui.util.bj;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.cr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;

public class SearchOverlay
  extends YelpActivity
  implements ay
{
  View.OnFocusChangeListener a = new ar(this);
  TextView.OnEditorActionListener b = new ae(this);
  View.OnClickListener c = new af(this);
  TextWatcher d = new ag(this);
  AdapterView.OnItemClickListener e = new ah(this);
  AdapterView.OnItemClickListener f = new ai(this);
  private EditText g;
  private EditText h;
  private ListView i;
  private as j;
  private a k;
  private z l;
  private ab m;
  private c n;
  private bs o;
  private bj<RichSearchSuggestion> p;
  private aw<CharSequence> q;
  private ArrayList<CharSequence> r;
  private List<k> s;
  private List<CharSequence> t;
  private IriSource u;
  private boolean v;
  private ImageView w;
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, IriSource paramIriSource)
  {
    return a(paramContext, paramList, paramString1, paramString2, true, null, EnumSet.allOf(SearchOverlay.SearchDisplayFeatures.class), paramIriSource);
  }
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, boolean paramBoolean, BusinessContributionType paramBusinessContributionType)
  {
    return a(paramContext, paramList, paramString1, paramString2, paramBoolean, paramBusinessContributionType, EnumSet.allOf(SearchOverlay.SearchDisplayFeatures.class));
  }
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, boolean paramBoolean, BusinessContributionType paramBusinessContributionType, EnumSet<SearchOverlay.SearchDisplayFeatures> paramEnumSet)
  {
    return a(paramContext, paramList, paramString1, paramString2, paramBoolean, paramBusinessContributionType, paramEnumSet, null);
  }
  
  public static Intent a(Context paramContext, List<String> paramList, String paramString1, String paramString2, boolean paramBoolean, BusinessContributionType paramBusinessContributionType, EnumSet<SearchOverlay.SearchDisplayFeatures> paramEnumSet, IriSource paramIriSource)
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
    localIntent.putExtra("extra.source", paramIriSource);
    return localIntent;
  }
  
  private void a(EditText paramEditText, String paramString)
  {
    paramEditText.removeTextChangedListener(d);
    paramEditText.setText(paramString);
    paramEditText.addTextChangedListener(d);
  }
  
  private void a(CharSequence paramCharSequence)
  {
    String str = getResources().getString(2131165670);
    if ((!TextUtils.isEmpty(paramCharSequence)) && (!TextUtils.equals(paramCharSequence, str))) {
      q.filter(paramCharSequence);
    }
  }
  
  private void a(String paramString)
  {
    a(g.getText().toString(), c(), paramString);
  }
  
  private void a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1.startsWith("yelp sucks"))
    {
      cr.a("The club can't even handle me right now.", 0);
      getHandler().postDelayed(new aq(this), 1000L);
    }
    do
    {
      return;
      getIntent().putExtra("extra.search_text", paramString1);
      getIntent().putExtra("extra.location", paramString2);
      getIntent().putExtra("extra.search.launch_method", paramString3);
      setResult(-1, getIntent());
      finish();
      overridePendingTransition(2130968593, 2130968594);
      Intent localIntent = new Intent("com.yelp.android.search");
      localIntent.putExtra("extra.search_text", paramString1);
      localIntent.putExtra("extra.location", paramString2);
      localIntent.setPackage(getPackageName());
      sendBroadcast(localIntent);
    } while ((v) || (!getIntent().getBooleanExtra("extra.kickoff_search", false)));
    SearchUtils.a(getIntent(), this, paramString3);
  }
  
  private String c()
  {
    String str2 = h.getText().toString();
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = h.getHint().toString();
    }
    return str1;
  }
  
  private void d()
  {
    Intent localIntent = new Intent("com.yelp.android.search_text_changed");
    localIntent.putExtra("extra.search_text", g.getText().toString());
    localIntent.putExtra("extra.location", h.getText().toString());
    sendBroadcast(localIntent);
  }
  
  public void a()
  {
    Object localObject = AppData.b().i();
    t = new ArrayList(((q)localObject).c().b());
    o = new bs();
    l = new z();
    n = new c();
    k = new a(t);
    o.a(2131166478, bw.a(k).a());
    o.a(2131166496, bw.a(n).a());
    o.a(2131166395, bw.a(l).a());
    an localan = new an(this);
    boolean bool;
    if (getIntent().getSerializableExtra("extra.contribution.type") != null)
    {
      bool = true;
      v = bool;
      s = new ArrayList();
      ((q)localObject).b().a(localan);
      p = new bj(t, new ArrayList(), new ArrayList(), true, v, new ao(this));
      localObject = new ArrayList(((q)localObject).e().b());
      Collections.reverse((List)localObject);
      r = new ArrayList();
      r.addAll(getIntent().getStringArrayListExtra("extra.locations_keyword"));
      m = new ab();
      m.a(new ArrayList(k()), true);
      q = new aw((List)localObject, (ArrayList)localObject, r, true, v, new ap(this));
      a(h.getText().toString());
      localObject = (BusinessContributionType)getIntent().getSerializableExtra("extra.contribution.type");
      if (localObject != BusinessContributionType.BUSINESS_PHOTO) {
        break label389;
      }
      p.a(IriSource.AddPhotoPage);
      q.a(IriSource.AddPhotoPage);
    }
    label389:
    do
    {
      return;
      bool = false;
      break;
      if (localObject == BusinessContributionType.REVIEW)
      {
        p.a(IriSource.AddReviewPage);
        q.a(IriSource.AddReviewPage);
        return;
      }
    } while (localObject != BusinessContributionType.CHECK_IN);
    p.a(IriSource.CheckInPage);
    q.a(IriSource.CheckInPage);
  }
  
  public void a(fv paramfv, String paramString)
  {
    startActivity(SearchBusinessesByList.a(this, paramfv.a(), u, paramString));
  }
  
  public void b()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("extra.search_text", g.getText().toString());
    localIntent.putExtra("extra.location", h.getText().toString());
    setResult(0, localIntent);
    super.onBackPressed();
    overridePendingTransition(2130968593, 2130968594);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SearchOverlay;
  }
  
  public List<String> k()
  {
    String str = getResources().getString(2131165670);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str);
    return localArrayList;
  }
  
  public Context l()
  {
    return this;
  }
  
  public double[] m()
  {
    return null;
  }
  
  public int n()
  {
    return 1000;
  }
  
  public void onBackPressed()
  {
    b();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    overridePendingTransition(2130968593, 2130968594);
    setContentView(2130903111);
    findViewById(2131494026).setOnClickListener(new ad(this));
    u = ((IriSource)getIntent().getSerializableExtra("extra.source"));
    i = ((ListView)findViewById(2131494023));
    i.setOnItemClickListener(e);
    i.setOverScrollMode(2);
    g = ((EditText)findViewById(2131494022));
    h = ((EditText)findViewById(2131494024));
    ((ImageView)findViewById(2131493402)).setOnClickListener(new ak(this));
    if (paramBundle == null)
    {
      g.setText(getIntent().getStringExtra("extra.search_text"));
      h.setText(getIntent().getStringExtra("extra.location"));
      paramBundle = (EnumSet)getIntent().getExtras().get("extra.display_features");
      if ((paramBundle == null) || (!paramBundle.contains(SearchOverlay.SearchDisplayFeatures.NAME))) {
        break label374;
      }
      g.setOnFocusChangeListener(a);
      g.addTextChangedListener(d);
      g.setOnEditorActionListener(b);
      label237:
      if ((paramBundle == null) || (!paramBundle.contains(SearchOverlay.SearchDisplayFeatures.LOCATION))) {
        break label386;
      }
      h.setOnFocusChangeListener(a);
      h.addTextChangedListener(d);
      h.setOnEditorActionListener(b);
      h.setOnKeyListener(new al(this));
    }
    for (;;)
    {
      findViewById(2131493011).setOnClickListener(c);
      a();
      g.requestFocus();
      g.postDelayed(new am(this), 100L);
      return;
      g.setText(paramBundle.getString("extra.search_text"));
      h.setText(paramBundle.getString("extra.location"));
      break;
      label374:
      g.setVisibility(8);
      break label237;
      label386:
      h.setVisibility(8);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putString("extra.search_text", g.getText().toString());
    paramBundle.putString("extra.location", h.getText().toString());
  }
  
  public boolean onSearchRequested()
  {
    a(g.getText().toString(), c(), null);
    return super.onSearchRequested();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */