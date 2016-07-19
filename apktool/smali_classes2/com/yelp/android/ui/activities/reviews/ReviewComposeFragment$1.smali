.class Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;
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
    .line 111
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReviewKeyboard:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 123
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PreviousReviews:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->e()V

    goto :goto_0
.end method
