.class final enum Lcom/yelp/android/appdata/BusinessContributionType$2;
.super Lcom/yelp/android/appdata/BusinessContributionType;
.source "BusinessContributionType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .prologue
    .line 35
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
    .line 42
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p1, p2, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
