.class Landroid/support/v7/app/i;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 617
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 620
    return-void
.end method
