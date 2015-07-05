.class Lcom/yelp/android/ui/activities/ds;
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
    .line 221
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ds;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ds;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 225
    return-void
.end method
