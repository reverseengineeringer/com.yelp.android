.class Landroid/support/v7/widget/ct;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Landroid/support/v7/widget/ct;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->j(Landroid/support/v7/widget/SearchView;)V

    .line 1111
    const/4 v0, 0x1

    return v0
.end method
