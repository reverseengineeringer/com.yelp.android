.class Landroid/support/design/widget/g$1;
.super Landroid/support/design/widget/a$a;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/design/widget/g$1;->a:Landroid/support/design/widget/g;

    invoke-direct {p0}, Landroid/support/design/widget/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/design/widget/g$1;->a:Landroid/support/design/widget/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g;Z)Z

    .line 179
    iget-object v0, p0, Landroid/support/design/widget/g$1;->a:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/g$1;->a:Landroid/support/design/widget/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g;Z)Z

    .line 174
    return-void
.end method
