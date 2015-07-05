package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.location.Address;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ag;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.AlternateBusinessNames;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

public class EditBusiness
  extends ChangeBusinessAttributes
{
  private CheckBox q;
  private ag r;
  private final m<YelpBusinessAddresses> s = new r(this);
  
  public static final Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, EditBusiness.class);
    paramContext.putExtra("BUSINESS", paramYelpBusiness);
    return paramContext;
  }
  
  private void f()
  {
    enableLoading();
    r = new ag(n.getId(), s);
    r.execute(new Void[0]);
  }
  
  protected int a()
  {
    return 2130903082;
  }
  
  protected Intent a(YelpBusiness paramYelpBusiness)
  {
    paramYelpBusiness = ActivityBusinessPage.b(this, n);
    paramYelpBusiness.addFlags(67108864);
    paramYelpBusiness.addFlags(536870912);
    return paramYelpBusiness;
  }
  
  protected Intent a(CharSequence paramCharSequence, Uri paramUri)
  {
    paramCharSequence = EditOpenHours.a(this, paramCharSequence, paramUri);
    EditOpenHours.a(paramCharSequence, TextUtils.join("\n", n.getLocalizedHours()));
    return paramCharSequence;
  }
  
  protected b a(Map<String, Object> paramMap, YelpBusiness paramYelpBusiness)
  {
    return EventIri.BusinessUpdateSuccess;
  }
  
  protected com.yelp.android.appdata.webrequests.w a(m<Pair<String, YelpBusiness>> paramm)
  {
    Uri localUri = i.getAttachment();
    if (localUri != null) {
      return new co(n, q.isChecked(), localUri.getPath());
    }
    return new com.yelp.android.appdata.webrequests.ah(paramm, n, q.isChecked());
  }
  
  protected boolean b()
  {
    return (a) || ((q != null) && (q.isChecked()));
  }
  
  protected b c()
  {
    return EventIri.BusinessUpdateCancelled;
  }
  
  protected b d()
  {
    return EventIri.BusinessUpdateFail;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessUpdate;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.singletonMap("id", n.getId());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    n = ((YelpBusiness)getIntent().getParcelableExtra("BUSINESS"));
    if (p == null) {
      f();
    }
    paramBundle = n.getAlternateNames();
    String str = n.getCountry();
    c = n.getName();
    if ((paramBundle != null) && (!TextUtils.isEmpty(str)))
    {
      if (LocaleSettings.a(str))
      {
        d = paramBundle.getPrimary();
        e = paramBundle.getSecondary();
        f = paramBundle.getRomanized();
      }
    }
    else
    {
      paramBundle = e();
      b.a(paramBundle, paramBundle);
      paramBundle = n.getAddress();
      g.a(f.a("\n", paramBundle), new Address[] { paramBundle, null, null });
      h.a(StringUtils.a(", ", n.getCategories(), new com.yelp.android.serializable.w()), new ArrayList(n.getCategories()));
      if (!TextUtils.isEmpty(n.getMenuUrl())) {
        break label364;
      }
      a(n.getCategories());
    }
    for (;;)
    {
      j.a(n.getLocalizedPhone(), n.getLocalizedPhone());
      k.a(n.getBestUrl(), n.getBestUrl());
      i.a(TextUtils.join("\n", n.getLocalizedHours()), "");
      a = false;
      q = ((CheckBox)findViewById(2131493166));
      findViewById(2131493165).setOnClickListener(new p(this));
      q.setOnCheckedChangeListener(new q(this));
      return;
      if (!LocaleSettings.c(str)) {
        break;
      }
      e = paramBundle.getPrimary();
      break;
      label364:
      l.a(n.getMenuUrl(), n.getMenuUrl());
      ((View)l).setVisibility(0);
    }
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu.findItem(2131494141).setTitle(2131166617);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */