.class Lcom/yelp/android/bq/c$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtilImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/bq/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/bq/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/bq/c;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yelp/android/bq/c$1;->a:Lcom/yelp/android/bq/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/bq/c$1;->a:Lcom/yelp/android/bq/c;

    invoke-static {v0}, Lcom/yelp/android/bq/c;->a(Lcom/yelp/android/bq/c;)Lcom/yelp/android/bq/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/bq/c$1;->a:Lcom/yelp/android/bq/c;

    invoke-static {v0}, Lcom/yelp/android/bq/c;->a(Lcom/yelp/android/bq/c;)Lcom/yelp/android/bq/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/bq/c$1;->a:Lcom/yelp/android/bq/c;

    invoke-virtual {v1, p1}, Lcom/yelp/android/bq/c;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/yelp/android/bq/a$a;->a(Z)V

    goto :goto_0
.end method
