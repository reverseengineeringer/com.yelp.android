.class public Lcom/yelp/android/ui/activities/urlcatcher/ActivityUserProfileUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityUserProfileUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityUserProfileUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ae;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http"

    const-string/jumbo v3, "/user_details"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ae;->a()Lcom/yelp/android/ui/util/ae;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/n;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityUserProfileUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityUserProfileUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    const-string/jumbo v0, "userid"

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityUserProfileUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityUserProfileUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityUserProfileUrlCatcher;->finish()V

    .line 49
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityUserProfileUrlCatcher;->finish()V

    goto :goto_0
.end method
