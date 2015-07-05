package com.yelp.android.ui.activities;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.ak;
import com.yelp.android.debug.ActivityDebugButtonThemes;
import com.yelp.android.debug.FreezerDebugActivity;
import com.yelp.android.debug.FreezerFragmentDebugActivity;
import com.yelp.android.debug.a;
import com.yelp.android.serializable.GiftRecipient;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.activities.bugreport.ActivityReportABug;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.deals.ActivityDealDetail;
import com.yelp.android.ui.activities.deals.AddGiftRecipient;
import com.yelp.android.ui.activities.deals.PurchaseDealsForm;
import com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery;
import com.yelp.android.ui.activities.messaging.ActivityMessaging;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.weekly.ActivityWeeklyIssue;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"all"})
public class ActivityDebugActivities
  extends YelpListActivity
{
  private ArrayAdapter<String> a;
  private final Class<? extends Activity>[] b = { ActivityChooseFromGallery.class, ActivitySplashLogin.class, ActivityTwitterSignIn.class, ActivitySplashFindFriends.class, cd.class };
  private ArrayList<Intent> c;
  
  static <T> T a(String paramString1, String paramString2, JsonParser<T> paramJsonParser)
  {
    File localFile = a.a(paramString1);
    try
    {
      paramString1 = new FileInputStream(localFile);
      Object localObject = new byte[paramString1.available()];
      while (paramString1.read((byte[])localObject) != -1) {}
      localObject = new JSONObject(new String((byte[])localObject, "UTF-8"));
      paramString1 = (String)localObject;
      if (paramString2 != null) {
        paramString1 = ((JSONObject)localObject).getJSONObject(paramString2);
      }
      paramString1 = paramJsonParser.parse(paramString1);
      return paramString1;
    }
    catch (IOException paramString1)
    {
      Log.e("ActivityDebugActivities", "Error opening mock file: " + localFile.toString(), paramString1);
      return null;
    }
    catch (JSONException paramString1)
    {
      Log.e("ActivityDebugActivities", "Error parsing mock file: " + localFile.toString(), paramString1);
    }
    return null;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < b.length)
    {
      startActivity(new Intent(this, b[paramInt]));
      return;
    }
    startActivity((Intent)c.get(paramInt - b.length));
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setSoftInputMode(32);
    Object localObject1 = Pair.create(ShareRequest.ShareType.FACEBOOK, ApiException.getExceptionForCode(1012, null));
    paramBundle = new ArrayList();
    paramBundle.add(localObject1);
    c = new ArrayList();
    c.add(new Intent(this, ActivityChooseFromGallery.class));
    localObject1 = ActivityReportABug.a(this);
    ((Intent)localObject1).putExtra("intent_name", "ActivityReportABug");
    c.add(localObject1);
    c.add(new Intent(this, FreezerDebugActivity.class));
    c.add(new Intent(this, FreezerFragmentDebugActivity.class));
    localObject1 = ActivityFindFriends.a(this, true, false);
    ((Intent)localObject1).putExtra("intent_name", "ActivityFindFriends (from Sign Up)");
    c.add(localObject1);
    localObject1 = ActivityMessaging.a(this);
    ((Intent)localObject1).putExtra("intent_name", "ActivityMessaging");
    c.add(localObject1);
    localObject1 = ActivityWeeklyIssue.a(this);
    ((Intent)localObject1).putExtra("intent_name", "ActivityWeeklyIssue");
    c.add(localObject1);
    localObject1 = new Intent(this, ActivityDebugButtonThemes.class);
    ((Intent)localObject1).putExtra("intent_name", "Button Theme Examples");
    c.add(localObject1);
    localObject1 = ActivityFullScreenAward.a(this, ActivityFullScreenAward.AwardType.FirstToTip, "Penny's Pizza Parlour");
    ((Intent)localObject1).putExtra("intent_name", "First To Tip Award");
    c.add(localObject1);
    localObject1 = ActivityFullScreenAward.a(this, ActivityFullScreenAward.AwardType.FirstToReview, "Penny's Pizza");
    ((Intent)localObject1).putExtra("intent_name", "First To Review Award");
    c.add(localObject1);
    c.add(AddGiftRecipient.a(this, new GiftRecipient("to", "from", "message", "email")));
    c.add(ActivityRetryCheckInShare.a(this, "dongs", paramBundle));
    paramBundle = (YelpDeal)a("v1--deal+multiple_options.json", "deal", YelpDeal.CREATOR);
    if (paramBundle != null)
    {
      localObject1 = ActivityDealDetail.a(this, paramBundle);
      ((Intent)localObject1).putExtra("intent_name", "DEAL+" + paramBundle.getTitle());
      c.add(localObject1);
    }
    paramBundle = WebViewActivity.getWebIntent(this, Uri.parse("http://m.yelp.com/ui_tests?test_name=webview_events_test"), "test", ViewIri.OpenURL, EnumSet.of(WebViewActivity.Feature.EVENTS));
    paramBundle.putExtra("intent_name", "Webview Events Test Page");
    c.add(paramBundle);
    paramBundle = (YelpDeal)a("v1--objects--deal+default.json", null, YelpDeal.CREATOR);
    if (paramBundle != null) {
      c.add(ActivityDealDetail.a(this, paramBundle));
    }
    if (paramBundle != null) {
      c.add(PurchaseDealsForm.a(this, null, paramBundle, 0));
    }
    paramBundle = new String[15];
    paramBundle[0] = "v1--check_in+check_in-duke.json";
    paramBundle[1] = "v1--check_in+check_in_new_badge_mock.json";
    paramBundle[2] = "v1--check_in+check_in_response_awarded_offer.json";
    paramBundle[3] = "v1--check_in+check_in-response-badge.json";
    paramBundle[4] = "v1--check_in+check_in-response-check_in_offer.json";
    paramBundle[5] = "v1--check_in+check_in-response-check_in_offer_redeem.json";
    paramBundle[6] = "v1--check_in+check_in-response-cio_not_earned.json";
    paramBundle[7] = "v1--check_in+check_in-response-first.json";
    paramBundle[8] = "v1--check_in+check_in-response.json";
    paramBundle[9] = "v1--check_in+check_in-response-newregular.json";
    paramBundle[10] = "v1--check_in+check_in-response-newtopuser.json";
    paramBundle[11] = "v1--check_in+check_in-response-regular.json";
    paramBundle[12] = "v1--check_in+check_in_response_started_offer.json";
    paramBundle[13] = "v1--check_in+check_in-response-topuser.json";
    paramBundle[14] = "v1--check_in+check_in_with_rewards.json";
    int j = paramBundle.length;
    int i = 0;
    Object localObject3;
    for (;;)
    {
      if (i < j)
      {
        localObject1 = paramBundle[i];
        try
        {
          localObject3 = YelpCheckIn.checkInFromJSONResponse(new JSONObject(StringUtils.a(new File("/sdcard/yelp-mocks/" + (String)localObject1))), new ak("", "", null));
          Intent localIntent = ActivityBusinessPage.b(this, ((YelpCheckIn)localObject3).getBusiness());
          BusinessContributionType.CHECK_IN.writeToIntent(localIntent, (Parcelable)localObject3);
          localIntent.putExtra("intent_name", ((String)localObject1).substring(((String)localObject1).lastIndexOf('+')));
          c.add(localIntent);
          i += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            Log.i("CHECKIN", localException.getMessage(), localException);
          }
        }
      }
    }
    paramBundle = (YelpBusiness)a("v1--objects--business+deal_multiple.json", null, YelpBusiness.CREATOR);
    if (paramBundle != null)
    {
      paramBundle = ActivityBusinessPage.b(this, paramBundle);
      paramBundle.putExtra("intent_name", "Business-With-Offer");
      c.add(paramBundle);
    }
    paramBundle = (YelpBusiness)a("v1--objects--business+deal_purchased.json", null, YelpBusiness.CREATOR);
    if (paramBundle != null)
    {
      localObject2 = ActivityBusinessPage.b(this, paramBundle);
      ((Intent)localObject2).putExtra("intent_name", "Business-With-Purchase");
      c.add(localObject2);
    }
    Object localObject2 = (YelpCheckIn)a("v1--objects--check_in+default.json", null, YelpCheckIn.CREATOR);
    if (localObject2 != null)
    {
      localObject2 = CommentOnCheckIn.a(this, (YelpCheckIn)localObject2, false);
      ((Intent)localObject2).putExtra("intent_name", "CommentOnCheckIn");
      c.add(localObject2);
    }
    localObject2 = (YelpDeal)a("v1--objects--deal+default.json", null, YelpDeal.CREATOR);
    if ((localObject2 != null) && (paramBundle != null))
    {
      paramBundle = ActivityBusinessPage.b(this, paramBundle);
      paramBundle.putExtra("extra.deal_purchased", (Parcelable)localObject2);
      paramBundle.putExtra("intent_name", "Simulate Just Purchased a Deal");
      c.add(paramBundle);
    }
    paramBundle = (YelpBusiness)a("v1--deal--purchase+default.json", "business", YelpBusiness.CREATOR);
    if (paramBundle != null)
    {
      paramBundle = ActivityBusinessPage.b(this, paramBundle);
      paramBundle.putExtra("intent_name", "Business_WITH_DEAL");
      c.add(paramBundle);
    }
    c.add(ActivityDealDetail.a(this, "DERP_ID"));
    paramBundle = EnumSet.complementOf(EnumSet.of(RankTitle.Rank.USER)).iterator();
    while (paramBundle.hasNext())
    {
      localObject2 = (RankTitle.Rank)paramBundle.next();
      localObject3 = ActivityRoyal.a(this, (RankTitle.Rank)localObject2, "Your Local Pub");
      ((Intent)localObject3).putExtra("intent_name", String.format("Rank [%s]awarding", new Object[] { ((RankTitle.Rank)localObject2).name() }));
      c.add(localObject3);
    }
    paramBundle = new ArrayList();
    i = 0;
    while (i < b.length)
    {
      paramBundle.add(b[i].getSimpleName());
      i += 1;
    }
    localObject2 = c.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Intent)((Iterator)localObject2).next();
      if (((Intent)localObject3).hasExtra("intent_name")) {
        paramBundle.add(((Intent)localObject3).getStringExtra("intent_name"));
      } else {
        paramBundle.add(((Intent)localObject3).getComponent().getShortClassName());
      }
    }
    a = new ArrayAdapter(this, 17367043, paramBundle);
    q().setAdapter(a);
    q().f();
    setTitle("Activities");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityDebugActivities
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */