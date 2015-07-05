.class public Lcom/yelp/android/debug/ActivityDebugButtonThemes;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityDebugButtonThemes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/yelp/android/debug/ActivityDebugButtonThemes;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lcom/yelp/android/debug/ActivityDebugButtonThemes;->setContentView(I)V

    .line 15
    return-void
.end method
