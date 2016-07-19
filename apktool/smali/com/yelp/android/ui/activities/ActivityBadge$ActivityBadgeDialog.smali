.class public Lcom/yelp/android/ui/activities/ActivityBadge$ActivityBadgeDialog;
.super Lcom/yelp/android/ui/activities/ActivityBadge;
.source "ActivityBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityBadgeDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method
