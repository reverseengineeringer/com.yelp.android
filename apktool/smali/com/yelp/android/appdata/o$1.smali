.class Lcom/yelp/android/appdata/o$1;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "SearchSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/o;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/o;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)I
    .locals 3

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_0

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 350
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 354
    goto :goto_0

    :cond_0
    move v1, v0

    .line 356
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 185
    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    iget-object v1, v1, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v1, v3}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v1

    .line 193
    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v3

    .line 196
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    move v5, v2

    .line 198
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 203
    :goto_2
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->H()Lcom/yelp/android/serializable/Filter;

    move-result-object v3

    .line 204
    if-nez v3, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 208
    :goto_3
    if-nez v3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 215
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    move v4, v0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 216
    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->a()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v7

    sget-object v8, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v7, v8, :cond_6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v7

    if-eqz v7, :cond_6

    move v0, v3

    move v3, v2

    :goto_5
    move v4, v3

    move v3, v0

    .line 223
    goto :goto_4

    :cond_3
    move v5, v0

    .line 196
    goto :goto_1

    :cond_4
    move v1, v0

    .line 198
    goto :goto_2

    .line 204
    :cond_5
    invoke-virtual {v3}, Lcom/yelp/android/serializable/Filter;->c()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 219
    :cond_6
    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->a()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v7

    sget-object v8, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v7, v8, :cond_a

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    move v3, v4

    .line 221
    goto :goto_5

    .line 227
    :cond_7
    if-nez v4, :cond_8

    if-nez v1, :cond_9

    :cond_8
    if-nez v3, :cond_0

    if-eqz v5, :cond_0

    .line 229
    :cond_9
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "auto_enabled"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    move v0, v3

    move v3, v4

    goto :goto_5
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    const-string/jumbo v0, "mobile_promoted_filter_text_experiment"

    const-string/jumbo v1, "mobile_promoted_filter_text_experiment"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v0, "mobile_platform_medium_intent_queries"

    const-string/jumbo v1, "medium_intent_delivery"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v0, "mobile_lower_promoted_delivery_threshold"

    const-string/jumbo v1, "lower_delivery_threshold"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v0, "mobile.request_quote_search_actions_v2_experiment"

    const-string/jumbo v1, "biz_msg.mobile.request_quote_search_actions_v2"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v0, "dead_end_separated_search"

    const-string/jumbo v1, "dead_end_separated_search"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v0, "platform_pickup_filter"

    const-string/jumbo v1, "platform_pickup_filter"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v0, "auto_enable_pickup"

    const-string/jumbo v1, "auto_enable_pickup"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, "remove_platform_category_filter"

    const-string/jumbo v1, "remove_platform_category_filter"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v0, "auto_enable_with_separated_search"

    const-string/jumbo v1, "auto_enable_with_separated_search"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "txn_growth_suggest_boost_delivery_searches"

    const-string/jumbo v1, "txn_growth_suggest_boost_delivery_searches"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v0, "txn_growth_free_delivery_filter_expansion"

    const-string/jumbo v1, "txn_growth_free_delivery_filter_expansion"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "txn_growth_search_answers_food"

    const-string/jumbo v1, "txn_growth_search_answers_food"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "txn_growth_search_answers_reservations"

    const-string/jumbo v1, "txn_growth_search_answers_reservations"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v0, "txn_growth_filter_act_like_auto_enable"

    const-string/jumbo v1, "txn_growth_filter_act_like_auto_enable"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v0, "txn_growth_search_action_button_delivery"

    const-string/jumbo v1, "txn_growth_search_action_button_delivery"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v0, "txn_growth_search_action_button_spas"

    const-string/jumbo v1, "txn_growth_search_action_button_spas"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v0, "txn_growth_search_action_button_activity"

    const-string/jumbo v1, "txn_growth_search_action_button_activity"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "txn_growth_search_action_button_golf"

    const-string/jumbo v1, "txn_growth_search_action_button_golf"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "txn_growth.platform_distance_score_exponent_v2"

    const-string/jumbo v1, "txn_growth.platform_distance_score_exponent_v2"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v0, "txn_growth.platform_word_score_score_exponent_v2"

    const-string/jumbo v1, "txn_growth.platform_word_score_score_exponent_v2"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v0, "txn_growth.platform_attr_score_exponent_v2"

    const-string/jumbo v1, "txn_growth.platform_attr_score_exponent_v2"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v0, "txn_growth.platform_ctr_score_exponent_v2"

    const-string/jumbo v1, "txn_growth.platform_ctr_score_exponent_v2"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string/jumbo v0, "txn_growth.platform_wilson_score_exponent_v2"

    const-string/jumbo v1, "txn_growth.platform_wilson_score_exponent_v2"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v0, "txn_growth.platform_distance_score_curve_v3"

    const-string/jumbo v1, "txn_growth.platform_distance_score_curve_v3"

    invoke-static {p1, v0, v1}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/k$b;->a(Landroid/location/Location;)V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/k$b;->a(Landroid/location/Location;)V

    .line 239
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 96
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0, p2}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 97
    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    sget-object v4, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-eq v0, v4, :cond_1

    invoke-virtual {v3}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    sget-object v4, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-eq v0, v4, :cond_1

    .line 105
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    iput-object v7, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    iput-object v7, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    :cond_1
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/o$1;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    .line 112
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v4

    .line 113
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/analytics/adjust/AdjustManager;

    move-result-object v0

    sget-object v5, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->SEARCH:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0, v5}, Lcom/yelp/android/analytics/adjust/AdjustManager;->a(Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;)V

    .line 114
    new-instance v5, Lcom/yelp/android/g/a;

    invoke-direct {v5}, Lcom/yelp/android/g/a;-><init>()V

    .line 115
    const-string/jumbo v6, "term"

    move-object v0, p1

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0}, Lcom/yelp/android/appdata/o;->c(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/analytics/iris/IriSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0}, Lcom/yelp/android/appdata/o;->c(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/analytics/iris/IriSource;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0}, Lcom/yelp/android/appdata/o;->d(Lcom/yelp/android/appdata/o;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 123
    const-string/jumbo v0, "button"

    iget-object v6, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v6}, Lcom/yelp/android/appdata/o;->d(Lcom/yelp/android/appdata/o;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0, v7}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    :cond_3
    if-eqz v3, :cond_6

    .line 128
    const-string/jumbo v0, "promoted_filter_alias_type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v0, "promoted_filter_toggle_on"

    invoke-virtual {v3}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :goto_0
    invoke-direct {p0, p2}, Lcom/yelp/android/appdata/o$1;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)I

    move-result v3

    .line 138
    if-lez v3, :cond_4

    .line 139
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchActionsShown:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v6, "num_actions_shown"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_4
    const-string/jumbo v6, "search_actions_shown"

    if-lez v3, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v0, "num_actions_shown"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->e:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    if-ne v0, v3, :cond_8

    .line 148
    const-string/jumbo v0, "low_intent_search_actions"

    const-string/jumbo v3, "will_see_search_actions"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_2
    invoke-direct {p0, v5}, Lcom/yelp/android/appdata/o$1;->a(Ljava/util/Map;)V

    .line 159
    new-instance v0, Lcom/yelp/android/analytics/g;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->Search:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v6, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v6}, Lcom/yelp/android/appdata/o;->e(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v6, v5}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    invoke-virtual {v4, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 165
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    iget-object v3, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v3}, Lcom/yelp/android/appdata/o;->e(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->g()I

    move-result v3

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;I)I

    .line 166
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    iget-object v3, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v3}, Lcom/yelp/android/appdata/o;->e(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v4}, Lcom/yelp/android/appdata/o;->f(Lcom/yelp/android/appdata/o;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v4}, Lcom/yelp/android/appdata/o;->e(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->f()I

    move-result v4

    if-lt v3, v4, :cond_9

    :goto_3
    invoke-static {v0, v1}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;Z)Z

    .line 169
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    iget-object v1, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v1}, Lcom/yelp/android/appdata/o;->b(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->K()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 170
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0}, Lcom/yelp/android/appdata/o;->g(Lcom/yelp/android/appdata/o;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->notifyChanged()V

    .line 172
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->Search:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 173
    check-cast p1, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->G()Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->LastSearchCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 180
    :cond_5
    return-void

    .line 134
    :cond_6
    const-string/jumbo v0, "promoted_filter_alias_type"

    const-string/jumbo v3, "none"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 145
    goto/16 :goto_1

    .line 152
    :cond_8
    const-string/jumbo v0, "low_intent_search_actions"

    const-string/jumbo v3, "will_not_see_search_actions"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 166
    goto :goto_3
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "No Providers enabled"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/k$b;->a()Z

    move-result v0

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/k$b;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->notifyInvalidated()V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    iget-object v1, p0, Lcom/yelp/android/appdata/o$1;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v1}, Lcom/yelp/android/appdata/o;->b(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->K()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/o;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 91
    const-string/jumbo v0, "Error occured with search request"

    invoke-static {p0, v0, p2}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/o$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method
