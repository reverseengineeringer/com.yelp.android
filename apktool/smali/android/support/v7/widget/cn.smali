.class Landroid/support/v7/widget/cn;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/i;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/dc;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/cn;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/i;->a(Landroid/database/Cursor;)V

    .line 189
    :cond_0
    return-void
.end method
