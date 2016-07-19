.class public Lcom/yelp/android/ui/activities/urlcatcher/ActivityBusinessMenuUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityBusinessMenuUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityBusinessMenuUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ae;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http"

    const-string/jumbo v3, "/menu/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "menu"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ae;->a([Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ae;->a()Lcom/yelp/android/ui/util/ae;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityBusinessMenuUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    const-string/jumbo v0, "yelp-app-indexing"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yelp-app-indexing:/"

    const-string/jumbo v2, "http://www.yelp.com"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 47
    :cond_0
    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessMenu:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityBusinessMenuUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 56
    new-instance v0, Lcom/yelp/android/analytics/n;

    invoke-direct {v0, v1}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/b;)V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityBusinessMenuUrlCatcher;->finish()V

    .line 59
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityBusinessMenuUrlCatcher;->finish()V

    goto :goto_0
.end method
