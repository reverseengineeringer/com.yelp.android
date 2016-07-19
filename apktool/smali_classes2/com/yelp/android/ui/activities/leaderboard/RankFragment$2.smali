.class Lcom/yelp/android/ui/activities/leaderboard/RankFragment$2;
.super Ljava/lang/Object;
.source "RankFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/leaderboard/RankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment$2;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment$2;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    new-instance v2, Lcom/yelp/android/ui/activities/leaderboard/RankFragment$2$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment$2$1;-><init>(Lcom/yelp/android/ui/activities/leaderboard/RankFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 176
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment$2;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->p_()V

    .line 181
    return-void
.end method
