.class Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$4;
.super Ljava/lang/Object;
.source "NearbyCheckIns.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->startActivity(Landroid/content/Intent;)V

    .line 260
    return-void
.end method
