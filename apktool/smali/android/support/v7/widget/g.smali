.class Landroid/support/v7/widget/g;
.super Landroid/support/v7/internal/view/menu/v;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic c:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 669
    iput-object p1, p0, Landroid/support/v7/widget/g;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 670
    sget v5, Lcom/yelp/android/g/b;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V

    .line 671
    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->a(I)V

    .line 672
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/h;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 673
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/v;->onDismiss()V

    .line 678
    iget-object v0, p0, Landroid/support/v7/widget/g;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->close()V

    .line 679
    iget-object v0, p0, Landroid/support/v7/widget/g;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/g;)Landroid/support/v7/widget/g;

    .line 680
    return-void
.end method
