.class Landroid/support/v7/app/q;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->a(Landroid/support/v7/app/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->b(Landroid/support/v7/app/p;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->c(Landroid/support/v7/app/p;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->c(Landroid/support/v7/app/p;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
