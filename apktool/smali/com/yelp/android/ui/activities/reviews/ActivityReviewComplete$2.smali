.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$2;
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
    .line 186
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0c0021

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 196
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method
