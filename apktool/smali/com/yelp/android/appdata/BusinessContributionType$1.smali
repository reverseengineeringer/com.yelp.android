.class final enum Lcom/yelp/android/appdata/BusinessContributionType$1;
.super Lcom/yelp/android/appdata/BusinessContributionType;
.source "BusinessContributionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/BusinessContributionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .prologue
    .line 21
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/appdata/BusinessContributionType$1;)V

    return-void
.end method


# virtual methods
.method public getAddIntent(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
