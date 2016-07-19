.class Lcom/comscore/analytics/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/comscore/analytics/a;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/j;->b:Lcom/comscore/analytics/a;

    iput-boolean p2, p0, Lcom/comscore/analytics/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/analytics/j;->b:Lcom/comscore/analytics/a;

    iget-boolean v1, p0, Lcom/comscore/analytics/j;->a:Z

    iput-boolean v1, v0, Lcom/comscore/analytics/a;->ad:Z

    return-void
.end method
