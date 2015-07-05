package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.BusinessRepresentative;
import com.yelp.android.serializable.BusinessRepresentative.Role;
import com.yelp.android.serializable.FromThisBusiness;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.mutatebiz.EditBusiness;
import com.yelp.android.ui.panels.businesspage.f;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.h;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.Map;

public class ActivityMoreInfoPage
  extends YelpListActivity
{
  private YelpBusiness a;
  private bs b;
  private boolean c;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivityMoreInfoPage.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    paramContext.putExtra("show biz info", paramBoolean);
    return paramContext;
  }
  
  private void a(int paramInt, String paramString1, String paramString2, CharSequence paramCharSequence)
  {
    View localView = getLayoutInflater().inflate(2130903131, q(), false);
    ((TextView)localView.findViewById(2131493340)).setText(paramString1);
    paramString1 = getLayoutInflater().inflate(2130903132, q(), false);
    ((TextView)paramString1.findViewById(2131493343)).setText(paramCharSequence);
    if (!TextUtils.isEmpty(paramString2))
    {
      paramCharSequence = (WebImageView)paramString1.findViewById(2131493342);
      paramCharSequence.setImageUrl(paramString2);
      paramCharSequence.setVisibility(0);
    }
    b.a(paramInt, new h(new View[] { localView, paramString1 }));
  }
  
  private void c()
  {
    ScrollToLoadListView localScrollToLoadListView = q();
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772046, 2130772047 });
    localScrollToLoadListView.setPadding(localTypedArray.getDimensionPixelSize(0, 0), 0, localTypedArray.getDimensionPixelSize(1, 0), 0);
    localScrollToLoadListView.setScrollBarStyle(33554432);
    localScrollToLoadListView.addFooterView(getLayoutInflater().inflate(2130903240, q(), false));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessMoreInfo;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return g.b(a.getId());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = q();
    paramBundle.f();
    Object localObject = getIntent();
    a = ((YelpBusiness)((Intent)localObject).getParcelableExtra("extra.business"));
    c = ((Intent)localObject).getBooleanExtra("show biz info", true);
    setTitle(a.getDisplayName());
    c();
    b = new bs();
    paramBundle.setAdapter(b);
    if (c)
    {
      paramBundle = new f(this, a);
      b.a(2131166105, new h(new View[] { paramBundle }));
    }
    paramBundle = a.getFromThisBusiness();
    if (paramBundle == null) {}
    do
    {
      return;
      localObject = paramBundle.getSpecialties();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        a(2131166606, getString(2131166606), null, (CharSequence)localObject);
      }
      localObject = paramBundle.getHistory();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
        localSpannableStringBuilder.append(getString(2131165780, new Object[] { Integer.valueOf(paramBundle.getYearEstablished()) }));
        localSpannableStringBuilder.setSpan(new StyleSpan(2), 0, localSpannableStringBuilder.length(), 17);
        localSpannableStringBuilder.append("\n\n");
        localSpannableStringBuilder.append((CharSequence)localObject);
        a(2131165919, getString(2131165919), null, localSpannableStringBuilder);
      }
      localObject = paramBundle.getRepresentative();
    } while ((localObject == null) || (TextUtils.isEmpty(((BusinessRepresentative)localObject).getBio())));
    paramBundle = ((BusinessRepresentative)localObject).getPhoto();
    if (paramBundle == null) {}
    for (paramBundle = null;; paramBundle = paramBundle.getThumbnailUrl())
    {
      int i = 2131166072;
      if (((BusinessRepresentative)localObject).getRole() == BusinessRepresentative.Role.BUSINESS_OWNER) {
        i = 2131166071;
      }
      a(i, getString(i, new Object[] { ((BusinessRepresentative)localObject).getName() }), paramBundle, ((BusinessRepresentative)localObject).getBio());
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755012, paramMenu);
    paramMenu = paramMenu.findItem(2131494129);
    paramMenu.setVisible(c);
    paramMenu.setEnabled(c);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494129)
    {
      AppData.a(EventIri.BusinessMoreInfoUpdate);
      startActivity(EditBusiness.a(this, a));
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