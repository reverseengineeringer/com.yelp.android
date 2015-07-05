.class Lcom/yelp/android/ui/activities/search/ag;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->filter(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 560
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/a;->a(Ljava/util/List;)V

    .line 543
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/a;->notifyDataSetChanged()V

    .line 546
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->f(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/z;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/z;->a(Ljava/util/List;)V

    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->f(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/z;->notifyDataSetChanged()V

    .line 550
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/c;->a(Ljava/util/List;)V

    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/c;->notifyDataSetChanged()V

    .line 553
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02034e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ag;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
