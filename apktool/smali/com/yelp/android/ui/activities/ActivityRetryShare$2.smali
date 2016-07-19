.class Lcom/yelp/android/ui/activities/ActivityRetryShare$2;
.super Ljava/lang/Object;
.source "ActivityRetryShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityRetryShare;->onYesNoDialogSelection(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRetryShare;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$2;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$2;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 256
    return-void
.end method
