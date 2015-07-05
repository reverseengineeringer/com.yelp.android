.class Landroid/support/v7/widget/au;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/am;)V
    .locals 0

    .prologue
    .line 1701
    invoke-direct {p0, p1}, Landroid/support/v7/widget/au;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->c()V

    .line 1708
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->a()V

    .line 1713
    return-void
.end method
