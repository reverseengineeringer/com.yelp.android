.class public abstract Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "ReviewBaseFragment.java"


# instance fields
.field protected a:Lcom/yelp/android/ui/activities/reviews/StarsView;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/ViewGroup;

.field protected d:Lcom/yelp/android/ui/activities/reviews/ao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v1

    .line 36
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "stars"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->SMALL:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarSize(Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;)V

    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ao;->a(I)V

    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/activities/reviews/ao;->b(Z)V

    .line 41
    return v1

    .line 36
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string/jumbo v0, "saved_stars"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 56
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ao;->a(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 47
    const-string/jumbo v0, "saved_stars"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    return-void
.end method
