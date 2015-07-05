.class public Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFlagReview.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/reviewpage/aa;
.implements Lcom/yelp/android/ui/activities/reviewpage/y;


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusinessReview;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string/jumbo v1, "extra.review"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v1, "extra.business_country"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->showLoadingDialog()V

    .line 102
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0c01d4

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->b:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 79
    :goto_0
    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->FalseInformation:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0300b4

    invoke-static {v1}, Lcom/yelp/android/ui/fragments/SimpleLayoutFragment;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 94
    :goto_1
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->a:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {p1, v1}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->hideLoadingDialog()V

    .line 112
    invoke-static {v2, p1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/b;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FlagReview:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0c01d4

    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->a:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->b:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 58
    :cond_0
    const v0, 0x7f0704f6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->setTitle(I)V

    .line 59
    return-void
.end method
