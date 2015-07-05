.class Lcom/yelp/android/au/e;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtilImpl.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/au/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/au/d;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yelp/android/au/e;->a:Lcom/yelp/android/au/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/au/e;->a:Lcom/yelp/android/au/d;

    invoke-static {v0}, Lcom/yelp/android/au/d;->a(Lcom/yelp/android/au/d;)Lcom/yelp/android/au/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/au/e;->a:Lcom/yelp/android/au/d;

    invoke-static {v0}, Lcom/yelp/android/au/d;->a(Lcom/yelp/android/au/d;)Lcom/yelp/android/au/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/au/e;->a:Lcom/yelp/android/au/d;

    invoke-virtual {v1, p1}, Lcom/yelp/android/au/d;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/yelp/android/au/b;->a(Z)V

    goto :goto_0
.end method
