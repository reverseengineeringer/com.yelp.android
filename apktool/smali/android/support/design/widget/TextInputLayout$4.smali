.class Landroid/support/design/widget/TextInputLayout$4;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/support/design/widget/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$4;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/p;)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$4;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/p;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->b(F)V

    .line 495
    return-void
.end method
