.class Landroid/support/v7/internal/widget/az;
.super Ljava/lang/Object;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;

.field final synthetic b:Landroid/support/v7/internal/widget/ay;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ay;Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Landroid/support/v7/internal/widget/az;->b:Landroid/support/v7/internal/widget/ay;

    iput-object p2, p0, Landroid/support/v7/internal/widget/az;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Landroid/support/v7/internal/widget/az;->b:Landroid/support/v7/internal/widget/ay;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ay;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 992
    iget-object v0, p0, Landroid/support/v7/internal/widget/az;->b:Landroid/support/v7/internal/widget/ay;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ay;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->s:Landroid/support/v7/internal/widget/ac;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Landroid/support/v7/internal/widget/az;->b:Landroid/support/v7/internal/widget/ay;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ay;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/az;->b:Landroid/support/v7/internal/widget/ay;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ay;->a(Landroid/support/v7/internal/widget/ay;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;IJ)Z

    .line 996
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/az;->b:Landroid/support/v7/internal/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ay;->a()V

    .line 997
    return-void
.end method
