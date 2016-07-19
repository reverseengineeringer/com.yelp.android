.class Landroid/support/v7/internal/widget/q$3;
.super Landroid/support/v4/view/be;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/q;->a(IJ)Landroid/support/v4/view/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/q;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Landroid/support/v7/internal/widget/q$3;->a:Landroid/support/v7/internal/widget/q;

    invoke-direct {p0}, Landroid/support/v4/view/be;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/v7/internal/widget/q$3;->a:Landroid/support/v7/internal/widget/q;

    invoke-static {v0}, Landroid/support/v7/internal/widget/q;->a(Landroid/support/v7/internal/widget/q;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 616
    return-void
.end method
