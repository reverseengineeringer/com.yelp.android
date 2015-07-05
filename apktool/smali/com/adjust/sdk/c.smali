.class Lcom/adjust/sdk/c;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/a;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/c;->a:Lcom/adjust/sdk/a;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/adjust/sdk/c;->a:Lcom/adjust/sdk/a;

    invoke-static {v0}, Lcom/adjust/sdk/a;->d(Lcom/adjust/sdk/a;)V

    .line 608
    return-void
.end method
