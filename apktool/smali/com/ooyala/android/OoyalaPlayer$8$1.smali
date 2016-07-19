.class Lcom/ooyala/android/OoyalaPlayer$8$1;
.super Ljava/lang/Object;
.source "OoyalaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/OoyalaPlayer$8;->onItemsFetched(IILcom/ooyala/android/OoyalaException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ooyala/android/OoyalaPlayer$8;


# direct methods
.method constructor <init>(Lcom/ooyala/android/OoyalaPlayer$8;)V
    .locals 0

    .prologue
    .line 960
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer$8$1;->this$1:Lcom/ooyala/android/OoyalaPlayer$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$8$1;->this$1:Lcom/ooyala/android/OoyalaPlayer$8;

    iget-object v0, v0, Lcom/ooyala/android/OoyalaPlayer$8;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer$8$1;->this$1:Lcom/ooyala/android/OoyalaPlayer$8;

    iget-object v1, v1, Lcom/ooyala/android/OoyalaPlayer$8;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # getter for: Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;
    invoke-static {v1}, Lcom/ooyala/android/OoyalaPlayer;->access$900(Lcom/ooyala/android/OoyalaPlayer;)Lcom/ooyala/android/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/Video;->nextVideo()Lcom/ooyala/android/Video;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItem(Lcom/ooyala/android/Video;)Z

    .line 964
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$8$1;->this$1:Lcom/ooyala/android/OoyalaPlayer$8;

    iget-object v0, v0, Lcom/ooyala/android/OoyalaPlayer$8;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 965
    return-void
.end method
