.class Lcom/yelp/android/ui/util/ck;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/cj;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/cj;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/yelp/android/ui/util/ck;->a:Lcom/yelp/android/ui/util/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 405
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/ck;->a:Lcom/yelp/android/ui/util/cj;

    iget-object v0, v0, Lcom/yelp/android/ui/util/cj;->a:Lcom/yelp/android/ui/util/cm;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/yelp/android/ui/util/ck;->a:Lcom/yelp/android/ui/util/cj;

    iget-object v2, v0, Lcom/yelp/android/ui/util/cj;->a:Lcom/yelp/android/ui/util/cm;

    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/yelp/android/ui/util/cm;->a(Landroid/widget/Checkable;IZ)V

    .line 409
    :cond_0
    return-void
.end method
