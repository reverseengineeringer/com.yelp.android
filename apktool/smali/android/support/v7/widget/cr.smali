.class Landroid/support/v7/widget/cr;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->e(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 909
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->f(Landroid/support/v7/widget/SearchView;)V

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->g(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 911
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->h(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 912
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->i(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->j(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 914
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->k(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 915
    invoke-static {}, Landroid/support/v7/widget/SearchView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->l(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 918
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 919
    iget-object v0, p0, Landroid/support/v7/widget/cr;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->n(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0
.end method
