package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.serializable.BusinessRepresentative;
import com.yelp.android.serializable.BusinessRepresentative.Role;
import com.yelp.android.serializable.FromThisBusiness;
import com.yelp.android.serializable.LocalizedAttribute;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.mutatebiz.EditBusiness;
import com.yelp.android.ui.panels.businesspage.c;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.BizClaimUtil;
import com.yelp.android.util.BizClaimUtil.SourceButton;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ActivityMoreInfoPage
  extends YelpListActivity
{
  private YelpBusiness a;
  private aj b;
  private boolean c;
  private boolean d;
  private boolean e;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramContext, paramYelpBusiness, paramString1, paramString2, paramBoolean1, paramBoolean2, false);
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    paramContext = new Intent(paramContext, ActivityMoreInfoPage.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    paramContext.putExtra("search_request_id", paramString1);
    paramContext.putExtra("biz_dimension", paramString2);
    paramContext.putExtra("is_biz_claimable", paramBoolean1);
    paramContext.putExtra("biz_attributes", paramBoolean2);
    paramContext.putExtra("disable_edit_biz", paramBoolean3);
    return paramContext;
  }
  
  private void a(int paramInt, String paramString1, String paramString2, CharSequence paramCharSequence)
  {
    View localView = getLayoutInflater().inflate(2130903145, r(), false);
    ((TextView)localView.findViewById(2131690010)).setText(paramCharSequence);
    if (!TextUtils.isEmpty(paramString2))
    {
      paramCharSequence = (WebImageView)localView.findViewById(2131690009);
      paramCharSequence.setImageUrl(paramString2);
      paramCharSequence.setVisibility(0);
    }
    b.a(paramInt, aj.c.a(paramString1, new com.yelp.android.ui.util.e(new View[] { localView })).a(2130772428).b());
  }
  
  private void b()
  {
    ScrollToLoadListView localScrollToLoadListView = r();
    localScrollToLoadListView.setScrollBarStyle(33554432);
    localScrollToLoadListView.setCacheColorHint(getResources().getColor(2131624261));
    localScrollToLoadListView.addFooterView(getLayoutInflater().inflate(2130903276, r(), false));
  }
  
  private void f()
  {
    if (!c) {}
    ArrayList localArrayList;
    do
    {
      return;
      Object localObject = new c(this, a);
      if (((c)localObject).getChildCount() > 0) {
        b.a(1, aj.c.a(getString(2131166167), new com.yelp.android.ui.util.e(new View[] { localObject })).a(2130772428).b());
      }
      localObject = new ArrayList();
      localArrayList = new ArrayList();
      Iterator localIterator = a.aU().iterator();
      while (localIterator.hasNext())
      {
        LocalizedAttribute localLocalizedAttribute = (LocalizedAttribute)localIterator.next();
        if (localLocalizedAttribute.b()) {
          ((List)localObject).add(localLocalizedAttribute);
        } else {
          localArrayList.add(localLocalizedAttribute);
        }
      }
      if (!((List)localObject).isEmpty()) {
        b.a(2, aj.c.a(new com.yelp.android.ui.util.e(new View[] { new com.yelp.android.ui.panels.businesspage.a(this, a, g(), i(), (List)localObject) })).a(2130772428).b());
      }
    } while (localArrayList.isEmpty());
    b.a(3, aj.c.a(new com.yelp.android.ui.util.e(new View[] { new com.yelp.android.ui.panels.businesspage.a(this, a, g(), i(), localArrayList) })).a(2130772428).b());
  }
  
  private String g()
  {
    return getIntent().getStringExtra("search_request_id");
  }
  
  private String i()
  {
    return getIntent().getStringExtra("biz_dimension");
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessMoreInfo;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return g.b(a.aD());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = r();
    paramBundle.f();
    Object localObject = getIntent();
    a = ((YelpBusiness)((Intent)localObject).getParcelableExtra("extra.business"));
    e = ((Intent)localObject).getBooleanExtra("is_biz_claimable", true);
    c = ((Intent)localObject).getBooleanExtra("biz_attributes", true);
    d = ((Intent)localObject).getBooleanExtra("disable_edit_biz", false);
    setTitle(a.z());
    b();
    b = new aj();
    paramBundle.setAdapter(b);
    f();
    if (e)
    {
      paramBundle = new HashMap();
      paramBundle.put("business_id", a.aD());
      paramBundle.put("mobile.prominent_claim_button_more_info_page", ((TwoBucketExperiment.Cohort)com.yelp.android.appdata.experiment.e.q.b()).name());
      AppData.a(EventIri.MoreInfoPageBizClaim, paramBundle);
      if (com.yelp.android.appdata.experiment.e.q.a(TwoBucketExperiment.Cohort.enabled))
      {
        paramBundle = getLayoutInflater().inflate(2130903177, r(), false);
        localObject = (TextView)paramBundle.findViewById(2131690098);
        ((TextView)localObject).setText(Html.fromHtml(getString(2131165645)));
        ((TextView)localObject).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            BizClaimUtil.a(ActivityMoreInfoPage.this, ActivityMoreInfoPage.a(ActivityMoreInfoPage.this), BizClaimUtil.SourceButton.MORE_INFO_PAGE_TEASER);
          }
        });
        b.a(8, aj.c.a("", new com.yelp.android.ui.util.e(new View[] { paramBundle })).a(2130772428).b());
      }
    }
    paramBundle = a.aY();
    if (paramBundle == null) {}
    do
    {
      return;
      localObject = paramBundle.e();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        a(4, getString(2131166621), null, (CharSequence)localObject);
      }
      localObject = paramBundle.d();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
        localSpannableStringBuilder.append(getString(2131165869, new Object[] { Integer.valueOf(paramBundle.b()) }));
        localSpannableStringBuilder.setSpan(new StyleSpan(2), 0, localSpannableStringBuilder.length(), 17);
        localSpannableStringBuilder.append("\n\n");
        localSpannableStringBuilder.append((CharSequence)localObject);
        a(5, getString(2131165993), null, localSpannableStringBuilder);
      }
      localObject = paramBundle.f();
    } while ((localObject == null) || (TextUtils.isEmpty(((BusinessRepresentative)localObject).d())));
    paramBundle = ((BusinessRepresentative)localObject).f();
    if (paramBundle == null) {}
    for (paramBundle = null;; paramBundle = paramBundle.f())
    {
      int j = 2131166134;
      int i = 6;
      if (((BusinessRepresentative)localObject).a() == BusinessRepresentative.Role.BUSINESS_OWNER)
      {
        j = 2131166133;
        i = 7;
      }
      a(i, getString(j, new Object[] { ((BusinessRepresentative)localObject).e() }), paramBundle, ((BusinessRepresentative)localObject).d());
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755014, paramMenu);
    paramMenu = paramMenu.findItem(2131691003);
    paramMenu.setVisible(c);
    if ((c) && (!d)) {}
    for (boolean bool = true;; bool = false)
    {
      paramMenu.setEnabled(bool);
      return true;
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691003)
    {
      AppData.a(EventIri.BusinessMoreInfoUpdate);
      startActivity(EditBusiness.a(this, a, e));
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityMoreInfoPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */