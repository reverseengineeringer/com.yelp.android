.class Lcom/bugsnag/android/Client$1;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/Client;

.field final synthetic val$error:Lcom/bugsnag/android/Error;

.field final synthetic val$notification:Lcom/bugsnag/android/Notification;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/bugsnag/android/Client$1;->this$0:Lcom/bugsnag/android/Client;

    iput-object p2, p0, Lcom/bugsnag/android/Client$1;->val$notification:Lcom/bugsnag/android/Notification;

    iput-object p3, p0, Lcom/bugsnag/android/Client$1;->val$error:Lcom/bugsnag/android/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/bugsnag/android/Client$1;->this$0:Lcom/bugsnag/android/Client;

    iget-object v1, p0, Lcom/bugsnag/android/Client$1;->val$notification:Lcom/bugsnag/android/Notification;

    iget-object v2, p0, Lcom/bugsnag/android/Client$1;->val$error:Lcom/bugsnag/android/Error;

    invoke-virtual {v0, v1, v2}, Lcom/bugsnag/android/Client;->deliver(Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V

    .line 612
    return-void
.end method
