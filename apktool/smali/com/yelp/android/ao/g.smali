.class Lcom/yelp/android/ao/g;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ao/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ao/f;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ao/g;->a:Lcom/yelp/android/ao/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ao/g;->a:Lcom/yelp/android/ao/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ao/f;->a(Landroid/os/Message;)V

    .line 90
    return-void
.end method
