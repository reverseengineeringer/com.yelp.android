.class public Landroid/support/design/widget/TabLayout$d;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1

    .prologue
    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$d;->a:Ljava/lang/ref/WeakReference;

    .line 1580
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 1584
    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->c:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$d;->b:I

    .line 1585
    iput p1, p0, Landroid/support/design/widget/TabLayout$d;->c:I

    .line 1586
    return-void
.end method

.method public a(IFI)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1591
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 1592
    if-eqz v0, :cond_1

    .line 1595
    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->c:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->b:I

    if-ne v2, v1, :cond_2

    .line 1598
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    .line 1600
    :cond_1
    return-void

    .line 1595
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 1604
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 1605
    if-eqz v0, :cond_0

    .line 1608
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v2

    iget v1, p0, Landroid/support/design/widget/TabLayout$d;->c:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$c;Z)V

    .line 1611
    :cond_0
    return-void

    .line 1608
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
