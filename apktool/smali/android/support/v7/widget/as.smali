.class Landroid/support/v7/widget/as;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/aq;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/aq;)V
    .locals 0

    .prologue
    .line 1482
    iput-object p1, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/am;)V
    .locals 0

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/aq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/aq;

    invoke-static {v0}, Landroid/support/v7/widget/aq;->b(Landroid/support/v7/widget/aq;)V

    .line 1486
    return-void
.end method
