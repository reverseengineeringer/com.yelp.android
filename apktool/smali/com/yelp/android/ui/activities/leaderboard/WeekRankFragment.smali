.class public Lcom/yelp/android/ui/activities/leaderboard/WeekRankFragment;
.super Lcom/yelp/android/ui/activities/leaderboard/RankFragment;
.source "WeekRankFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected D_()Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->WEEK:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    return-object v0
.end method

.method protected c()Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    return-object v0
.end method

.method protected f()Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_NEARBY_CHECKINS:Lcom/yelp/android/util/ErrorType;

    return-object v0
.end method
