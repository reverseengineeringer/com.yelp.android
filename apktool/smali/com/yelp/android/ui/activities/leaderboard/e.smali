.class Lcom/yelp/android/ui/activities/leaderboard/e;
.super Ljava/lang/Object;
.source "RankFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/o;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/e;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/e;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    new-instance v2, Lcom/yelp/android/ui/activities/leaderboard/f;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/leaderboard/f;-><init>(Lcom/yelp/android/ui/activities/leaderboard/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 172
    return-void
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/e;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a_()V

    .line 177
    return-void
.end method
