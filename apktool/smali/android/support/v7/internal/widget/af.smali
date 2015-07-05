.class Landroid/support/v7/internal/widget/af;
.super Ljava/lang/Object;
.source "AdapterViewCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/z;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/z;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/z;Landroid/support/v7/internal/widget/aa;)V
    .locals 0

    .prologue
    .line 855
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/af;-><init>(Landroid/support/v7/internal/widget/z;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/z;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/z;->u:Z

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/z;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/z;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/z;->post(Ljava/lang/Runnable;)Z

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/z;

    invoke-static {v0}, Landroid/support/v7/internal/widget/z;->b(Landroid/support/v7/internal/widget/z;)V

    goto :goto_0
.end method
