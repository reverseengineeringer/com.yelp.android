.class public final enum Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;
.super Ljava/lang/Enum;
.source "ActivityLeaderboard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

.field public static final enum FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

.field public static final enum ROYALTY:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

.field public static final enum WEEK:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    const-string/jumbo v1, "WEEK"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    .line 20
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    const-string/jumbo v1, "FRIENDS"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    .line 21
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    const-string/jumbo v1, "ROYALTY"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->ROYALTY:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->ROYALTY:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->$VALUES:[Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->$VALUES:[Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    return-object v0
.end method
