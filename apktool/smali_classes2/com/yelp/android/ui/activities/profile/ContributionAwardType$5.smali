.class final enum Lcom/yelp/android/ui/activities/profile/ContributionAwardType$5;
.super Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
.source "ContributionAwardType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V
    .locals 7

    .prologue
    .line 88
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IILcom/yelp/android/ui/activities/profile/ContributionAwardType$1;)V

    return-void
.end method


# virtual methods
.method getValue(Lcom/yelp/android/serializable/User;)I
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_HOOD_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/User;->b(Lcom/yelp/android/serializable/RankTitle$Rank;)I

    move-result v0

    return v0
.end method

.method getViewIntent(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_HOOD_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-static {p1, v0, p2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
