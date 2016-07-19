.class Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2;
.super Ljava/lang/Object;
.source "RoyaltyFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    new-instance v2, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2$1;-><init>(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 179
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->p_()V

    .line 184
    return-void
.end method
