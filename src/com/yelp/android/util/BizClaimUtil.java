package com.yelp.android.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.g.a;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Map;

public class BizClaimUtil
{
  private static String a(YelpBusiness paramYelpBusiness)
  {
    if ((paramYelpBusiness.N() == 0) && (paramYelpBusiness.I() == 0)) {
      return "no_reviews_no_photos";
    }
    if (paramYelpBusiness.N() == 0) {
      return "with_photos_but_no_reviews";
    }
    if (paramYelpBusiness.I() == 0) {
      return "with_reviews_but_no_photos";
    }
    return "with_reviews_and_photos";
  }
  
  public static void a(Context paramContext)
  {
    Uri.Builder localBuilder = Uri.parse(paramContext.getString(2131165449)).buildUpon();
    localBuilder.appendQueryParameter("utm_source", "app_android");
    localBuilder.appendQueryParameter("utm_medium", "consumer_app");
    localBuilder.appendQueryParameter("utm_content", "add_business_as_owner");
    localBuilder.appendQueryParameter("utm_campaign", "add_business");
    localBuilder.appendQueryParameter("ybt_experiment", "claim_popup_add_business_biz_search_page_experiment");
    localBuilder.appendQueryParameter("ybt_experiment_cohort", ((TwoBucketExperiment.Cohort)e.r.b()).name());
    localBuilder.appendQueryParameter("ybt_property", "consumer_app");
    localBuilder.appendQueryParameter("ybt_device_os", "android");
    localBuilder.appendQueryParameter("ybt_page", "business_search_page");
    localBuilder.appendQueryParameter("ybt_target", "popup");
    paramContext.startActivity(new Intent("android.intent.action.VIEW", localBuilder.build()));
  }
  
  public static void a(Context paramContext, YelpBusiness paramYelpBusiness, BizClaimUtil.SourceButton paramSourceButton)
  {
    Object localObject = new a();
    ((Map)localObject).put("id", paramYelpBusiness.aD());
    ((Map)localObject).put("source", paramSourceButton.iriParamSource());
    AppData.a(EventIri.BusinessClaim, (Map)localObject);
    localObject = Uri.parse(paramContext.getString(2131165642, new Object[] { paramYelpBusiness.aD() })).buildUpon();
    ((Uri.Builder)localObject).appendQueryParameter("utm_content", paramSourceButton.utmParamContent());
    String str = paramSourceButton.ybtParamExperimentName(paramYelpBusiness);
    if (str != null)
    {
      ((Uri.Builder)localObject).appendQueryParameter("ybt_experiment", str);
      ((Uri.Builder)localObject).appendQueryParameter("ybt_experiment_cohort", paramSourceButton.ybtParamExperimentCohort(paramYelpBusiness));
    }
    ((Uri.Builder)localObject).appendQueryParameter("ybt_property", "consumer_app");
    ((Uri.Builder)localObject).appendQueryParameter("ybt_device_os", "android");
    ((Uri.Builder)localObject).appendQueryParameter("ybt_page", paramSourceButton.ybtParamPage());
    ((Uri.Builder)localObject).appendQueryParameter("ybt_target", paramSourceButton.ybtParamTarget());
    ((Uri.Builder)localObject).appendQueryParameter("ybt_page_variant", a(paramYelpBusiness));
    paramContext.startActivity(new Intent("android.intent.action.VIEW", ((Uri.Builder)localObject).build()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.BizClaimUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */