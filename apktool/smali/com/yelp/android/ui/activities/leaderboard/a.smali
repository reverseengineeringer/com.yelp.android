.class Lcom/yelp/android/ui/activities/leaderboard/a;
.super Ljava/lang/Object;
.source "ActivityLeaderboard.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/a;->a:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "friends_rank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/a;->a:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/a;->a:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_0
    return-void
.end method
