.class public Landroid/support/v7/app/a;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/a$e;,
        Landroid/support/v7/app/a$h;,
        Landroid/support/v7/app/a$g;,
        Landroid/support/v7/app/a$f;,
        Landroid/support/v7/app/a$d;,
        Landroid/support/v7/app/a$c;,
        Landroid/support/v7/app/a$a;,
        Landroid/support/v7/app/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/app/a$a;

.field private final b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/support/v7/app/a$d;

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
    .line 181
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/a;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 183
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/support/v7/app/a$d;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/support/v7/widget/Toolbar;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/a;->e:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/a;->i:Z

    .line 194
    if-eqz p2, :cond_0

    .line 195
    new-instance v0, Landroid/support/v7/app/a$h;

    invoke-direct {v0, p2}, Landroid/support/v7/app/a$h;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->a:Landroid/support/v7/app/a$a;

    .line 196
    new-instance v0, Landroid/support/v7/app/a$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/a$1;-><init>(Landroid/support/v7/app/a;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/a;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 217
    iput p5, p0, Landroid/support/v7/app/a;->f:I

    .line 218
    iput p6, p0, Landroid/support/v7/app/a;->g:I

    .line 219
    if-nez p4, :cond_4

    .line 220
    new-instance v0, Landroid/support/v7/app/a$c;

    iget-object v1, p0, Landroid/support/v7/app/a;->a:Landroid/support/v7/app/a$a;

    invoke-interface {v1}, Landroid/support/v7/app/a$a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/a$c;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$d;

    .line 226
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/a;->d:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void

    .line 206
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/a$b;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 207
    check-cast v0, Landroid/support/v7/app/a$b;

    invoke-interface {v0}, Landroid/support/v7/app/a$b;->getDrawerToggleDelegate()Landroid/support/v7/app/a$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/a;->a:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 208
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 209
    new-instance v0, Landroid/support/v7/app/a$g;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/a$g;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a$1;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->a:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 210
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 211
    new-instance v0, Landroid/support/v7/app/a$f;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/a$f;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a$1;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->a:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 213
    :cond_3
    new-instance v0, Landroid/support/v7/app/a$e;

    invoke-direct {v0, p1}, Landroid/support/v7/app/a$e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->a:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 223
    :cond_4
    check-cast p4, Landroid/support/v7/app/a$d;

    iput-object p4, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$d;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/app/a;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v7/app/a;->e:Z

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 285
    iget-object v0, p0, Landroid/support/v7/app/a;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v7/app/a;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/a;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/app/a;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/a;->b()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/app/a;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/app/a;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/app/a;->a:Landroid/support/v7/app/a$a;

    invoke-interface {v0}, Landroid/support/v7/app/a$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/a$d;->a(F)V

    .line 391
    iget-boolean v0, p0, Landroid/support/v7/app/a;->e:Z

    if-eqz v0, :cond_0

    .line 392
    iget v0, p0, Landroid/support/v7/app/a;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/a;->b(I)V

    .line 394
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$d;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/app/a$d;->a(F)V

    .line 379
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 277
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/a;->e:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Landroid/support/v7/app/a;->b()V

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/app/a;->a:Landroid/support/v7/app/a$a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/a$a;->a(I)V

    .line 461
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/a$d;->a(F)V

    .line 406
    iget-boolean v0, p0, Landroid/support/v7/app/a;->e:Z

    if-eqz v0, :cond_0

    .line 407
    iget v0, p0, Landroid/support/v7/app/a;->f:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/a;->b(I)V

    .line 409
    :cond_0
    return-void
.end method
