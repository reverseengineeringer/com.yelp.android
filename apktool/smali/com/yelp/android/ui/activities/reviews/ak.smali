.class Lcom/yelp/android/ui/activities/reviews/ak;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ak;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ak;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ak;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ak;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/yelp/android/ui/activities/reviews/ao;->a(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ak;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0, v3}, Lcom/yelp/android/ui/activities/reviews/ao;->c(Z)V

    .line 428
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ak;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0, v3}, Lcom/yelp/android/ui/activities/reviews/ao;->a(Z)V

    .line 431
    :cond_0
    return-void
.end method
