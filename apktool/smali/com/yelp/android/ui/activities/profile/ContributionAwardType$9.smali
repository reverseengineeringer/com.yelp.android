.class final enum Lcom/yelp/android/ui/activities/profile/ContributionAwardType$9;
.super Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
.source "ContributionAwardType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V
    .locals 7

    .prologue
    .line 145
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
    .line 155
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getComplimentCount()I

    move-result v0

    return v0
.end method

.method getViewIntent(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-static {p1, v0, p2}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
