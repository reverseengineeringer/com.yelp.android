.class Lcom/yelp/android/ui/activities/dz;
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
    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dz;->a:Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dz;->a:Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->setResult(I)V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dz;->a:Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->finish()V

    .line 43
    return-void
.end method
