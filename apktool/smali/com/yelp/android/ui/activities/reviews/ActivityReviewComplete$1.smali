.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$1;
.super Ljava/lang/Object;
.source "ActivityReviewComplete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/activities/addphoto/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewPostedAddPhotoButtonPressed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x411

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->startActivityForResult(Landroid/content/Intent;I)V

    .line 166
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoAddMore:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0
.end method
