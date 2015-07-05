.class Lcom/yelp/android/ui/activities/dy;
.super Ljava/lang/Object;
.source "ActivitySplashFindFriends.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dy;->a:Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dy;->a:Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->startActivityForResult(Landroid/content/Intent;I)V

    .line 35
    return-void
.end method
