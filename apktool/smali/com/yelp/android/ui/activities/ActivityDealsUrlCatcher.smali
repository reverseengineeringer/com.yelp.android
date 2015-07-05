.class public Lcom/yelp/android/ui/activities/ActivityDealsUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityDealsUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityDealsUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 26
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityDealsUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    :cond_0
    const-string/jumbo v3, "yelp:external_request"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    const-string/jumbo v3, "yelp:return_to_biz_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    new-instance v3, Lcom/yelp/android/analytics/o;

    invoke-direct {v3, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityDealsUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityDealsUrlCatcher;->finish()V

    .line 39
    return-void
.end method
