.class Lcom/yelp/android/webimageview/ImageCache$1;
.super Landroid/content/BroadcastReceiver;
.source "ImageCache.java"


# instance fields
.field final synthetic this$0:Lcom/yelp/android/webimageview/ImageCache;


# direct methods
.method constructor <init>(Lcom/yelp/android/webimageview/ImageCache;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yelp/android/webimageview/ImageCache$1;->this$0:Lcom/yelp/android/webimageview/ImageCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache$1;->this$0:Lcom/yelp/android/webimageview/ImageCache;

    invoke-virtual {v0, p1}, Lcom/yelp/android/webimageview/ImageCache;->updateExternalStorageState(Landroid/content/Context;)V

    .line 124
    return-void
.end method
