.class public Lcom/comscore/utils/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/comscore/utils/f;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lcom/comscore/utils/f;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/comscore/utils/f;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/comscore/utils/f;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/comscore/utils/f;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/c;->b(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
