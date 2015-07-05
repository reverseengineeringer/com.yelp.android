.class final enum Lcom/yelp/android/ui/activities/profile/ContributionAwardType$10;
.super Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
.source "ContributionAwardType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZ)V
    .locals 9

    .prologue
    .line 160
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZLcom/yelp/android/ui/activities/profile/ContributionAwardType$1;)V

    return-void
.end method


# virtual methods
.method getValue(Lcom/yelp/android/serializable/User;)I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getDraftCount()I

    move-result v0

    return v0
.end method

.method getViewIntent(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 165
    const-class v0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getDraftCount()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
