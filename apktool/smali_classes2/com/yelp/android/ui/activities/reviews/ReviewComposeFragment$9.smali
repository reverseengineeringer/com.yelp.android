.class Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g()V
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
    .line 435
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 441
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v2, v0}, Lcom/yelp/android/ui/activities/reviews/c;->a(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0, v3}, Lcom/yelp/android/ui/activities/reviews/c;->c(Z)V

    .line 446
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0, v3}, Lcom/yelp/android/ui/activities/reviews/c;->a(Z)V

    .line 449
    :cond_0
    return-void
.end method
