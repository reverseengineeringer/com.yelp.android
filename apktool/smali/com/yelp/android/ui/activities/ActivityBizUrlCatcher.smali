.class public Lcom/yelp/android/ui/activities/ActivityBizUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityBizUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBizUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBizUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/h;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/analytics/o;

    invoke-direct {v3, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityBizUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBizUrlCatcher;->finish()V

    .line 57
    return-void
.end method
