.class Lcom/kahuna/sdk/l$12;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->d()Lcom/kahuna/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/kahuna/sdk/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/l;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/kahuna/sdk/l$12;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/kahuna/sdk/i;
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/kahuna/sdk/l$12;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/s;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 654
    new-instance v1, Lcom/kahuna/sdk/v;

    invoke-direct {v1, v0}, Lcom/kahuna/sdk/v;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/kahuna/sdk/l$12;->a()Lcom/kahuna/sdk/i;

    move-result-object v0

    return-object v0
.end method
