.class Landroid/support/v7/internal/widget/v;
.super Landroid/support/v7/widget/aq;
.source "ActivityChooserView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/aq;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z

    .line 257
    const/4 v0, 0x1

    return v0
.end method
