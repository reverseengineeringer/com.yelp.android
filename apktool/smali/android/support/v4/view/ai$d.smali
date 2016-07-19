.class Landroid/support/v4/view/ai$d;
.super Landroid/support/v4/view/ai$c;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Landroid/support/v4/view/ai$c;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1133
    invoke-static {p1}, Landroid/support/v4/view/am;->h(Landroid/view/View;)V

    .line 1134
    return-void
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 1148
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->a(II)I

    move-result v0

    return v0
.end method

.method public a(III)I
    .locals 1

    .prologue
    .line 1018
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/am;->a(III)I

    move-result v0

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 994
    invoke-static {}, Landroid/support/v4/view/am;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1042
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->a(Landroid/view/View;F)V

    .line 1043
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1002
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/am;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1003
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1012
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ai$d;->g(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ai$d;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1014
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1015
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1046
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->b(Landroid/view/View;F)V

    .line 1047
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1138
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->a(Landroid/view/View;Z)V

    .line 1139
    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1050
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->c(Landroid/view/View;F)V

    .line 1051
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1143
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->b(Landroid/view/View;Z)V

    .line 1144
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1074
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->d(Landroid/view/View;F)V

    .line 1075
    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1078
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->e(Landroid/view/View;F)V

    .line 1079
    return-void
.end method

.method public f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 998
    invoke-static {p1}, Landroid/support/v4/view/am;->a(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1082
    invoke-static {p1, p2}, Landroid/support/v4/view/am;->f(Landroid/view/View;F)V

    .line 1083
    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1006
    invoke-static {p1}, Landroid/support/v4/view/am;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1022
    invoke-static {p1}, Landroid/support/v4/view/am;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1030
    invoke-static {p1}, Landroid/support/v4/view/am;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public p(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1034
    invoke-static {p1}, Landroid/support/v4/view/am;->e(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public q(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1038
    invoke-static {p1}, Landroid/support/v4/view/am;->f(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1115
    invoke-static {p1}, Landroid/support/v4/view/am;->g(Landroid/view/View;)F

    move-result v0

    return v0
.end method
