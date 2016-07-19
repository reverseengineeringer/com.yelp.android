.class public Lcom/yelp/android/appdata/experiment/e;
.super Lcom/yelp/android/appdata/experiment/f;
.source "Experiment.java"


# static fields
.field public static final a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

.field public static final b:Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment;

.field public static final c:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final d:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final e:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final f:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;

.field public static final g:Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment;

.field public static final h:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment;

.field public static final i:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final j:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final k:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;

.field public static final l:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final m:Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;

.field public static final n:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;

.field public static final o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

.field public static final p:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final q:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final r:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

.field public static final t:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

.field public static final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/appdata/experiment/c",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field public static final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/appdata/experiment/b",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field public static w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/appdata/experiment/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2d

    new-array v1, v1, [Lcom/yelp/android/appdata/experiment/c;

    new-instance v2, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v3, "contributions.android.account_unconfirmed_banner"

    invoke-direct {v2, v3, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lcom/yelp/android/appdata/experiment/e;->t:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v2, v1, v5

    new-instance v2, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    invoke-direct {v2}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;-><init>()V

    sput-object v2, Lcom/yelp/android/appdata/experiment/e;->o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    new-instance v3, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    invoke-direct {v3}, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;-><init>()V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment;

    invoke-direct {v3}, Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment;-><init>()V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->b:Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile.android.photo_resize_v2"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->c:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile.android.socket_keep_alive"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->d:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile_search_actions_for_all_search_results"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->e:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;

    invoke-direct {v3}, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;-><init>()V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->f:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment;

    invoke-direct {v3}, Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment;-><init>()V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->g:Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment;

    invoke-direct {v3}, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment;-><init>()V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->h:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile_filter_button_text_experiment"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->i:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile.android.bookmark_search_v2"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->j:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;

    invoke-direct {v3}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;-><init>()V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->k:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile.android.line_signup_experiment"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->l:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;

    invoke-direct {v3}, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;-><init>()V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->m:Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;

    invoke-direct {v3}, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;-><init>()V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->n:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile.prominent_claim_button_editbizpage"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->p:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile.prominent_claim_button_more_info_page_experiment"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->q:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v4, "mobile.claim_popup_add_business_biz_search_page"

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/yelp/android/appdata/experiment/e;->r:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "vertical_search_nearby_suggest_prominence"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "mobile_nearby_new_tag"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "mobile_promoted_filter_text_experiment"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "mobile_platform_medium_intent_queries"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "mobile_lower_promoted_delivery_threshold"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "mobile.request_quote_search_actions_v2_experiment"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "dead_end_separated_search"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "platform_pickup_filter"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "auto_enable_pickup"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "remove_platform_category_filter"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "auto_enable_with_separated_search"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_suggest_boost_delivery_searches"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_free_delivery_filter_expansion"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_search_answers_food"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_search_answers_reservations"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_filter_act_like_auto_enable"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_search_action_button_delivery"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_search_action_button_spas"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_search_action_button_activity"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth_search_action_button_golf"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth.platform_distance_score_exponent_v2"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth.platform_word_score_score_exponent_v2"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth.platform_attr_score_exponent_v2"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth.platform_ctr_score_exponent_v2"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth.platform_wilson_score_exponent_v2"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;

    const-string/jumbo v4, "txn_growth.platform_distance_score_curve_v3"

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/e;->u:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    new-instance v2, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    invoke-direct {v2}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;-><init>()V

    sput-object v2, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/e;->v:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/experiment/e;->w:Ljava/util/ArrayList;

    .line 154
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->w:Ljava/util/ArrayList;

    sget-object v1, Lcom/yelp/android/appdata/experiment/e;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->w:Ljava/util/ArrayList;

    sget-object v1, Lcom/yelp/android/appdata/experiment/e;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    return-void
.end method
