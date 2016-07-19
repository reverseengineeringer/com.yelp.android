.class final enum Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType$1;
.super Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;
.source "FriendFinderSourceType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 9
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;-><init>(Ljava/lang/String;IIILcom/yelp/android/ui/activities/friends/FriendFinderSourceType$1;)V

    return-void
.end method


# virtual methods
.method public getDefaultToggleSelection()Z
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a()Z

    move-result v0

    return v0
.end method
