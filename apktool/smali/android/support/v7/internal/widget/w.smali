.class Landroid/support/v7/internal/widget/w;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 270
    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    .line 271
    return-void
.end method
