.class Lcom/comscore/analytics/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/comscore/analytics/a;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/j;->c:Lcom/comscore/analytics/a;

    iput-object p2, p0, Lcom/comscore/analytics/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/comscore/analytics/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/analytics/j;->c:Lcom/comscore/analytics/a;

    iget-object v1, p0, Lcom/comscore/analytics/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/analytics/j;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
