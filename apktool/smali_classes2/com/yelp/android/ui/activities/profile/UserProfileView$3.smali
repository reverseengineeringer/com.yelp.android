.class Lcom/yelp/android/ui/activities/profile/UserProfileView$3;
.super Lcom/yelp/android/analytics/d;
.source "UserProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/UserProfileView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$3;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$3;->a:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$3;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$3;->a:Landroid/content/Intent;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    return-void
.end method
