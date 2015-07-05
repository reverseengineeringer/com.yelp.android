.class Lcom/yelp/android/ui/activities/dt;
.super Ljava/lang/Object;
.source "ActivityRetryShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRetryShare;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dt;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dt;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 237
    return-void
.end method
