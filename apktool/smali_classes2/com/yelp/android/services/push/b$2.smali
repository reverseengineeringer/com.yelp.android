.class Lcom/yelp/android/services/push/b$2;
.super Ljava/lang/Object;
.source "GcmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/push/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/services/push/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/push/b;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/yelp/android/services/push/b$2;->a:Lcom/yelp/android/services/push/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/services/push/b$2;->a:Lcom/yelp/android/services/push/b;

    invoke-static {v0}, Lcom/yelp/android/services/push/b;->e(Lcom/yelp/android/services/push/b;)I

    .line 162
    iget-object v0, p0, Lcom/yelp/android/services/push/b$2;->a:Lcom/yelp/android/services/push/b;

    invoke-virtual {v0}, Lcom/yelp/android/services/push/b;->d()V

    .line 163
    return-void
.end method
