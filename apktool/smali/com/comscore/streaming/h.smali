.class Lcom/comscore/streaming/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/a;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/a;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/a;

    invoke-virtual {v0}, Lcom/comscore/streaming/a;->b()V

    return-void
.end method