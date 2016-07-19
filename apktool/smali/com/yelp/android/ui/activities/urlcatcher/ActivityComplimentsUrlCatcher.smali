.class public Lcom/yelp/android/ui/activities/urlcatcher/ActivityComplimentsUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityComplimentsUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityComplimentsUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ae;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http"

    const-string/jumbo v3, "/user_details_thanx"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ae;->a()Lcom/yelp/android/ui/util/ae;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityComplimentsUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const v1, 0x7f07039e

    sget-object v2, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityComplimentsUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 46
    new-instance v1, Lcom/yelp/android/analytics/n;

    invoke-direct {v1, v0}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/b;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityComplimentsUrlCatcher;->finish()V

    .line 49
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityComplimentsUrlCatcher;->finish()V

    goto :goto_0
.end method
