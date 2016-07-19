.class Landroid/support/design/internal/b$b;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/internal/view/menu/h;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/view/menu/h;II)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/v7/internal/view/menu/h;

    .line 514
    iput p2, p0, Landroid/support/design/internal/b$b;->b:I

    .line 515
    iput p3, p0, Landroid/support/design/internal/b$b;->c:I

    .line 516
    return-void
.end method

.method public static a(II)Landroid/support/design/internal/b$b;
    .locals 2

    .prologue
    .line 523
    new-instance v0, Landroid/support/design/internal/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/support/design/internal/b$b;-><init>(Landroid/support/v7/internal/view/menu/h;II)V

    return-object v0
.end method

.method public static a(Landroid/support/v7/internal/view/menu/h;)Landroid/support/design/internal/b$b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 519
    new-instance v0, Landroid/support/design/internal/b$b;

    invoke-direct {v0, p0, v1, v1}, Landroid/support/design/internal/b$b;-><init>(Landroid/support/v7/internal/view/menu/h;II)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/v7/internal/view/menu/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Landroid/support/design/internal/b$b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/support/design/internal/b$b;->c:I

    return v0
.end method

.method public d()Landroid/support/v7/internal/view/menu/h;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/v7/internal/view/menu/h;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/v7/internal/view/menu/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
