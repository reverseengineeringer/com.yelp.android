.class public Lcom/yelp/android/ui/activities/ActivityBusinessMenuUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityBusinessMenuUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBusinessMenuUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessMenu:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityBusinessMenuUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 28
    new-instance v1, Lcom/yelp/android/analytics/o;

    invoke-direct {v1, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/b;)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBusinessMenuUrlCatcher;->finish()V

    .line 31
    return-void
.end method
