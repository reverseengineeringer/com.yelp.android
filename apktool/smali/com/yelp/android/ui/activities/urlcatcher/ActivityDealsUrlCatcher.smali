.class public Lcom/yelp/android/ui/activities/urlcatcher/ActivityDealsUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityDealsUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityDealsUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ae;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http"

    const-string/jumbo v3, "/deals/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ae;->a()Lcom/yelp/android/ui/util/ae;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityDealsUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 40
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityDealsUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityDealsUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    :cond_0
    const-string/jumbo v3, "yelp:external_request"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const-string/jumbo v3, "yelp:return_to_biz_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    new-instance v3, Lcom/yelp/android/analytics/n;

    invoke-direct {v3, v0}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityDealsUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityDealsUrlCatcher;->finish()V

    .line 52
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityDealsUrlCatcher;->finish()V

    goto :goto_0
.end method
