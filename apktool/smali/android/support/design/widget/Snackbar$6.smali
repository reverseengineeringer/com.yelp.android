.class Landroid/support/design/widget/Snackbar$6;
.super Landroid/support/v4/view/be;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$6;->b:Landroid/support/design/widget/Snackbar;

    iput p2, p0, Landroid/support/design/widget/Snackbar$6;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/be;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->b:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b(II)V

    .line 528
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->b:Landroid/support/design/widget/Snackbar;

    iget v1, p0, Landroid/support/design/widget/Snackbar$6;->a:I

    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;I)V

    .line 533
    return-void
.end method
