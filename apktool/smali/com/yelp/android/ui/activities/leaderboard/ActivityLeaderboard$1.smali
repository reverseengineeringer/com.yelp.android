.class Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$1;
.super Ljava/lang/Object;
.source "ActivityLeaderboard.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$1;->a:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "friends_rank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$1;->a:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$1;->a:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->startActivity(Landroid/content/Intent;)V

    .line 98
    :cond_0
    return-void
.end method
