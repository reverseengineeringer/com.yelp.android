.class Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;
.super Ljava/lang/Object;
.source "MenuSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/MenuSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;


# instance fields
.field private final b:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;-><init>(Landroid/view/MenuItem;)V

    sput-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->a:Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;

    return-void
.end method

.method private constructor <init>(Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b:Landroid/view/MenuItem;

    .line 367
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->a:Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b:Landroid/view/MenuItem;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
