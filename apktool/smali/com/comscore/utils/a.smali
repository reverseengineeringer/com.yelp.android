.class public Lcom/comscore/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    return-object v0
.end method
