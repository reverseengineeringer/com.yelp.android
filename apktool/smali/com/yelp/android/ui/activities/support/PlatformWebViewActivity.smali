.class public Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;
.super Lcom/yelp/android/ui/activities/support/WebViewActivity;
.source "PlatformWebViewActivity.java"


# instance fields
.field private a:Z

.field private b:J

.field private c:Z

.field private d:I

.field private e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->c:Z

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    sget-object v2, Lcom/yelp/android/appdata/Features;->continue_last_order:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "food"

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 141
    const/16 p6, 0x0

    move/from16 v8, p6

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v9, p10

    .line 143
    invoke-static/range {v1 .. v9}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->configureIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-static/range {p7 .. p7}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    const-string/jumbo v2, "extra.biz_dimension"

    move-object/from16 v0, p7

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_0
    invoke-static/range {p8 .. p8}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    const-string/jumbo v2, "extra.supported_vertical_types"

    move-object/from16 v0, p8

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :cond_1
    invoke-static/range {p9 .. p9}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    const-string/jumbo v2, "extra.source"

    move-object/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_2
    invoke-static/range {p11 .. p11}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 165
    const-string/jumbo v2, "extra.search_request_id"

    move-object/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :cond_3
    invoke-static/range {p12 .. p12}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 169
    const-string/jumbo v2, "extra.business_id"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    :cond_4
    return-object v1

    :cond_5
    move/from16 v8, p6

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static/range {p0 .. p12}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.url_params"

    move-object/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra.show_chef_carmen"

    if-eqz p13, :cond_0

    invoke-virtual/range {p13 .. p13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.business_id"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 389
    invoke-static {}, Lcom/yelp/android/services/c;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 391
    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 395
    const-string/jumbo v2, "yuv"

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 397
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; expires="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.supported_vertical_types"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra.source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    const-string/jumbo v3, "biz_dimension"

    invoke-interface {p5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_0
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    const-string/jumbo v0, "supported_vertical_types"

    invoke-interface {p5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_1
    invoke-static {v2}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    const-string/jumbo v0, "source_business_page"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-static {p1, p5}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 371
    :cond_2
    :goto_0
    return-void

    .line 363
    :cond_3
    const-string/jumbo v0, "source_search_page"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    invoke-static {p2, p5}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0

    .line 365
    :cond_4
    const-string/jumbo v0, "source_menu_page"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    invoke-static {p3, p5}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0

    .line 367
    :cond_5
    const-string/jumbo v0, "source_more_info_page"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-static {p4, p5}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a:Z

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a:Z

    .line 379
    if-eqz p1, :cond_1

    sget-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->PlatformWebViewInitLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    .line 383
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->b:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/TimingIri;J)V

    .line 386
    :cond_0
    return-void

    .line 379
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->PlatformWebViewIframeLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;I)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->e:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->e:Z

    return v0
.end method


# virtual methods
.method public disableLoading()V
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->c:Z

    .line 189
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->disableLoading()V

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enableLoading()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 195
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->d:I

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->c:Z

    .line 198
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->enableLoading()V

    .line 200
    iget v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->d:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.show_chef_carmen"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030150

    const v0, 0x7f0f020d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setCustomSpinnerView(Landroid/view/View;)V

    .line 211
    :cond_0
    return-void

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getIntentForLeavingWebView()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 295
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntentForLeavingWebView()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.has_reached_menu"

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/Features;->continue_last_order:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra.business_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrlParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.url_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 217
    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Lcom/yelp/android/services/c;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    .line 221
    const-string/jumbo v2, "api_dst"

    invoke-static {v2}, Lcom/yelp/android/services/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    const-string/jumbo v2, "delivery_session_token"

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;-><init>(Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 176
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a()V

    .line 177
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->b:J

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 182
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "order/menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->e:Z

    .line 183
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onIframeReady()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Z)V

    .line 242
    return-void
.end method

.method protected onOpportunityReady()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Z)V

    .line 237
    return-void
.end method

.method protected sendCancelIrisIfNeeded(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 246
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 247
    if-eqz p1, :cond_0

    .line 248
    const-string/jumbo v0, "cancel_state"

    const-string/jumbo v1, "error"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPlatformCancel:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchPlatformCancel:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMenuPlatformCancel:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->MoreInfoPagePlatformCancel:Lcom/yelp/android/analytics/iris/EventIri;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 266
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->d:I

    if-ne v0, v2, :cond_1

    .line 252
    const-string/jumbo v0, "cancel_state"

    const-string/jumbo v2, "loading_initial"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->d:I

    if-le v0, v2, :cond_2

    .line 254
    const-string/jumbo v0, "cancel_state"

    const-string/jumbo v2, "loading"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 256
    :cond_2
    const-string/jumbo v0, "cancel_state"

    const-string/jumbo v2, "loaded"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected sendConfirmedIrisIfNeeded()V
    .locals 6

    .prologue
    .line 270
    new-instance v5, Lcom/yelp/android/g/a;

    invoke-direct {v5}, Lcom/yelp/android/g/a;-><init>()V

    .line 271
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.search_request_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const-string/jumbo v1, "search_request_id"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    const-string/jumbo v1, "business_id"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPlatformConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchPlatformConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMenuPlatformConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->MoreInfoPagePlatformConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 285
    return-void
.end method

.method protected shouldLoginToWebView()Z
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->shouldLoginToWebView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
