.class Lcom/comscore/streaming/i;
.super Lcom/comscore/streaming/k;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSenseState;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/comscore/streaming/a;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/a;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .locals 1

    iput-object p1, p0, Lcom/comscore/streaming/i;->c:Lcom/comscore/streaming/a;

    iput-object p2, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/StreamSenseState;

    iput-object p3, p0, Lcom/comscore/streaming/i;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/comscore/streaming/k;-><init>(Lcom/comscore/streaming/a;Lcom/comscore/streaming/f;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/streaming/i;->c:Lcom/comscore/streaming/a;

    const-string/jumbo v1, "Performing delayed transition"

    invoke-static {v0, v1}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/i;->c:Lcom/comscore/streaming/a;

    iget-object v1, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/StreamSenseState;

    iget-object v2, p0, Lcom/comscore/streaming/i;->b:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/a;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    return-void
.end method
