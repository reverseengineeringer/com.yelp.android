.class Lcom/facebook/n$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/i$b;

.field final synthetic b:Lcom/facebook/n;


# direct methods
.method constructor <init>(Lcom/facebook/n;Lcom/facebook/i$b;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/n$1;->b:Lcom/facebook/n;

    iput-object p2, p0, Lcom/facebook/n$1;->a:Lcom/facebook/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/n$1;->a:Lcom/facebook/i$b;

    iget-object v1, p0, Lcom/facebook/n$1;->b:Lcom/facebook/n;

    invoke-static {v1}, Lcom/facebook/n;->a(Lcom/facebook/n;)Lcom/facebook/i;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/n$1;->b:Lcom/facebook/n;

    invoke-static {v2}, Lcom/facebook/n;->b(Lcom/facebook/n;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/n$1;->b:Lcom/facebook/n;

    invoke-static {v4}, Lcom/facebook/n;->c(Lcom/facebook/n;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/facebook/i$b;->a(Lcom/facebook/i;JJ)V

    .line 83
    return-void
.end method
