.class public Lcom/adjust/sdk/e;
.super Ljava/lang/Object;
.source "Adjust.java"


# static fields
.field private static a:Lcom/adjust/sdk/a;

.field private static b:Lcom/adjust/sdk/Logger;


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 51
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/e;->b:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "onPause"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/adjust/sdk/e;->a:Lcom/adjust/sdk/a;

    invoke-virtual {v0}, Lcom/adjust/sdk/a;->b()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    sget-object v0, Lcom/adjust/sdk/e;->b:Lcom/adjust/sdk/Logger;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/adjust/sdk/e;->b:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "No activity handler found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/adjust/sdk/e;->a:Lcom/adjust/sdk/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/adjust/sdk/a;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/a;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/adjust/sdk/e;->a:Lcom/adjust/sdk/a;

    .line 39
    :cond_0
    invoke-static {}, Lcom/adjust/sdk/f;->a()Lcom/adjust/sdk/Logger;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/e;->b:Lcom/adjust/sdk/Logger;

    .line 40
    sget-object v0, Lcom/adjust/sdk/e;->a:Lcom/adjust/sdk/a;

    invoke-virtual {v0}, Lcom/adjust/sdk/a;->a()V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adjust/sdk/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/e;->a:Lcom/adjust/sdk/a;

    invoke-virtual {v0, p0, p1}, Lcom/adjust/sdk/a;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    sget-object v0, Lcom/adjust/sdk/e;->b:Lcom/adjust/sdk/Logger;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/adjust/sdk/e;->b:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "No activity handler found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
