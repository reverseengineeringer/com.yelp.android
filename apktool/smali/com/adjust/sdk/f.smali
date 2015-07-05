.class public Lcom/adjust/sdk/f;
.super Ljava/lang/Object;
.source "AdjustFactory.java"


# static fields
.field private static a:Lcom/adjust/sdk/g;

.field private static b:Lcom/adjust/sdk/h;

.field private static c:Lcom/adjust/sdk/Logger;

.field private static d:Lorg/apache/http/client/HttpClient;

.field private static e:J

.field private static f:J

.field private static g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/adjust/sdk/f;->a:Lcom/adjust/sdk/g;

    .line 11
    sput-object v0, Lcom/adjust/sdk/f;->b:Lcom/adjust/sdk/h;

    .line 12
    sput-object v0, Lcom/adjust/sdk/f;->c:Lcom/adjust/sdk/Logger;

    .line 13
    sput-object v0, Lcom/adjust/sdk/f;->d:Lorg/apache/http/client/HttpClient;

    .line 15
    sput-wide v2, Lcom/adjust/sdk/f;->e:J

    .line 16
    sput-wide v2, Lcom/adjust/sdk/f;->f:J

    .line 17
    sput-wide v2, Lcom/adjust/sdk/f;->g:J

    .line 9
    return-void
.end method

.method public static a()Lcom/adjust/sdk/Logger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/adjust/sdk/f;->c:Lcom/adjust/sdk/Logger;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/adjust/sdk/i;

    invoke-direct {v0}, Lcom/adjust/sdk/i;-><init>()V

    sput-object v0, Lcom/adjust/sdk/f;->c:Lcom/adjust/sdk/Logger;

    .line 38
    :cond_0
    sget-object v0, Lcom/adjust/sdk/f;->c:Lcom/adjust/sdk/Logger;

    return-object v0
.end method

.method public static a(Lcom/adjust/sdk/a;Landroid/content/Context;Z)Lcom/adjust/sdk/g;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/adjust/sdk/f;->a:Lcom/adjust/sdk/g;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/adjust/sdk/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/adjust/sdk/l;-><init>(Lcom/adjust/sdk/a;Landroid/content/Context;Z)V

    .line 23
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/f;->a:Lcom/adjust/sdk/g;

    goto :goto_0
.end method

.method public static a(Lcom/adjust/sdk/g;)Lcom/adjust/sdk/h;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/adjust/sdk/f;->b:Lcom/adjust/sdk/h;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/adjust/sdk/n;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/n;-><init>(Lcom/adjust/sdk/g;)V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/f;->b:Lcom/adjust/sdk/h;

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/adjust/sdk/f;->d:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 45
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/f;->d:Lorg/apache/http/client/HttpClient;

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 49
    sget-wide v0, Lcom/adjust/sdk/f;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 50
    const-wide/32 v0, 0xea60

    .line 52
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/f;->e:J

    goto :goto_0
.end method

.method public static c()J
    .locals 4

    .prologue
    .line 56
    sget-wide v0, Lcom/adjust/sdk/f;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 57
    const-wide/32 v0, 0x1b7740

    .line 59
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/f;->f:J

    goto :goto_0
.end method

.method public static d()J
    .locals 4

    .prologue
    .line 63
    sget-wide v0, Lcom/adjust/sdk/f;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 64
    const-wide/16 v0, 0x3e8

    .line 66
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/f;->g:J

    goto :goto_0
.end method
