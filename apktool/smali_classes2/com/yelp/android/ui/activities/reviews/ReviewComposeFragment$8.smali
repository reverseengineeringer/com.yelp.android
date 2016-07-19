.class Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 407
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PreviousReviews:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020463

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070322

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 420
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020464

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
