.class Lcom/yelp/android/ct/e$2;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ct/e;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/yelp/android/ct/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ct/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ct/e$2;->b:Lcom/yelp/android/ct/e;

    iput-object p2, p0, Lcom/yelp/android/ct/e$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ct/e$2;->b:Lcom/yelp/android/ct/e;

    iget-object v0, v0, Lcom/yelp/android/ct/e;->c:Lcom/yelp/android/ct/i;

    iget-object v1, p0, Lcom/yelp/android/ct/e$2;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/ct/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lcom/yelp/android/ct/e$2;->b:Lcom/yelp/android/ct/e;

    iget-object v1, v1, Lcom/yelp/android/ct/e;->a:Landroid/content/Context;

    const-string/jumbo v2, "Crashlytics failed to record event"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
