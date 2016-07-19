package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.location.Address;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Html;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ag;
import com.yelp.android.appdata.webrequests.ah;
import com.yelp.android.appdata.webrequests.ce;
import com.yelp.android.appdata.webrequests.y;
import com.yelp.android.serializable.AlternateBusinessNames;
import com.yelp.android.serializable.Category.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.widgets.SpannableWidget;
import com.yelp.android.ui.widgets.YelpToggleButton;
import com.yelp.android.util.BizClaimUtil;
import com.yelp.android.util.BizClaimUtil.SourceButton;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class EditBusiness
  extends ChangeBusinessAttributes
{
  private boolean A;
  private YelpToggleButton B;
  private YelpToggleButton C;
  private ag D;
  private final ApiRequest.b<YelpBusinessAddresses> E = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpBusinessAddresses paramAnonymousYelpBusinessAddresses)
    {
      t = paramAnonymousYelpBusinessAddresses;
      paramAnonymousApiRequest = a(n.f(), t);
      g.a(paramAnonymousApiRequest, new Parcelable[] { n.f(), t });
      disableLoading();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      findViewById(2131689680).setVisibility(8);
      populateError(paramAnonymousYelpException);
    }
  };
  
  public static final Intent a(Context paramContext, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, EditBusiness.class);
    paramContext.putExtra("BUSINESS", paramYelpBusiness);
    paramContext.putExtra("BUSINESS_IS_CLAIMABLE", paramBoolean);
    return paramContext;
  }
  
  private void i()
  {
    enableLoading();
    D = new ag(n.aD(), E);
    D.f(new Void[0]);
  }
  
  protected int a()
  {
    return 2130903092;
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
    EditOpenHours.a(paramCharSequence, TextUtils.join("\n", n.aQ()));
    return paramCharSequence;
  }
  
  protected com.yelp.android.analytics.iris.a a(Map<String, Object> paramMap, YelpBusiness paramYelpBusiness)
  {
    return EventIri.BusinessUpdateSuccess;
  }
  
  protected y a(ApiRequest.b<Pair<String, YelpBusiness>> paramb)
  {
    Uri localUri = i.getAttachment();
    if (localUri != null) {
      return new ce(n, C.isChecked(), localUri.getPath(), B.isChecked());
    }
    return new ah(paramb, n, C.isChecked(), B.isChecked());
  }
  
  protected boolean b()
  {
    return (a) || ((C != null) && (C.isChecked())) || ((B != null) && (B.isChecked()));
  }
  
  protected com.yelp.android.analytics.iris.a c()
  {
    return EventIri.BusinessUpdateCancelled;
  }
  
  protected com.yelp.android.analytics.iris.a d()
  {
    return EventIri.BusinessUpdateFail;
  }
  
  protected void e()
  {
    super.e();
    a(p);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessUpdate;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return Collections.singletonMap("id", n.aD());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    x = true;
    n = ((YelpBusiness)getIntent().getParcelableExtra("BUSINESS"));
    A = getIntent().getBooleanExtra("BUSINESS_IS_CLAIMABLE", true);
    super.onCreate(paramBundle);
    if (t == null) {
      i();
    }
    paramBundle = n.be();
    c = n.aq();
    p = n.aw();
    if (q == null) {
      a(p);
    }
    if ((paramBundle != null) && (!TextUtils.isEmpty(p)))
    {
      if (LocaleSettings.a(p))
      {
        d = paramBundle.d();
        e = paramBundle.c();
        f = paramBundle.b();
      }
    }
    else
    {
      paramBundle = h();
      b.a(paramBundle, paramBundle);
      paramBundle = n.f();
      g.a(a.a("\n", paramBundle), new Address[] { paramBundle, null, null });
      h.a(StringUtils.a(", ", n.aV(), new Category.b()), new ArrayList(n.aV()));
      if (!TextUtils.isEmpty(n.aj())) {
        break label565;
      }
      a(n.aV());
    }
    for (;;)
    {
      j.a(n.as(), n.as());
      k.a(n.y(), n.y());
      i.a(TextUtils.join("\n", n.aQ()), "");
      a = false;
      C = ((YelpToggleButton)findViewById(2131689836));
      findViewById(2131689835).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          EditBusiness.a(EditBusiness.this).performClick();
        }
      });
      C.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          int j = 8;
          paramAnonymousCompoundButton = findViewById(2131689841);
          if (paramAnonymousBoolean)
          {
            i = 8;
            paramAnonymousCompoundButton.setVisibility(i);
            paramAnonymousCompoundButton = findViewById(2131689838);
            if (!paramAnonymousBoolean) {
              break label79;
            }
          }
          label79:
          for (int i = j;; i = 0)
          {
            paramAnonymousCompoundButton.setVisibility(i);
            ((SpannableWidget)findViewById(2131689835)).setRight(paramAnonymousBoolean);
            updateOptionsMenu();
            return;
            i = 0;
            break;
          }
        }
      });
      B = ((YelpToggleButton)findViewById(2131689839));
      findViewById(2131689838).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          EditBusiness.b(EditBusiness.this).performClick();
        }
      });
      B.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          updateOptionsMenu();
        }
      });
      paramBundle = findViewById(2131690097);
      if (!A) {
        break label609;
      }
      HashMap localHashMap = new HashMap();
      localHashMap.put("business_id", n.aD());
      localHashMap.put("prominent_claim_button_edit_bizpage", ((TwoBucketExperiment.Cohort)e.p.b()).name());
      AppData.a(EventIri.EditBizpagePopupClaim, localHashMap);
      if (!e.p.a(TwoBucketExperiment.Cohort.enabled)) {
        break label602;
      }
      paramBundle = (TextView)findViewById(2131690098);
      paramBundle.setText(Html.fromHtml(getString(2131165644)));
      paramBundle.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          BizClaimUtil.a(EditBusiness.this, n, BizClaimUtil.SourceButton.EDIT_BIZPAGE_TOP_TEASER);
        }
      });
      return;
      e = paramBundle.d();
      break;
      label565:
      l.a(n.aj(), n.aj());
      ((View)l).setVisibility(0);
    }
    label602:
    paramBundle.setVisibility(8);
    return;
    label609:
    paramBundle.setVisibility(8);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu.findItem(2131691015).setTitle(2131166630);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */