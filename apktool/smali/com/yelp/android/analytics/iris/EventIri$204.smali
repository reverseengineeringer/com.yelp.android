.class final Lcom/yelp/android/analytics/iris/EventIri$204;
.super Lcom/yelp/android/bs/a;
.source "EventIri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/iris/EventIri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/yelp/android/bs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 997
    const-string/jumbo v0, "button"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    const-string/jumbo v0, "num_actions_shown"

    return-object v0
.end method

.method public e()[Lcom/yelp/android/analytics/c;
    .locals 3

    .prologue
    .line 1007
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/yelp/android/analytics/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->promoted_filter_alias_type:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->promoted_filter_toggle_on:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->search_source:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->search_actions_shown:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->low_intent_search_actions_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->mobile_promoted_filter_text_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->mobile_platform_medium_intent_queries_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->mobile_lower_promoted_delivery_threshold_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->dead_end_separated_search:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->platform_pickup_filter_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->auto_enable_pickup_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->remove_platform_category_filter_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->auto_enable_with_separated_search_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_suggest_boost_delivery_searches_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_free_delivery_filter_expansion_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_search_answers_food_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_search_answers_reservations:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_filter_act_like_auto_enable_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_search_action_button_delivery_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_search_action_button_spas_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_search_action_button_activity_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_search_action_button_golf_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_platform_distance_score_exponent_v2:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_platform_word_score_score_exponent_v2:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_platform_attr_score_exponent_v2:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_platform_ctr_score_exponent_v2:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_platform_wilson_score_exponent_v2:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->txn_growth_platform_distance_score_curve_v3:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->request_a_quote_search_action_attributes_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/yelp/android/analytics/iris/EventIri$204;->a([Lcom/yelp/android/analytics/c;)[Lcom/yelp/android/analytics/c;

    move-result-object v0

    return-object v0
.end method
