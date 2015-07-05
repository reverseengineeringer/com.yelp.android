.class Lcom/yelp/android/ui/activities/reviews/aj;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 390
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviews:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020323

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0702d8

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 403
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020324

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/aj;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
