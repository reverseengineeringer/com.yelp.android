.class Landroid/support/v4/view/el;
.super Landroid/support/v4/view/ej;
.source "ViewPropertyAnimatorCompat.java"


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
    .line 338
    invoke-direct {p0}, Landroid/support/v4/view/ej;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/el;->b:Ljava/util/WeakHashMap;

    .line 500
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/eh;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 438
    invoke-static {p2}, Landroid/support/v4/view/er;->a(Landroid/view/View;)V

    .line 439
    return-void
.end method

.method public a(Landroid/support/v4/view/eh;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 348
    invoke-static {p2, p3}, Landroid/support/v4/view/er;->a(Landroid/view/View;F)V

    .line 349
    return-void
.end method

.method public a(Landroid/support/v4/view/eh;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 343
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/er;->a(Landroid/view/View;J)V

    .line 344
    return-void
.end method

.method public a(Landroid/support/v4/view/eh;Landroid/view/View;Landroid/support/v4/view/ex;)V
    .locals 1

    .prologue
    .line 478
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 479
    new-instance v0, Landroid/support/v4/view/em;

    invoke-direct {v0, p1}, Landroid/support/v4/view/em;-><init>(Landroid/support/v4/view/eh;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/er;->a(Landroid/view/View;Landroid/support/v4/view/ex;)V

    .line 480
    return-void
.end method

.method public a(Landroid/support/v4/view/eh;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 368
    invoke-static {p2, p3}, Landroid/support/v4/view/er;->a(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 369
    return-void
.end method

.method public b(Landroid/support/v4/view/eh;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 473
    invoke-static {p2}, Landroid/support/v4/view/er;->b(Landroid/view/View;)V

    .line 474
    return-void
.end method

.method public b(Landroid/support/v4/view/eh;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 353
    invoke-static {p2, p3}, Landroid/support/v4/view/er;->b(Landroid/view/View;F)V

    .line 354
    return-void
.end method

.method public c(Landroid/support/v4/view/eh;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 358
    invoke-static {p2, p3}, Landroid/support/v4/view/er;->c(Landroid/view/View;F)V

    .line 359
    return-void
.end method

.method public d(Landroid/support/v4/view/eh;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 428
    invoke-static {p2, p3}, Landroid/support/v4/view/er;->d(Landroid/view/View;F)V

    .line 429
    return-void
.end method
