.class Landroid/support/v7/widget/f$b;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$u;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$u;IIII)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/support/v7/widget/f$b;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 59
    iput p2, p0, Landroid/support/v7/widget/f$b;->b:I

    .line 60
    iput p3, p0, Landroid/support/v7/widget/f$b;->c:I

    .line 61
    iput p4, p0, Landroid/support/v7/widget/f$b;->d:I

    .line 62
    iput p5, p0, Landroid/support/v7/widget/f$b;->e:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$u;IIIILandroid/support/v7/widget/f$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/f$b;-><init>(Landroid/support/v7/widget/RecyclerView$u;IIII)V

    return-void
.end method
