.class public Lcom/yelp/android/ui/activities/ActivityBadge$ActivityBadgeDialog;
.super Lcom/yelp/android/ui/activities/ActivityBadge;
.source "ActivityBadge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method
