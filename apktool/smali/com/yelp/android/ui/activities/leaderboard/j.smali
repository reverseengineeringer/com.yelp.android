.class Lcom/yelp/android/ui/activities/leaderboard/j;
.super Ljava/lang/Object;
.source "RoyaltyFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/o;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/j;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/j;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    new-instance v2, Lcom/yelp/android/ui/activities/leaderboard/k;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/leaderboard/k;-><init>(Lcom/yelp/android/ui/activities/leaderboard/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 177
    return-void
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/j;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a_()V

    .line 182
    return-void
.end method
