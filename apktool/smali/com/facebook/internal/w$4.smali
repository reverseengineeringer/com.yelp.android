.class Lcom/facebook/internal/w$4;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/w;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/w;


# direct methods
.method constructor <init>(Lcom/facebook/internal/w;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/facebook/internal/w$4;->a:Lcom/facebook/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
