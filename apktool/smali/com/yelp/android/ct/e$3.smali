.class Lcom/yelp/android/ct/e$3;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ct/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ct/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ct/e;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yelp/android/ct/e$3;->a:Lcom/yelp/android/ct/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ct/e$3;->a:Lcom/yelp/android/ct/e;

    iget-object v0, v0, Lcom/yelp/android/ct/e;->c:Lcom/yelp/android/ct/i;

    invoke-interface {v0}, Lcom/yelp/android/ct/i;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lcom/yelp/android/ct/e$3;->a:Lcom/yelp/android/ct/e;

    iget-object v1, v1, Lcom/yelp/android/ct/e;->a:Landroid/content/Context;

    const-string/jumbo v2, "Failed to send events files."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
