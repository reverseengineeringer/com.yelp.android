package com.yelp.android.appdata.experiment;

import java.util.ArrayList;
import java.util.Arrays;

public class e
  extends f
{
  public static final BizDetailsAdsExperiment a;
  public static final PhotoAdsExperiment b;
  public static final TwoBucketExperiment c;
  public static final TwoBucketExperiment d;
  public static final TwoBucketExperiment e;
  public static final ShareToolbarExperiment f;
  public static final RatingStarDraftExperiment g;
  public static final UfcNotificationExperiment h;
  public static final TwoBucketExperiment i;
  public static final TwoBucketExperiment j;
  public static final BackgroundLocationExperiment k;
  public static final TwoBucketExperiment l;
  public static final TrendingSearchesExperiment m;
  public static final ProminentClaimButtonBizpageExperiment n;
  public static final WriteReviewExperiment o;
  public static final TwoBucketExperiment p;
  public static final TwoBucketExperiment q;
  public static final TwoBucketExperiment r;
  public static final OnboardingExperiment s;
  public static final TwoBucketExperiment t;
  public static final ArrayList<c<? extends Enum<?>>> u;
  public static final ArrayList<b<? extends Enum<?>>> v;
  public static ArrayList<a> w;
  
  static
  {
    Object localObject = new TwoBucketExperiment("contributions.android.account_unconfirmed_banner", false);
    t = (TwoBucketExperiment)localObject;
    WriteReviewExperiment localWriteReviewExperiment = new WriteReviewExperiment();
    o = localWriteReviewExperiment;
    BizDetailsAdsExperiment localBizDetailsAdsExperiment = new BizDetailsAdsExperiment();
    a = localBizDetailsAdsExperiment;
    PhotoAdsExperiment localPhotoAdsExperiment = new PhotoAdsExperiment();
    b = localPhotoAdsExperiment;
    TwoBucketExperiment localTwoBucketExperiment1 = new TwoBucketExperiment("mobile.android.photo_resize_v2", false);
    c = localTwoBucketExperiment1;
    TwoBucketExperiment localTwoBucketExperiment2 = new TwoBucketExperiment("mobile.android.socket_keep_alive", false);
    d = localTwoBucketExperiment2;
    TwoBucketExperiment localTwoBucketExperiment3 = new TwoBucketExperiment("mobile_search_actions_for_all_search_results", false);
    e = localTwoBucketExperiment3;
    ShareToolbarExperiment localShareToolbarExperiment = new ShareToolbarExperiment();
    f = localShareToolbarExperiment;
    RatingStarDraftExperiment localRatingStarDraftExperiment = new RatingStarDraftExperiment();
    g = localRatingStarDraftExperiment;
    UfcNotificationExperiment localUfcNotificationExperiment = new UfcNotificationExperiment();
    h = localUfcNotificationExperiment;
    TwoBucketExperiment localTwoBucketExperiment4 = new TwoBucketExperiment("mobile_filter_button_text_experiment", false);
    i = localTwoBucketExperiment4;
    TwoBucketExperiment localTwoBucketExperiment5 = new TwoBucketExperiment("mobile.android.bookmark_search_v2", false);
    j = localTwoBucketExperiment5;
    BackgroundLocationExperiment localBackgroundLocationExperiment = new BackgroundLocationExperiment();
    k = localBackgroundLocationExperiment;
    TwoBucketExperiment localTwoBucketExperiment6 = new TwoBucketExperiment("mobile.android.line_signup_experiment", false);
    l = localTwoBucketExperiment6;
    TrendingSearchesExperiment localTrendingSearchesExperiment = new TrendingSearchesExperiment();
    m = localTrendingSearchesExperiment;
    ProminentClaimButtonBizpageExperiment localProminentClaimButtonBizpageExperiment = new ProminentClaimButtonBizpageExperiment();
    n = localProminentClaimButtonBizpageExperiment;
    TwoBucketExperiment localTwoBucketExperiment7 = new TwoBucketExperiment("mobile.prominent_claim_button_editbizpage", false);
    p = localTwoBucketExperiment7;
    TwoBucketExperiment localTwoBucketExperiment8 = new TwoBucketExperiment("mobile.prominent_claim_button_more_info_page_experiment", false);
    q = localTwoBucketExperiment8;
    TwoBucketExperiment localTwoBucketExperiment9 = new TwoBucketExperiment("mobile.claim_popup_add_business_biz_search_page", false);
    r = localTwoBucketExperiment9;
    u = new ArrayList(Arrays.asList(new c[] { localObject, localWriteReviewExperiment, localBizDetailsAdsExperiment, localPhotoAdsExperiment, localTwoBucketExperiment1, localTwoBucketExperiment2, localTwoBucketExperiment3, localShareToolbarExperiment, localRatingStarDraftExperiment, localUfcNotificationExperiment, localTwoBucketExperiment4, localTwoBucketExperiment5, localBackgroundLocationExperiment, localTwoBucketExperiment6, localTrendingSearchesExperiment, localProminentClaimButtonBizpageExperiment, localTwoBucketExperiment7, localTwoBucketExperiment8, localTwoBucketExperiment9, new UndefinedCohortExperiment("vertical_search_nearby_suggest_prominence"), new UndefinedCohortExperiment("mobile_nearby_new_tag"), new UndefinedCohortExperiment("mobile_promoted_filter_text_experiment"), new UndefinedCohortExperiment("mobile_platform_medium_intent_queries"), new UndefinedCohortExperiment("mobile_lower_promoted_delivery_threshold"), new UndefinedCohortExperiment("mobile.request_quote_search_actions_v2_experiment"), new UndefinedCohortExperiment("dead_end_separated_search"), new UndefinedCohortExperiment("platform_pickup_filter"), new UndefinedCohortExperiment("auto_enable_pickup"), new UndefinedCohortExperiment("remove_platform_category_filter"), new UndefinedCohortExperiment("auto_enable_with_separated_search"), new UndefinedCohortExperiment("txn_growth_suggest_boost_delivery_searches"), new UndefinedCohortExperiment("txn_growth_free_delivery_filter_expansion"), new UndefinedCohortExperiment("txn_growth_search_answers_food"), new UndefinedCohortExperiment("txn_growth_search_answers_reservations"), new UndefinedCohortExperiment("txn_growth_filter_act_like_auto_enable"), new UndefinedCohortExperiment("txn_growth_search_action_button_delivery"), new UndefinedCohortExperiment("txn_growth_search_action_button_spas"), new UndefinedCohortExperiment("txn_growth_search_action_button_activity"), new UndefinedCohortExperiment("txn_growth_search_action_button_golf"), new UndefinedCohortExperiment("txn_growth.platform_distance_score_exponent_v2"), new UndefinedCohortExperiment("txn_growth.platform_word_score_score_exponent_v2"), new UndefinedCohortExperiment("txn_growth.platform_attr_score_exponent_v2"), new UndefinedCohortExperiment("txn_growth.platform_ctr_score_exponent_v2"), new UndefinedCohortExperiment("txn_growth.platform_wilson_score_exponent_v2"), new UndefinedCohortExperiment("txn_growth.platform_distance_score_curve_v3") }));
    localObject = new OnboardingExperiment();
    s = (OnboardingExperiment)localObject;
    v = new ArrayList(Arrays.asList(new OnboardingExperiment[] { localObject }));
    w = new ArrayList();
    w.addAll(v);
    w.addAll(u);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */