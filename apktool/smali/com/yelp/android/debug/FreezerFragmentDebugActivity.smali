.class public Lcom/yelp/android/debug/FreezerFragmentDebugActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "FreezerFragmentDebugActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/debug/FreezerFragmentDebugActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/debug/FreezerFragmentDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "DEBUG_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/debug/FreezerFragmentDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    new-instance v2, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;

    invoke-direct {v2}, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;-><init>()V

    const-string/jumbo v3, "DEBUG_FRAGMENT"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 46
    :cond_0
    return-void
.end method
