.class public Landroid/support/v4/view/ce;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/co;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1488
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1489
    new-instance v0, Landroid/support/v4/view/cn;

    invoke-direct {v0}, Landroid/support/v4/view/cn;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    .line 1507
    :goto_0
    return-void

    .line 1490
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1491
    new-instance v0, Landroid/support/v4/view/cm;

    invoke-direct {v0}, Landroid/support/v4/view/cm;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    goto :goto_0

    .line 1492
    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 1493
    new-instance v0, Landroid/support/v4/view/cl;

    invoke-direct {v0}, Landroid/support/v4/view/cl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    goto :goto_0

    .line 1494
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1495
    new-instance v0, Landroid/support/v4/view/ck;

    invoke-direct {v0}, Landroid/support/v4/view/ck;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    goto :goto_0

    .line 1496
    :cond_3
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 1497
    new-instance v0, Landroid/support/v4/view/cj;

    invoke-direct {v0}, Landroid/support/v4/view/cj;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    goto :goto_0

    .line 1498
    :cond_4
    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 1499
    new-instance v0, Landroid/support/v4/view/ci;

    invoke-direct {v0}, Landroid/support/v4/view/ci;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    goto :goto_0

    .line 1500
    :cond_5
    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 1501
    new-instance v0, Landroid/support/v4/view/ch;

    invoke-direct {v0}, Landroid/support/v4/view/ch;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    goto :goto_0

    .line 1502
    :cond_6
    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    .line 1503
    new-instance v0, Landroid/support/v4/view/cg;

    invoke-direct {v0}, Landroid/support/v4/view/cg;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    goto :goto_0

    .line 1505
    :cond_7
    new-instance v0, Landroid/support/v4/view/cf;

    invoke-direct {v0}, Landroid/support/v4/view/cf;-><init>()V

    sput-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    goto :goto_0
.end method

.method public static a(III)I
    .locals 1

    .prologue
    .line 2069
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/co;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1542
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2294
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;F)V

    .line 2295
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 1743
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/co;->a(Landroid/view/View;IIII)V

    .line 1744
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1915
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/co;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1916
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1992
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1993
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 1679
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1680
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/bn;)V
    .locals 1

    .prologue
    .line 2620
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;Landroid/support/v4/view/bn;)V

    .line 2621
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1757
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1758
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1774
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/co;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1775
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2664
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;Z)V

    .line 2665
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 2582
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/ViewGroup;Z)V

    .line 2583
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1517
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2310
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->b(Landroid/view/View;F)V

    .line 2311
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2677
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->b(Landroid/view/View;Z)V

    .line 2678
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1689
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1528
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2326
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->c(Landroid/view/View;F)V

    .line 2327
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1816
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->c(Landroid/view/View;I)V

    .line 1817
    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1701
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1725
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->d(Landroid/view/View;)V

    .line 1726
    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2404
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->d(Landroid/view/View;F)V

    .line 2405
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1792
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2416
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->e(Landroid/view/View;F)V

    .line 2417
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1872
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->f(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2504
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/co;->f(Landroid/view/View;F)V

    .line 2505
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1936
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2007
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 2039
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->i(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2052
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->j(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2083
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2108
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2233
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->m(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2246
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->n(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static o(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2257
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2268
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->q(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)Landroid/support/v4/view/eh;
    .locals 1

    .prologue
    .line 2280
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->r(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v0

    return-object v0
.end method

.method public static r(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2485
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->o(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static s(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2561
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->s(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static t(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2569
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->t(Landroid/view/View;)V

    .line 2570
    return-void
.end method

.method public static u(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2590
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->u(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static v(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2611
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->v(Landroid/view/View;)V

    .line 2612
    return-void
.end method

.method public static w(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2819
    sget-object v0, Landroid/support/v4/view/ce;->a:Landroid/support/v4/view/co;

    invoke-interface {v0, p0}, Landroid/support/v4/view/co;->w(Landroid/view/View;)V

    .line 2820
    return-void
.end method
