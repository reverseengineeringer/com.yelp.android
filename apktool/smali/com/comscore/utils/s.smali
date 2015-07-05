.class Lcom/comscore/utils/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/utils/m;


# direct methods
.method constructor <init>(Lcom/comscore/utils/m;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/utils/s;->a:Lcom/comscore/utils/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/s;->a:Lcom/comscore/utils/m;

    invoke-virtual {v0}, Lcom/comscore/utils/m;->b()V

    iget-object v0, p0, Lcom/comscore/utils/s;->a:Lcom/comscore/utils/m;

    invoke-virtual {v0}, Lcom/comscore/utils/m;->c()V

    return-void
.end method
