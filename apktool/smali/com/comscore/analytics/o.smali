.class Lcom/comscore/analytics/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/a;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/o;->a:Lcom/comscore/analytics/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/o;->a:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    invoke-virtual {v0}, Lcom/comscore/utils/j;->f()Z

    return-void
.end method
