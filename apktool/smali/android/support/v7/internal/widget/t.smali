.class Landroid/support/v7/internal/widget/t;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/x;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/x;->notifyDataSetInvalidated()V

    .line 137
    return-void
.end method
