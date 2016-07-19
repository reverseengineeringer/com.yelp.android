.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$2;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Z)Z

    .line 418
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Z)V

    .line 419
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewDraftSave:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getIriSourceParameter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->ReviewDraftBusinessId:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 428
    return-void
.end method
