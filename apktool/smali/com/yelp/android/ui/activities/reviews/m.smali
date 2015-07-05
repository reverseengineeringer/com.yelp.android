.class Lcom/yelp/android/ui/activities/reviews/m;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/m;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/m;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Z)Z

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/m;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Z)V

    .line 383
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewDraftSave:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 384
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->ReviewDraftBusinessId:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/m;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 386
    return-void
.end method
