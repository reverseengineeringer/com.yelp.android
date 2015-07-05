.class Lcom/yelp/android/ui/activities/profile/ab;
.super Lcom/yelp/android/analytics/d;
.source "UserProfileView.java"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/UserProfileView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ab;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/ab;->a:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ab;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ab;->a:Landroid/content/Intent;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    return-void
.end method
