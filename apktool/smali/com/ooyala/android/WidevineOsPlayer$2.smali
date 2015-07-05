.class Lcom/ooyala/android/WidevineOsPlayer$2;
.super Ljava/lang/Object;
.source "WidevineOsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/WidevineOsPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/WidevineOsPlayer;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ooyala/android/WidevineOsPlayer$2;->this$0:Lcom/ooyala/android/WidevineOsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer$2;->this$0:Lcom/ooyala/android/WidevineOsPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/WidevineOsPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 155
    return-void
.end method
