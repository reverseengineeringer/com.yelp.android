.class final Lcom/kahuna/sdk/s;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/kahuna/sdk/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kahuna/sdk/s;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/kahuna/sdk/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/kahuna/sdk/s;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method
