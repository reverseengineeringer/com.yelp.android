.class public Lcom/yelp/android/util/BizClaimUtil;
.super Ljava/lang/Object;
.source "BizClaimUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/BizClaimUtil$1;,
        Lcom/yelp/android/util/BizClaimUtil$SourceButton;
    }
.end annotation


# direct methods
.method private static a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->I()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "no_reviews_no_photos"

    .line 124
    :goto_0
    return-object v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string/jumbo v0, "with_photos_but_no_reviews"

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->I()I

    move-result v0

    if-nez v0, :cond_2

    .line 122
    const-string/jumbo v0, "with_reviews_but_no_photos"

    goto :goto_0

    .line 124
    :cond_2
    const-string/jumbo v0, "with_reviews_and_photos"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 160
    const v0, 0x7f070109

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 165
    const-string/jumbo v0, "utm_source"

    const-string/jumbo v2, "app_android"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    const-string/jumbo v0, "utm_medium"

    const-string/jumbo v2, "consumer_app"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 167
    const-string/jumbo v0, "utm_content"

    const-string/jumbo v2, "add_business_as_owner"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 168
    const-string/jumbo v0, "utm_campaign"

    const-string/jumbo v2, "add_business"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 170
    const-string/jumbo v0, "ybt_experiment"

    const-string/jumbo v2, "claim_popup_add_business_biz_search_page_experiment"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    const-string/jumbo v2, "ybt_experiment_cohort"

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->r:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    const-string/jumbo v0, "ybt_property"

    const-string/jumbo v2, "consumer_app"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 176
    const-string/jumbo v0, "ybt_device_os"

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    const-string/jumbo v0, "ybt_page"

    const-string/jumbo v2, "business_search_page"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    const-string/jumbo v0, "ybt_target"

    const-string/jumbo v2, "popup"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/util/BizClaimUtil$SourceButton;)V
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 134
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "source"

    invoke-virtual {p2}, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->iriParamSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessClaim:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 138
    const v0, 0x7f0701ca

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "utm_content"

    invoke-virtual {p2}, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->utmParamContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 144
    invoke-virtual {p2, p1}, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->ybtParamExperimentName(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    const-string/jumbo v2, "ybt_experiment"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    const-string/jumbo v1, "ybt_experiment_cohort"

    invoke-virtual {p2, p1}, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->ybtParamExperimentCohort(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 150
    :cond_0
    const-string/jumbo v1, "ybt_property"

    const-string/jumbo v2, "consumer_app"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    const-string/jumbo v1, "ybt_device_os"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 152
    const-string/jumbo v1, "ybt_page"

    invoke-virtual {p2}, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->ybtParamPage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    const-string/jumbo v1, "ybt_target"

    invoke-virtual {p2}, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->ybtParamTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    const-string/jumbo v1, "ybt_page_variant"

    invoke-static {p1}, Lcom/yelp/android/util/BizClaimUtil;->a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
