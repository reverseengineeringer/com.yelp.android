.class public Lcom/yelp/android/ui/activities/ActivityWriteReviewUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityWriteReviewUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityWriteReviewUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FromWebsite:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v1

    .line 36
    const-string/jumbo v2, "yelp:external_request"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/analytics/o;

    invoke-direct {v3, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityWriteReviewUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityWriteReviewUrlCatcher;->finish()V

    .line 45
    return-void
.end method
