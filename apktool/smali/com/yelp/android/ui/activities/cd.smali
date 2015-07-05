.class Lcom/yelp/android/ui/activities/cd;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityDebugActivities.java"


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/cd;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 270
    const-string/jumbo v0, "ActivityCrashImmediately"

    const-string/jumbo v1, "Oh man I am just going to crash"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method
