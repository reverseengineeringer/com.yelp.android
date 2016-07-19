.class Landroid/support/design/widget/o$a;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[I

.field final b:Landroid/view/animation/Animation;


# direct methods
.method private constructor <init>([ILandroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Landroid/support/design/widget/o$a;->a:[I

    .line 178
    iput-object p2, p0, Landroid/support/design/widget/o$a;->b:Landroid/view/animation/Animation;

    .line 179
    return-void
.end method

.method synthetic constructor <init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/o$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/o$a;-><init>([ILandroid/view/animation/Animation;)V

    return-void
.end method
