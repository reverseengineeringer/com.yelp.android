.class Landroid/support/v4/view/ai$a;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ai$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/az;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ai$a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/ae;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 864
    invoke-interface {p1}, Landroid/support/v4/view/ae;->computeHorizontalScrollOffset()I

    move-result v2

    .line 865
    invoke-interface {p1}, Landroid/support/v4/view/ae;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ae;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 867
    if-nez v3, :cond_1

    move v0, v1

    .line 871
    :cond_0
    :goto_0
    return v0

    .line 868
    :cond_1
    if-gez p2, :cond_2

    .line 869
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 871
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/view/ae;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 876
    invoke-interface {p1}, Landroid/support/v4/view/ae;->computeVerticalScrollOffset()I

    move-result v2

    .line 877
    invoke-interface {p1}, Landroid/support/v4/view/ae;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ae;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 879
    if-nez v3, :cond_1

    move v0, v1

    .line 883
    :cond_0
    :goto_0
    return v0

    .line 880
    :cond_1
    if-gez p2, :cond_2

    .line 881
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 883
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 796
    return-void
.end method

.method public B(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public C(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 837
    instance-of v0, p1, Landroid/support/v4/view/x;

    if-eqz v0, :cond_0

    .line 838
    check-cast p1, Landroid/support/v4/view/x;

    invoke-interface {p1}, Landroid/support/v4/view/x;->isNestedScrollingEnabled()Z

    move-result v0

    .line 840
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 896
    instance-of v0, p1, Landroid/support/v4/view/x;

    if-eqz v0, :cond_0

    .line 897
    check-cast p1, Landroid/support/v4/view/x;

    invoke-interface {p1}, Landroid/support/v4/view/x;->stopNestedScroll()V

    .line 899
    :cond_0
    return-void
.end method

.method public E(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 949
    invoke-static {p1}, Landroid/support/v4/view/aj;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public F(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 959
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ai$a;->y(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ai$a;->x(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public G(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 964
    invoke-static {p1}, Landroid/support/v4/view/aj;->d(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 954
    or-int v0, p1, p2

    return v0
.end method

.method public a(III)I
    .locals 1

    .prologue
    .line 509
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 448
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/bg;)Landroid/support/v4/view/bg;
    .locals 0

    .prologue
    .line 806
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 440
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 850
    invoke-static {p1, p2}, Landroid/support/v4/view/aj;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 851
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 855
    invoke-static {p1, p2}, Landroid/support/v4/view/aj;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 856
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/ab;)V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/support/v4/view/ai$a;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/support/v4/view/ai$a;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 397
    instance-of v0, p1, Landroid/support/v4/view/ae;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ae;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ai$a;->a(Landroid/support/v4/view/ae;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/bg;)Landroid/support/v4/view/bg;
    .locals 0

    .prologue
    .line 811
    return-object p2
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 549
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 550
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 401
    instance-of v0, p1, Landroid/support/v4/view/ae;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ae;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ai$a;->b(Landroid/support/v4/view/ae;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 437
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 466
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 505
    :cond_0
    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public o(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public p(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public r(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public s(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 650
    invoke-static {p1}, Landroid/support/v4/view/aj;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public t(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 655
    invoke-static {p1}, Landroid/support/v4/view/aj;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public u(Landroid/view/View;)Landroid/support/v4/view/az;
    .locals 1

    .prologue
    .line 660
    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0, p1}, Landroid/support/v4/view/az;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public v(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public w(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public x(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public y(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public z(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method
