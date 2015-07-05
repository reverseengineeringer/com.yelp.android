.class public Landroid/support/v7/app/p;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/t;


# instance fields
.field private final a:Landroid/support/v7/app/r;

.field private final b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/support/v7/app/u;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private final f:I

.field private final g:I

.field private h:Landroid/view/View$OnClickListener;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 7

    .prologue
    .line 191
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/p;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 193
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/support/v7/app/u;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/support/v7/widget/Toolbar;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/p;->e:Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/p;->i:Z

    .line 204
    if-eqz p2, :cond_0

    .line 205
    new-instance v0, Landroid/support/v7/app/z;

    invoke-direct {v0, p2}, Landroid/support/v7/app/z;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    .line 206
    new-instance v0, Landroid/support/v7/app/q;

    invoke-direct {v0, p0}, Landroid/support/v7/app/q;-><init>(Landroid/support/v7/app/p;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/p;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 229
    iput p5, p0, Landroid/support/v7/app/p;->f:I

    .line 230
    iput p6, p0, Landroid/support/v7/app/p;->g:I

    .line 231
    if-nez p4, :cond_5

    .line 232
    new-instance v0, Landroid/support/v7/app/t;

    iget-object v1, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    invoke-interface {v1}, Landroid/support/v7/app/r;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/t;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/u;

    .line 238
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/p;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->d:Landroid/graphics/drawable/Drawable;

    .line 239
    return-void

    .line 216
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/s;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 217
    check-cast v0, Landroid/support/v7/app/s;

    invoke-interface {v0}, Landroid/support/v7/app/s;->a()Landroid/support/v7/app/r;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    goto :goto_0

    .line 218
    :cond_1
    instance-of v0, p1, Landroid/support/v7/app/y;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 219
    check-cast v0, Landroid/support/v7/app/y;

    invoke-interface {v0}, Landroid/support/v7/app/y;->getV7DrawerToggleDelegate()Landroid/support/v7/app/r;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    goto :goto_0

    .line 220
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 221
    new-instance v0, Landroid/support/v7/app/x;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/x;-><init>(Landroid/app/Activity;Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    goto :goto_0

    .line 222
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 223
    new-instance v0, Landroid/support/v7/app/w;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/w;-><init>(Landroid/app/Activity;Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    goto :goto_0

    .line 225
    :cond_4
    new-instance v0, Landroid/support/v7/app/v;

    invoke-direct {v0, p1}, Landroid/support/v7/app/v;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    goto :goto_0

    .line 235
    :cond_5
    check-cast p4, Landroid/support/v7/app/u;

    iput-object p4, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/u;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/app/p;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/support/v7/app/p;->e:Z

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 297
    iget-object v0, p0, Landroid/support/v7/app/p;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v7/app/p;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/app/p;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/p;->b()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/app/p;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    invoke-interface {v0}, Landroid/support/v7/app/r;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/r;

    invoke-interface {v0, p1}, Landroid/support/v7/app/r;->setActionBarDescription(I)V

    .line 473
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 289
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/p;->e:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Landroid/support/v7/app/p;->b()V

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/u;->a(F)V

    .line 418
    iget-boolean v0, p0, Landroid/support/v7/app/p;->e:Z

    if-eqz v0, :cond_0

    .line 419
    iget v0, p0, Landroid/support/v7/app/p;->f:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->a(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/u;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/u;->a(F)V

    .line 403
    iget-boolean v0, p0, Landroid/support/v7/app/p;->e:Z

    if-eqz v0, :cond_0

    .line 404
    iget v0, p0, Landroid/support/v7/app/p;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->a(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/u;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/app/u;->a(F)V

    .line 391
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 432
    return-void
.end method
