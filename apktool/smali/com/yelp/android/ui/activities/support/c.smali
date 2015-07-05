.class Lcom/yelp/android/ui/activities/support/c;
.super Lcom/yelp/android/ui/activities/support/g;
.source "YelpActivity.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/b;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/c;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/g;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/c;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x7f070362

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/c;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/c;->a(Landroid/content/Intent;)V

    .line 965
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/g;->onClick(Landroid/view/View;)V

    .line 966
    return-void
.end method
