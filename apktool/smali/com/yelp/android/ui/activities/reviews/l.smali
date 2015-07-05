.class Lcom/yelp/android/ui/activities/reviews/l;
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
    .line 387
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/l;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/l;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    .line 392
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewDraftDelete:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 393
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->ReviewDraftBusinessId:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "cleared"

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 395
    return-void
.end method
