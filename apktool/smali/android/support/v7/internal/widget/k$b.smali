.class Landroid/support/v7/internal/widget/k$b;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/k;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/k;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Landroid/support/v7/internal/widget/k$b;->a:Landroid/support/v7/internal/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/k;Landroid/support/v7/internal/widget/k$1;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/k$b;-><init>(Landroid/support/v7/internal/widget/k;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 576
    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/widget/k$c;

    .line 577
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k$c;->b()Landroid/support/v7/app/ActionBar$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$b;->d()V

    .line 578
    iget-object v0, p0, Landroid/support/v7/internal/widget/k$b;->a:Landroid/support/v7/internal/widget/k;

    invoke-static {v0}, Landroid/support/v7/internal/widget/k;->a(Landroid/support/v7/internal/widget/k;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 579
    :goto_0
    if-ge v2, v3, :cond_1

    .line 580
    iget-object v0, p0, Landroid/support/v7/internal/widget/k$b;->a:Landroid/support/v7/internal/widget/k;

    invoke-static {v0}, Landroid/support/v7/internal/widget/k;->a(Landroid/support/v7/internal/widget/k;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 581
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 579
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 581
    goto :goto_1

    .line 583
    :cond_1
    return-void
.end method
