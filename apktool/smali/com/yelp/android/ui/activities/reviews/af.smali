.class Lcom/yelp/android/ui/activities/reviews/af;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/af;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/af;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/af;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/af;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 158
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/af;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 160
    return-void
.end method
