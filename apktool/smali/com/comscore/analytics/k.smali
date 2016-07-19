.class public Lcom/comscore/analytics/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/comscore/analytics/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/comscore/analytics/a;

    invoke-direct {v0}, Lcom/comscore/analytics/a;-><init>()V

    sput-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->v()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/comscore/utils/TransmissionMode;)V
    .locals 2

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/a;->b(Lcom/comscore/utils/TransmissionMode;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/a;->a(ZZ)V

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->w()V

    return-void
.end method

.method public static b(Lcom/comscore/utils/TransmissionMode;)V
    .locals 2

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/a;->a(Lcom/comscore/utils/TransmissionMode;Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/a;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/a;->b(ZZ)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->V()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/a;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d()Lcom/comscore/analytics/a;
    .locals 1

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/comscore/analytics/k;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/a;->b(Ljava/lang/String;Z)V

    return-void
.end method
