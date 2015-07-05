.class Lcom/yelp/android/webimageview/ImageLoader$1$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/yelp/android/webimageview/ImageLoader$1;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/yelp/android/webimageview/ImageLoader$1;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/webimageview/ImageLoader$1$1;->this$0:Lcom/yelp/android/webimageview/ImageLoader$1;

    iput-object p2, p0, Lcom/yelp/android/webimageview/ImageLoader$1$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$1$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 127
    return-void
.end method
