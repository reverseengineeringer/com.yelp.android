.class Landroid/support/design/widget/s;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/s$1;,
        Landroid/support/design/widget/s$c;,
        Landroid/support/design/widget/s$b;,
        Landroid/support/design/widget/s$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/design/widget/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v0, Landroid/support/design/widget/s$c;

    invoke-direct {v0, v2}, Landroid/support/design/widget/s$c;-><init>(Landroid/support/design/widget/s$1;)V

    sput-object v0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/s$a;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/support/design/widget/s$b;

    invoke-direct {v0, v2}, Landroid/support/design/widget/s$b;-><init>(Landroid/support/design/widget/s$1;)V

    sput-object v0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/s$a;

    goto :goto_0
.end method

.method static a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/s$a;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/design/widget/s$a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 66
    return-void
.end method

.method static b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/s;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 78
    return-void
.end method
