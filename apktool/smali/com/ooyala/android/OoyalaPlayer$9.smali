.class Lcom/ooyala/android/OoyalaPlayer$9;
.super Ljava/lang/Object;
.source "OoyalaPlayer.java"

# interfaces
.implements Lcom/ooyala/android/PaginatedItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/OoyalaPlayer;->nextVideo(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/OoyalaPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer$9;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsFetched(IILcom/ooyala/android/OoyalaException;)V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$9;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # getter for: Lcom/ooyala/android/OoyalaPlayer;->_handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ooyala/android/OoyalaPlayer;->access$1100(Lcom/ooyala/android/OoyalaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ooyala/android/OoyalaPlayer$9$1;

    invoke-direct {v1, p0}, Lcom/ooyala/android/OoyalaPlayer$9$1;-><init>(Lcom/ooyala/android/OoyalaPlayer$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 980
    return-void
.end method
