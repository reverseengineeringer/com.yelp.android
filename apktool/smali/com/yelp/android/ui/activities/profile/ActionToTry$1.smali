.class final enum Lcom/yelp/android/ui/activities/profile/ActionToTry$1;
.super Lcom/yelp/android/ui/activities/profile/ActionToTry;
.source "ActionToTry.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;)V
    .locals 7

    .prologue
    .line 18
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/profile/ActionToTry;-><init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/ui/activities/profile/ActionToTry$1;)V

    return-void
.end method


# virtual methods
.method intentToStartAction(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method shouldTry(Lcom/yelp/android/serializable/User;)Z
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
