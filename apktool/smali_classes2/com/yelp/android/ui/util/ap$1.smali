.class Lcom/yelp/android/ui/util/ap$1;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ap;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/yelp/android/ui/util/ap$1;->a:Lcom/yelp/android/ui/util/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 426
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$1;->a:Lcom/yelp/android/ui/util/ap;

    iget-object v0, v0, Lcom/yelp/android/ui/util/ap;->a:Lcom/yelp/android/ui/util/ap$a;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$1;->a:Lcom/yelp/android/ui/util/ap;

    iget-object v2, v0, Lcom/yelp/android/ui/util/ap;->a:Lcom/yelp/android/ui/util/ap$a;

    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/yelp/android/ui/util/ap$a;->a(Landroid/widget/Checkable;IZ)V

    .line 432
    :cond_0
    return-void
.end method
