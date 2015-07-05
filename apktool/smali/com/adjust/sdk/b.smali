.class Lcom/adjust/sdk/b;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/a;

.field private final synthetic b:Lcom/adjust/sdk/p;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/a;Lcom/adjust/sdk/p;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/b;->a:Lcom/adjust/sdk/a;

    iput-object p2, p0, Lcom/adjust/sdk/b;->b:Lcom/adjust/sdk/p;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/b;->a:Lcom/adjust/sdk/a;

    invoke-static {v0}, Lcom/adjust/sdk/a;->c(Lcom/adjust/sdk/a;)Lcom/adjust/sdk/j;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/b;->b:Lcom/adjust/sdk/p;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/j;->a(Lcom/adjust/sdk/p;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method
