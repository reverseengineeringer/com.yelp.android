.class final enum Lcom/yelp/android/ui/activities/profile/ContributionAwardType$11;
.super Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
.source "ContributionAwardType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V
    .locals 7

    .prologue
    .line 176
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
    .line 186
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v0

    return v0
.end method

.method getViewIntent(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v0

    sget-object v1, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->Review:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    invoke-static {p1, p2, v0, v1}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;ILcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method