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
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.t;
import com.yelp.android.appdata.webrequests.y;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Category.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.dialogs.FlagsDialog;
import com.yelp.android.ui.dialogs.FlagsDialog.a;
import com.yelp.android.ui.dialogs.FlagsDialog.a.a;
import com.yelp.android.ui.dialogs.FlagsDialog.b;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;

public class AddBusiness
  extends ChangeBusinessAttributes
  implements ApiRequest.b<Pair<String, YelpBusiness>>, c.a<Category>
{
  private FlagsDialog A;
  private ImageButton B;
  private Locale C;
  private b D;
  private final FlagsDialog.b E = new FlagsDialog.b()
  {
    public void a(FlagsDialog.a.a paramAnonymousa)
    {
      p = paramAnonymousa.b().getCountry();
      AddBusiness.a(AddBusiness.this, paramAnonymousa);
    }
  };
  private final b.a F = new b.a()
  {
    public void a()
    {
      disableLoading();
      AddBusiness.a(AddBusiness.this, p);
    }
    
    public void a(String paramAnonymousString)
    {
      disableLoading();
      if (LocaleSettings.a.contains(paramAnonymousString)) {
        p = paramAnonymousString;
      }
      AddBusiness.a(AddBusiness.this, p);
    }
  };
  
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
  
  private void a(FlagsDialog.a.a parama)
  {
    B.setImageResource(parama.a());
    if (C != parama.b())
    {
      C = parama.b();
      a(C.getCountry());
    }
    a(2131689683, parama.b().getDisplayCountry(parama.b()));
  }
  
  private void b(String paramString)
  {
    Iterator localIterator = FlagsDialog.a.b().iterator();
    while (localIterator.hasNext())
    {
      FlagsDialog.a.a locala = (FlagsDialog.a.a)localIterator.next();
      if (TextUtils.equals(locala.b().getCountry(), paramString)) {
        a(locala);
      }
    }
  }
  
  private void i()
  {
    if (getIntent().hasExtra("country"))
    {
      p = getIntent().getStringExtra("country");
      b(p);
      return;
    }
    p = AppData.b().g().h().getCountry();
    D = new b(this, AppData.b().r(), F);
    enableLoading();
    D.execute(new Void[0]);
  }
  
  protected int a()
  {
    return 2130903067;
  }
  
  protected Intent a(YelpBusiness paramYelpBusiness)
  {
    return ActivityBusinessPage.b(this, n);
  }
  
  protected Intent a(CharSequence paramCharSequence, Uri paramUri)
  {
    return EditOpenHours.a(this, paramCharSequence, paramUri);
  }
  
  protected a a(Map<String, Object> paramMap, YelpBusiness paramYelpBusiness)
  {
    paramMap.put("is_default_business_category_code", String.valueOf(TextUtils.equals(paramYelpBusiness.aw(), getResourcesgetConfigurationlocale.getCountry())));
    paramMap.put("business_country_code", paramYelpBusiness.aw());
    return EventIri.BusinessAddSuccess;
  }
  
  protected y a(ApiRequest.b<Pair<String, YelpBusiness>> paramb)
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
      return new t(paramb, str, localAddress, bool);
      bool = false;
    }
  }
  
  protected boolean b()
  {
    if ((h.getParcelableArrayListData() != null) && (h.getParcelableArrayListData().size() > 0)) {}
    for (int i = 1; (g.getParcelableArrayData() != null) && ((!TextUtils.isEmpty(c)) || ((!TextUtils.isEmpty(e)) && (AppData.b().g().j()))) && (i != 0); i = 0) {
      return true;
    }
    return false;
  }
  
  protected a c()
  {
    return EventIri.BusinessAddCancel;
  }
  
  protected a d()
  {
    return EventIri.BusinessAddFail;
  }
  
  protected void e()
  {
    super.e();
    b(p);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessAdd;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return Collections.emptyMap();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    x = false;
    n = new YelpBusiness();
    n.a(6.0D);
    super.onCreate(paramBundle);
    paramBundle = getIntent().getParcelableArrayListExtra("categories");
    if ((paramBundle != null) && (!paramBundle.isEmpty())) {
      h.a(StringUtils.a(", ", paramBundle, new Category.b()), paramBundle);
    }
    B = ((ImageButton)findViewById(2131689682));
    if (B != null)
    {
      C = AppData.b().g().h();
      findViewById(2131689681).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (AddBusiness.a(AddBusiness.this) == null)
          {
            AddBusiness.a(AddBusiness.this, FlagsDialog.a(AddBusiness.b(AddBusiness.this)));
            AddBusiness.a(AddBusiness.this).a(AddBusiness.c(AddBusiness.this));
          }
          AddBusiness.a(AddBusiness.this).show(getSupportFragmentManager(), "flags_dialog");
        }
      });
    }
    i();
  }
  
  protected void onPause()
  {
    super.onPause();
    if (D != null)
    {
      disableLoading();
      D.cancel(true);
    }
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.findItem(2131691015).setTitle(2131165432);
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.AddBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */