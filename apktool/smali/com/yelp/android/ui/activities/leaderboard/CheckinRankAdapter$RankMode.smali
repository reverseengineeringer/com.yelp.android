.class public final enum Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;
.super Ljava/lang/Enum;
.source "CheckinRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RankMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

.field public static final enum ALL:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

.field public static final enum BIZ:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

.field public static final enum FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

.field public static final enum WEEK:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    const-string/jumbo v1, "WEEK"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->ALL:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    .line 49
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    const-string/jumbo v1, "FRIENDS"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    .line 50
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    const-string/jumbo v1, "BIZ"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->BIZ:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->ALL:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->BIZ:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->$VALUES:[Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->$VALUES:[Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    return-object v0
.end method
