.class Lcom/flipboard/bottomsheet/commons/b$a;
.super Landroid/view/ViewOutlineProvider;
.source "Util.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 33
    iput p1, p0, Lcom/flipboard/bottomsheet/commons/b$a;->a:I

    .line 34
    iput p2, p0, Lcom/flipboard/bottomsheet/commons/b$a;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/b$a;->a:I

    iget v1, p0, Lcom/flipboard/bottomsheet/commons/b$a;->b:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 40
    return-void
.end method
