.class Lcom/facebook/share/widget/SendButton$1;
.super Ljava/lang/Object;
.source "SendButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/SendButton;->getShareOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/widget/SendButton;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/SendButton;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/share/widget/SendButton$1;->a:Lcom/facebook/share/widget/SendButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/share/widget/SendButton$1;->a:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v0}, Lcom/facebook/share/widget/SendButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/facebook/share/widget/b;

    iget-object v1, p0, Lcom/facebook/share/widget/SendButton$1;->a:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v1}, Lcom/facebook/share/widget/SendButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/widget/SendButton$1;->a:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v2}, Lcom/facebook/share/widget/SendButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/b;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/facebook/share/widget/SendButton$1;->a:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v1}, Lcom/facebook/share/widget/SendButton;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/b;->a(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/share/widget/SendButton$1;->a:Lcom/facebook/share/widget/SendButton;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/SendButton;->a(Lcom/facebook/share/widget/SendButton;Landroid/view/View;)V

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/facebook/share/widget/b;

    iget-object v1, p0, Lcom/facebook/share/widget/SendButton$1;->a:Lcom/facebook/share/widget/SendButton;

    invoke-static {v1}, Lcom/facebook/share/widget/SendButton;->a(Lcom/facebook/share/widget/SendButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/widget/SendButton$1;->a:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v2}, Lcom/facebook/share/widget/SendButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/b;-><init>(Landroid/app/Activity;I)V

    goto :goto_0
.end method
