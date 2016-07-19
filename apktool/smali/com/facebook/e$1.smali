.class Lcom/facebook/e$1;
.super Ljava/lang/Object;
.source "FacebookButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/e;


# direct methods
.method constructor <init>(Lcom/facebook/e;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/facebook/e$1;->a:Lcom/facebook/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/facebook/e$1;->a:Lcom/facebook/e;

    invoke-static {v0}, Lcom/facebook/e;->a(Lcom/facebook/e;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/facebook/e$1;->a:Lcom/facebook/e;

    invoke-static {v0}, Lcom/facebook/e;->a(Lcom/facebook/e;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/facebook/e$1;->a:Lcom/facebook/e;

    invoke-static {v0}, Lcom/facebook/e;->b(Lcom/facebook/e;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/facebook/e$1;->a:Lcom/facebook/e;

    invoke-static {v0}, Lcom/facebook/e;->b(Lcom/facebook/e;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
