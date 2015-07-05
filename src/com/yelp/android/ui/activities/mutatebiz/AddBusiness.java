package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Address;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.u;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class AddBusiness
  extends ChangeBusinessAttributes
  implements m<Pair<String, YelpBusiness>>, af<Category>
{
  public static Intent a(Context paramContext, List<Category> paramList)
  {
    paramContext = new Intent(paramContext, AddBusiness.class);
    if ((paramList != null) && (!paramList.isEmpty())) {
      paramContext.putExtra("categories", new ArrayList(paramList));
    }
    return paramContext;
  }
  
  public static Intent a(Context paramContext, List<Category> paramList, String paramString)
  {
    paramContext = a(paramContext, paramList);
    if (paramString != null) {
      paramContext.putExtra("country", paramString);
    }
    return paramContext;
  }
  
  protected int a()
  {
    return 2130903063;
  }
  
  protected Intent a(YelpBusiness paramYelpBusiness)
  {
    return ActivityBusinessPage.b(this, n);
  }
  
  protected Intent a(CharSequence paramCharSequence, Uri paramUri)
  {
    return EditOpenHours.a(this, paramCharSequence, paramUri);
  }
  
  protected b a(Map<String, Object> paramMap, YelpBusiness paramYelpBusiness)
  {
    paramMap.put("is_default_business_category_code", String.valueOf(TextUtils.equals(paramYelpBusiness.getCountry(), getResourcesgetConfigurationlocale.getCountry())));
    paramMap.put("business_country_code", paramYelpBusiness.getCountry());
    return EventIri.BusinessAddSuccess;
  }
  
  protected com.yelp.android.appdata.webrequests.w a(m<Pair<String, YelpBusiness>> paramm)
  {
    boolean bool = true;
    Parcelable[] arrayOfParcelable = g.getParcelableArrayData();
    if ((TextUtils.isEmpty(c)) && (!TextUtils.isEmpty(e)) && (AppData.b().g().j())) {
      c = e;
    }
    String str = c;
    Address localAddress = (Address)arrayOfParcelable[0];
    if (arrayOfParcelable[1] != null) {}
    for (;;)
    {
      return new u(paramm, str, localAddress, bool);
      bool = false;
    }
  }
  
  protected boolean b()
  {
    return (g.getParcelableArrayData() != null) && ((!TextUtils.isEmpty(c)) || ((!TextUtils.isEmpty(e)) && (AppData.b().g().j())));
  }
  
  protected b c()
  {
    return EventIri.BusinessAddCancel;
  }
  
  protected b d()
  {
    return EventIri.BusinessAddFail;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessAdd;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.emptyMap();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1017) && (paramInt2 == 0) && (!b()))
    {
      finish();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getParcelableArrayListExtra("categories");
    String str = getIntent().getStringExtra("country");
    if ((paramBundle != null) && (!paramBundle.isEmpty())) {
      h.a(StringUtils.a(", ", paramBundle, new com.yelp.android.serializable.w()), paramBundle);
    }
    if (!b()) {
      startActivityForResult(EditName.a(this, str), 1017);
    }
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.findItem(2131494141).setTitle(2131165309);
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.AddBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */