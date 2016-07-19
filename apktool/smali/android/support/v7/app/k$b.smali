.class Landroid/support/v7/app/k$b;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lcom/yelp/android/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/k;

.field private b:Lcom/yelp/android/r/a$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/k;Lcom/yelp/android/r/a$a;)V
    .locals 0

    .prologue
    .line 1639
    iput-object p1, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1640
    iput-object p2, p0, Landroid/support/v7/app/k$b;->b:Lcom/yelp/android/r/a$a;

    .line 1641
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/r/a;)V
    .locals 3

    .prologue
    .line 1656
    iget-object v0, p0, Landroid/support/v7/app/k$b;->b:Lcom/yelp/android/r/a$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/r/a$a;->a(Lcom/yelp/android/r/a;)V

    .line 1657
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1661
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1662
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    invoke-static {v0}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k;)V

    .line 1663
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v1, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/az;->a(F)Landroid/support/v4/view/az;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/k;->q:Landroid/support/v4/view/az;

    .line 1664
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->q:Landroid/support/v4/view/az;

    new-instance v1, Landroid/support/v7/app/k$b$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/k$b$1;-><init>(Landroid/support/v7/app/k$b;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    .line 1679
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->e:Landroid/support/v7/app/e;

    if-eqz v0, :cond_2

    .line 1680
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->e:Landroid/support/v7/app/e;

    iget-object v1, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->m:Lcom/yelp/android/r/a;

    invoke-interface {v0, v1}, Landroid/support/v7/app/e;->onSupportActionModeFinished(Lcom/yelp/android/r/a;)V

    .line 1682
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/k;->m:Lcom/yelp/android/r/a;

    .line 1683
    return-void
.end method

.method public a(Lcom/yelp/android/r/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Landroid/support/v7/app/k$b;->b:Lcom/yelp/android/r/a$a;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/r/a$a;->a(Lcom/yelp/android/r/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/r/a;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Landroid/support/v7/app/k$b;->b:Lcom/yelp/android/r/a$a;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/r/a$a;->a(Lcom/yelp/android/r/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/yelp/android/r/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Landroid/support/v7/app/k$b;->b:Lcom/yelp/android/r/a$a;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/r/a$a;->b(Lcom/yelp/android/r/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
