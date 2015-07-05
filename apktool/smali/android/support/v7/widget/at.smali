.class Landroid/support/v7/widget/at;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Landroid/support/v7/widget/at;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/am;)V
    .locals 0

    .prologue
    .line 1716
    invoke-direct {p0, p1}, Landroid/support/v7/widget/at;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Landroid/support/v7/widget/at;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->e()V

    .line 1719
    return-void
.end method
