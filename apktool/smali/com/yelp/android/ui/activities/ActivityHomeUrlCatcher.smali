.class public Lcom/yelp/android/ui/activities/ActivityHomeUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityHomeUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/o;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityHomeUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 25
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityHomeUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityHomeUrlCatcher;->finish()V

    .line 29
    return-void
.end method
