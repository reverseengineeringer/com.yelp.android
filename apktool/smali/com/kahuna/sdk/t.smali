.class final Lcom/kahuna/sdk/t;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/h;->r(Lcom/kahuna/sdk/h;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/kahuna/sdk/t;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
