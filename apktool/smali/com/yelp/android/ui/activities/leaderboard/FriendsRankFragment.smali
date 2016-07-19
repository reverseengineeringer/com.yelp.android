.class public Lcom/yelp/android/ui/activities/leaderboard/FriendsRankFragment;
.super Lcom/yelp/android/ui/activities/leaderboard/RankFragment;
.source "FriendsRankFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected D_()Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->FRIENDS:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    return-object v0
.end method

.method protected c()Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    return-object v0
.end method

.method protected f()Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_CHECKINS:Lcom/yelp/android/util/ErrorType;

    return-object v0
.end method
