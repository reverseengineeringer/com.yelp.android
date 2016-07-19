.class Lcom/comscore/utils/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ar/b;

.field final synthetic b:Lcom/comscore/utils/j;


# direct methods
.method constructor <init>(Lcom/comscore/utils/j;Lcom/yelp/android/ar/b;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/utils/r;->b:Lcom/comscore/utils/j;

    iput-object p2, p0, Lcom/comscore/utils/r;->a:Lcom/yelp/android/ar/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/utils/r;->b:Lcom/comscore/utils/j;

    iget-object v1, p0, Lcom/comscore/utils/r;->a:Lcom/yelp/android/ar/b;

    iget-object v2, p0, Lcom/comscore/utils/r;->b:Lcom/comscore/utils/j;

    iget-object v2, v2, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->ag()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ar/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/utils/j;->a(Ljava/lang/String;)V

    return-void
.end method
