.class Landroid/support/v7/widget/cl;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1592
    iput-object p1, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 1602
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1594
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SearchView;->a(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V

    .line 1599
    return-void
.end method
