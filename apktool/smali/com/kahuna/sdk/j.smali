.class final Lcom/kahuna/sdk/j;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/kahuna/sdk/j;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/kahuna/sdk/j;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->b(Ljava/util/Map;)V

    .line 797
    return-void
.end method
