.class public Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityConfirmAccountUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 67
    const-string/jumbo v0, "ActivityConfirmAccountUrlCatcher"

    const-string/jumbo v1, "Missing confirmation hash. Uri: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ae;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http"

    const-string/jumbo v3, "/ce"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "c"

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ae;->a()Lcom/yelp/android/ui/util/ae;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Lcom/yelp/android/analytics/n;

    invoke-direct {v0, v1}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/b;)V

    .line 52
    const-string/jumbo v0, "c"

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->finish()V

    .line 64
    :goto_1
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->b()V

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->finish()V

    goto :goto_1

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityConfirmAccountUrlCatcher;->b()V

    goto :goto_0
.end method
