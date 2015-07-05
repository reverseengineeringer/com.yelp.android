.class Landroid/support/v7/internal/widget/bj;
.super Landroid/support/v4/view/ey;
.source "ToolbarWidgetWrapper.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/bh;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/bh;)V
    .locals 1

    .prologue
    .line 605
    iput-object p1, p0, Landroid/support/v7/internal/widget/bj;->a:Landroid/support/v7/internal/widget/bh;

    invoke-direct {p0}, Landroid/support/v4/view/ey;-><init>()V

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/bj;->b:Z

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/bj;->b:Z

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Landroid/support/v7/internal/widget/bj;->a:Landroid/support/v7/internal/widget/bh;

    invoke-static {v0}, Landroid/support/v7/internal/widget/bh;->a(Landroid/support/v7/internal/widget/bh;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/bj;->b:Z

    .line 617
    return-void
.end method
