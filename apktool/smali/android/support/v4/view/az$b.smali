.class Landroid/support/v4/view/az$b;
.super Landroid/support/v4/view/az$a;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/az$b$a;
    }
.end annotation


# instance fields
.field b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/support/v4/view/az$a;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/az$b;->b:Ljava/util/WeakHashMap;

    .line 524
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/az;Landroid/view/View;)J
    .locals 2

    .prologue
    .line 387
    invoke-static {p2}, Landroid/support/v4/view/ba;->a(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/support/v4/view/az;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 372
    invoke-static {p2, p3}, Landroid/support/v4/view/ba;->a(Landroid/view/View;F)V

    .line 373
    return-void
.end method

.method public a(Landroid/support/v4/view/az;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 367
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ba;->a(Landroid/view/View;J)V

    .line 368
    return-void
.end method

.method public a(Landroid/support/v4/view/az;Landroid/view/View;Landroid/support/v4/view/bd;)V
    .locals 1

    .prologue
    .line 502
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 503
    new-instance v0, Landroid/support/v4/view/az$b$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/az$b$a;-><init>(Landroid/support/v4/view/az;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/ba;->a(Landroid/view/View;Landroid/support/v4/view/bd;)V

    .line 504
    return-void
.end method

.method public a(Landroid/support/v4/view/az;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 392
    invoke-static {p2, p3}, Landroid/support/v4/view/ba;->a(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 393
    return-void
.end method

.method public b(Landroid/support/v4/view/az;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 462
    invoke-static {p2}, Landroid/support/v4/view/ba;->b(Landroid/view/View;)V

    .line 463
    return-void
.end method

.method public b(Landroid/support/v4/view/az;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 377
    invoke-static {p2, p3}, Landroid/support/v4/view/ba;->b(Landroid/view/View;F)V

    .line 378
    return-void
.end method

.method public b(Landroid/support/v4/view/az;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 397
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ba;->b(Landroid/view/View;J)V

    .line 398
    return-void
.end method

.method public c(Landroid/support/v4/view/az;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 497
    invoke-static {p2}, Landroid/support/v4/view/ba;->c(Landroid/view/View;)V

    .line 498
    return-void
.end method

.method public c(Landroid/support/v4/view/az;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 382
    invoke-static {p2, p3}, Landroid/support/v4/view/ba;->c(Landroid/view/View;F)V

    .line 383
    return-void
.end method

.method public d(Landroid/support/v4/view/az;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 442
    invoke-static {p2, p3}, Landroid/support/v4/view/ba;->d(Landroid/view/View;F)V

    .line 443
    return-void
.end method

.method public e(Landroid/support/v4/view/az;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 452
    invoke-static {p2, p3}, Landroid/support/v4/view/ba;->e(Landroid/view/View;F)V

    .line 453
    return-void
.end method
